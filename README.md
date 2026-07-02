# Minha biblioteca de prompts

Prompts da aula "Agentes Lendários", organizados como **skills do Claude Code** — assim cada prompt vira um comando invocável (`/nome-da-skill`) em vez de um texto solto para copiar e colar.

## Estrutura

```
.claude/skills/<nome>/SKILL.md   → versão otimizada, invocável no Claude Code
prompts/                         → rascunhos e prompts brutos (fonte)
templates/SKILL.md               → modelo para criar uma skill nova
```

## Como usar

1. Abra este repositório no Claude Code (CLI, web ou app).
2. Digite `/promptx` (ou o nome de qualquer skill em `.claude/skills/`) — o Claude carrega e executa o prompt.

## Como adicionar um prompt novo

1. Copie `templates/SKILL.md` para `.claude/skills/<nome-do-prompt>/SKILL.md`.
2. Preencha as seções. O rascunho bruto pode ficar em `prompts/` como referência.

## Checklist de um prompt otimizado

- **`description` com gatilho claro** — é a única parte que o Claude lê antes de decidir usar a skill; diga *quando* usar e *o que* ela entrega.
- **Instruções imperativas e curtas** — "Escreva X", não "Você poderia talvez escrever X". Uma instrução por frase; numere quando a ordem importa.
- **Um exemplo completo de entrada → saída** — reduz ambiguidade mais do que qualquer parágrafo extra de instrução.
- **Formato de saída explícito** — seções, tamanho, idioma. Sem isso, o formato varia a cada execução.
- **Restrições separadas da tarefa** — liste o que é inegociável em uma seção própria; instruções misturadas se perdem.
- **Curto vence** — corte tudo o que não muda o resultado. Se a skill passar de ~500 linhas, mova material de apoio para um arquivo `references/` dentro da pasta da skill.
- **Teste antes de guardar** — rode a skill uma vez com uma entrada real e ajuste o que o modelo errou.
