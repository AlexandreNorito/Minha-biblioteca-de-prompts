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

## Alternativa: sem deixar nada rodando

Os scripts acima exigem uma janela aberta na sua máquina. Se você quer ser avisado mesmo com o computador desligado, existe o workflow `.github/workflows/monitor-servidor.yml`, que roda na infraestrutura do GitHub a cada 5 minutos:

- quando o servidor cai, ele abre uma issue atribuída a você;
- quando volta, ele comenta **"O servidor voltou"** nessa issue e a fecha.

Como a issue é atribuída a você, o GitHub manda e-mail e notificação no app do celular. Não precisa criar conta em nada nem instalar serviço.

Dois detalhes para saber o que esperar:

- **Workflows agendados só rodam a partir do branch padrão.** Enquanto esse arquivo estiver só em um branch de feature, ele não executa. Precisa estar no `main`.
- O agendamento do GitHub é aproximado. Em horário de pico as execuções atrasam, então o aviso pode chegar alguns minutos depois da volta real. Para o caso de "acabou a luz, quero saber quando voltar", isso é irrelevante; para algo que exige reação em segundos, use os scripts locais.

O workflow testa conexão TCP nas portas 443 e 80, não ping — os runners do GitHub bloqueiam ICMP. Isso também é um sinal melhor: significa que o serviço subiu, não só que a máquina ligou. Se o seu servidor atende em outra porta, ajuste `PORTAS` no topo do arquivo.

## Observação

Os scripts locais precisam rodar na sua máquina, na rede de onde você quer enxergar o servidor. Rodar em um ambiente remoto (como uma sessão do Claude na nuvem) não serve: além de a política de rede de lá bloquear o destino, o ambiente é descartado quando a sessão termina — o monitoramento morreria junto.
