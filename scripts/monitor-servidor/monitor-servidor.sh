#!/usr/bin/env bash
# Monitora um servidor e avisa quando ele voltar a responder (macOS / Linux / WSL).
#
# Uso:
#   ./monitor-servidor.sh
#   ./monitor-servidor.sh -d clube.stsec.com.br -p 443 -i 15 -c 3
#   ./monitor-servidor.sh -w "https://discord.com/api/webhooks/..."

set -uo pipefail

DESTINO="clube.stsec.com.br"
PORTA=0
INTERVALO=15
CONFIRMACOES=3
WEBHOOK=""

uso() {
    cat <<'FIM'
Opcoes:
  -d  host a monitorar          (padrao: clube.stsec.com.br)
  -p  porta TCP no lugar do ping (ex: 443; padrao: 0 = usa ping)
  -i  intervalo em segundos     (padrao: 15)
  -c  respostas seguidas para confirmar (padrao: 3)
  -w  URL de webhook (Discord/Slack) para avisar no celular
  -h  esta ajuda
FIM
}

while getopts "d:p:i:c:w:h" opcao; do
    case "$opcao" in
        d) DESTINO="$OPTARG" ;;
        p) PORTA="$OPTARG" ;;
        i) INTERVALO="$OPTARG" ;;
        c) CONFIRMACOES="$OPTARG" ;;
        w) WEBHOOK="$OPTARG" ;;
        h) uso; exit 0 ;;
        *) uso; exit 1 ;;
    esac
done

testar() {
    if [ "$PORTA" -gt 0 ]; then
        if command -v nc >/dev/null 2>&1; then
            nc -z -w 3 "$DESTINO" "$PORTA" >/dev/null 2>&1
            return $?
        fi
        # Fallback sem netcat, usando /dev/tcp do bash.
        timeout 3 bash -c "exec 3<>/dev/tcp/$DESTINO/$PORTA" >/dev/null 2>&1
        return $?
    fi
    ping -c 1 -W 3 "$DESTINO" >/dev/null 2>&1
}

avisar() {
    local msg="$1"

    for _ in 1 2 3 4 5; do
        printf '\a'
        sleep 0.3
    done

    if command -v osascript >/dev/null 2>&1; then
        osascript -e "display notification \"$msg\" with title \"Servidor voltou\" sound name \"Glass\"" >/dev/null 2>&1
    elif command -v notify-send >/dev/null 2>&1; then
        notify-send "Servidor voltou" "$msg" >/dev/null 2>&1
    fi

    if [ -n "$WEBHOOK" ]; then
        # "content" atende Discord, "text" atende Slack e Google Chat.
        if curl -sS -X POST -H 'Content-Type: application/json' \
             -d "{\"content\":\"$msg\",\"text\":\"$msg\"}" "$WEBHOOK" >/dev/null 2>&1; then
            echo "Webhook enviado."
        else
            echo "Falha ao enviar webhook."
        fi
    fi
}

if [ "$PORTA" -gt 0 ]; then
    METODO="TCP porta $PORTA"
else
    # Sem o ping instalado todo teste falharia em silencio, parecendo servidor fora do ar.
    if ! command -v ping >/dev/null 2>&1; then
        echo "ERRO: comando 'ping' nao encontrado nesta maquina." >&2
        echo "Rode com uma porta TCP, por exemplo: $0 -d $DESTINO -p 443" >&2
        exit 1
    fi
    METODO="ping (ICMP)"
fi

echo
echo "Monitorando $DESTINO via $METODO"
echo "Checando a cada ${INTERVALO}s. Avisa apos $CONFIRMACOES respostas seguidas."
echo "Deixe este terminal aberto. Ctrl+C para parar."
echo

INICIO=$(date +%s)
SEGUIDAS=0
TENTATIVAS=0

while true; do
    TENTATIVAS=$((TENTATIVAS + 1))
    AGORA=$(date +%H:%M:%S)

    if testar; then
        SEGUIDAS=$((SEGUIDAS + 1))
        echo "[$AGORA] respondeu ($SEGUIDAS/$CONFIRMACOES)"

        if [ "$SEGUIDAS" -ge "$CONFIRMACOES" ]; then
            DECORRIDO=$(( $(date +%s) - INICIO ))
            TEMPO=$(printf '%02d:%02d:%02d' $((DECORRIDO/3600)) $(((DECORRIDO%3600)/60)) $((DECORRIDO%60)))
            MSG="O servidor $DESTINO VOLTOU as $AGORA. Monitorando havia $TEMPO."

            echo
            echo "$MSG"
            echo

            avisar "$MSG"
            exit 0
        fi
    else
        if [ "$SEGUIDAS" -gt 0 ]; then
            echo "[$AGORA] caiu de novo, zerando contagem"
        else
            echo "[$AGORA] sem resposta (tentativa $TENTATIVAS)"
        fi
        SEGUIDAS=0
    fi

    sleep "$INTERVALO"
done
