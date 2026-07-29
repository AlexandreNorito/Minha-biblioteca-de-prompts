# Aviso quando o servidor voltar

Fica testando um servidor de tempos em tempos e te avisa (som + janela na tela + opcionalmente no celular) assim que ele voltar a responder.

É a ideia do `ping -t` que a Ju sugeriu, só que em vez de você ficar olhando o terminal, ele te chama quando volta.

## Windows (PowerShell)

```powershell
cd scripts\monitor-servidor
.\monitor-servidor.ps1
```

Se o Windows bloquear a execução do script:

```powershell
powershell -ExecutionPolicy Bypass -File .\monitor-servidor.ps1
```

## macOS / Linux / WSL

```bash
cd scripts/monitor-servidor
chmod +x monitor-servidor.sh
./monitor-servidor.sh
```

Deixe a janela aberta. Quando o servidor responder, o script apita, mostra o aviso e encerra.

## Opções

| PowerShell | Bash | O que faz | Padrão |
|---|---|---|---|
| `-Destino` | `-d` | Host monitorado | `clube.stsec.com.br` |
| `-Porta` | `-p` | Testa conexão TCP nessa porta em vez de ping | `0` (usa ping) |
| `-Intervalo` | `-i` | Segundos entre cada teste | `15` |
| `-Confirmacoes` | `-c` | Respostas seguidas antes de avisar | `3` |
| `-WebhookUrl` | `-w` | URL de webhook para avisar no celular | vazio |

As três respostas seguidas existem de propósito: quando a energia volta, a rede costuma oscilar e responder uma vez sozinha. Esperar a confirmação evita alarme falso.

## Se o ping não funcionar

Muito firewall e muito servidor descarta ICMP, então o ping pode nunca responder mesmo com o servidor no ar. Nesse caso teste a porta do serviço, que é um sinal mais confiável de que ele voltou de verdade:

```powershell
.\monitor-servidor.ps1 -Porta 443
```

```bash
./monitor-servidor.sh -p 443
```

## Aviso no celular

Se você não vai ficar perto do computador, crie um webhook e passe a URL. No Discord: **Configurações do canal → Integrações → Webhooks → Novo webhook → Copiar URL**.

```powershell
.\monitor-servidor.ps1 -WebhookUrl "https://discord.com/api/webhooks/..."
```

```bash
./monitor-servidor.sh -w "https://discord.com/api/webhooks/..."
```

O mesmo formato funciona em Slack e Google Chat. Aí é só ter o app no celular com notificação ligada.

## Observação

Isso precisa rodar na sua máquina, na rede de onde você quer enxergar o servidor. Rodar em um ambiente remoto (como uma sessão do Claude na nuvem) não serve: além de a política de rede de lá bloquear o destino, o que importa é o caminho entre você e o servidor.
