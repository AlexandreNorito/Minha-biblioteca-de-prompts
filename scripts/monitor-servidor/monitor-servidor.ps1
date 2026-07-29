# Monitora um servidor e avisa quando ele voltar a responder.
#
# Uso basico (Windows PowerShell):
#   .\monitor-servidor.ps1
#
# Exemplos:
#   .\monitor-servidor.ps1 -Destino clube.stsec.com.br
#   .\monitor-servidor.ps1 -Porta 443            # usa TCP no lugar de ping
#   .\monitor-servidor.ps1 -WebhookUrl "https://discord.com/api/webhooks/..."
#
# Sem acentos de proposito: evita texto quebrado no PowerShell 5.1.

param(
    [string]$Destino = "clube.stsec.com.br",
    [int]$Porta = 0,
    [int]$Intervalo = 15,
    [int]$Confirmacoes = 3,
    [string]$WebhookUrl = ""
)

function Test-Alvo {
    param([string]$Nome, [int]$Port)

    if ($Port -gt 0) {
        $cliente = New-Object System.Net.Sockets.TcpClient
        try {
            $tarefa = $cliente.ConnectAsync($Nome, $Port)
            return ($tarefa.Wait(3000) -and $cliente.Connected)
        } catch {
            return $false
        } finally {
            $cliente.Dispose()
        }
    }

    try {
        return [bool](Test-Connection -ComputerName $Nome -Count 1 -Quiet -ErrorAction Stop)
    } catch {
        return $false
    }
}

function Send-Webhook {
    param([string]$Url, [string]$Mensagem)

    if ([string]::IsNullOrWhiteSpace($Url)) { return }

    # "content" atende Discord, "text" atende Slack e Google Chat.
    $corpo = @{ content = $Mensagem; text = $Mensagem } | ConvertTo-Json
    try {
        Invoke-RestMethod -Uri $Url -Method Post -ContentType 'application/json' -Body $corpo | Out-Null
        Write-Host "Webhook enviado." -ForegroundColor Green
    } catch {
        Write-Host "Falha ao enviar webhook: $($_.Exception.Message)" -ForegroundColor Yellow
    }
}

function Invoke-Alerta {
    param([string]$Mensagem)

    for ($i = 0; $i -lt 6; $i++) {
        [Console]::Beep(880, 350)
        Start-Sleep -Milliseconds 120
    }

    try {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.MessageBox]::Show($Mensagem, "Servidor voltou", 'OK', 'Information') | Out-Null
    } catch {
        Write-Host "(Nao foi possivel abrir a janela de aviso.)" -ForegroundColor Yellow
    }
}

$metodo = if ($Porta -gt 0) { "TCP porta $Porta" } else { "ping (ICMP)" }
$inicio = Get-Date

Write-Host ""
Write-Host "Monitorando $Destino via $metodo" -ForegroundColor Cyan
Write-Host "Checando a cada $Intervalo s. Avisa apos $Confirmacoes respostas seguidas."
Write-Host "Deixe esta janela aberta. Ctrl+C para parar."
Write-Host ""

$seguidas = 0
$tentativas = 0

while ($true) {
    $tentativas++
    $agora = Get-Date -Format 'HH:mm:ss'

    if (Test-Alvo -Nome $Destino -Port $Porta) {
        $seguidas++
        Write-Host "[$agora] respondeu ($seguidas/$Confirmacoes)" -ForegroundColor Green

        if ($seguidas -ge $Confirmacoes) {
            $duracao = (Get-Date) - $inicio
            $tempo = "{0:hh\:mm\:ss}" -f $duracao
            $msg = "O servidor $Destino VOLTOU as $(Get-Date -Format 'HH:mm:ss'). Fora do ar por (desde o inicio do monitor): $tempo."

            Write-Host ""
            Write-Host $msg -ForegroundColor Green
            Write-Host ""

            Send-Webhook -Url $WebhookUrl -Mensagem $msg
            Invoke-Alerta -Mensagem $msg
            break
        }
    } else {
        if ($seguidas -gt 0) {
            Write-Host "[$agora] caiu de novo, zerando contagem" -ForegroundColor Yellow
        } else {
            Write-Host "[$agora] sem resposta (tentativa $tentativas)" -ForegroundColor DarkGray
        }
        $seguidas = 0
    }

    Start-Sleep -Seconds $Intervalo
}
