# Surfaces & Borders — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

## 01 — Surfaces (Elevation Stack)

| Token | Hex | Role |
|---|---|---|
| `--paper` | `#EFE9DC` | Canvas — fundo principal |
| `--paper-2` | `#E6DFCF` | Surface alternativa — cards aninhados |
| `--cream` | `#F6F1E6` | Surface clara — conteúdo destacado · texto em dark |
| `--ink` | `#14110C` | Dark hero · modo dark · side-by-side com paper |
| `--ink-soft` | `#2A2620` | Dark interno — caixa secundária dentro do dark |

A elevação cresce do `paper` (chão) para `cream` (papel destacado) ou
pula para `ink` (modo dark). Não há sombras drop-shadow no sistema —
**a elevação é por cor e linha, não por sombra**.

## 02 — Borders (Hairlines)

| Token | Value | Role |
|---|---|---|
| `--line` | `rgba(20,17,12,0.14)` | Default — separador em fundo claro |
| `--line-dark` | `rgba(246,241,230,0.18)` | Separador em fundo ink |

Aplicação:
- `section + section { border-top: 1px solid var(--line); }`
- Cards: `border: 1px solid var(--line);`
- Modo dark herda `--line-dark` em qualquer regra `.dark` parent

## 03 — Border Radius

| Token | px | Role |
|---|---|---|
| `--r-sm` | 6 | Badges, neck labels, chips, small buttons |
| `--r-md` | 10 | Cards default, image frames, buttons (default) |
| `--r-lg` | 18 | Large cards, hero containers, modals |

**Não existe radius > 18px.** Sem cantos arredondados grandes de UI SaaS
— quebraria o ritmo editorial da marca.

## 04 — Shadows

O sistema **não usa drop-shadow** como camada principal. Elevação é por
**superfície de cor + linha**.

Quando shadow for absolutamente necessário (ex: modal flutuante):

| Token | Value | Role |
|---|---|---|
| `--shadow-modal` | `0 12px 40px rgba(20,17,12,0.18)` | Modal sobre overlay |
| `--shadow-pop` | `0 4px 16px rgba(20,17,12,0.10)` | Popover, dropdown |

## 05 — Overlays

| Token | Value | Role |
|---|---|---|
| `--overlay-light` | `rgba(20,17,12,0.6)` | Modal backdrop em fundo light |
| `--overlay-photo` | `rgba(20,17,12,0.35)` | Sobre fotografia, para legibilidade de manchete |
