# Spacing & Layout — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

## 01 — Grade Base

**12 colunas · gutter 24px · margens externas 56px (desktop).**

- Largura máxima de conteúdo: `--content-max: 1360px`
- Layout-mestre 50/50: esquerda colunas 1–6 · direita colunas 7–12
- Vertical fallback (story / feed): pilha 1 acima do outro

## 02 — Escala de Spacing (observada)

`4 · 8 · 12 · 16 · 24 · 32 · 40 · 56 · 80 · 110 px`

| Token | px | Use |
|---|---|---|
| `--space-1` | 4 | Inline tight — gap entre ícone + label |
| `--space-2` | 8 | UI compact — chip padding |
| `--space-3` | 12 | Lockup gap, button padding vertical |
| `--space-4` | 16 | Card padding default |
| `--space-5` | 24 | Grid gutter, section gap |
| `--space-6` | 32 | Meta row gap |
| `--space-7` | 40 | Cover meta margin-top |
| `--space-8` | 56 | Page horizontal padding, section gap large |
| `--space-9` | 80 | Cover bottom spacing |
| `--space-10` | 110 | Section vertical padding (`section > padding: 110px 0`) |

## 03 — Section padding

- Vertical: **110px** top + bottom
- Horizontal: respeita `.wrap` (max-width 1360px + page padding 56px)
- Cada `section + section` recebe `border-top: 1px solid var(--line)`

## 04 — Breakpoints

| Token | Value | Role |
|---|---|---|
| Mobile max | 767px | Mobile layout — single column |
| Tablet min | 768px | Tablet — 8-col grid |
| Desktop min | 1200px | Full 12-col grid |
| Content max | 1360px | Largura máxima do conteúdo |

## 05 — Z-Index Stack (derivado)

| Token | Value | Role |
|---|---|---|
| `--z-base` | 0 | Conteúdo de página |
| `--z-pattern` | 1 | Watermark espiral (atrás do texto) |
| `--z-content` | 10 | Conteúdo elevado |
| `--z-nav` | 100 | Sticky nav |
| `--z-dropdown` | 200 | Dropdowns, tooltips |
| `--z-overlay` | 300 | Backdrop |
| `--z-modal` | 400 | Modal / dialog |
| `--z-toast` | 500 | Toast / snackbar |

## 06 — Layout-mestre 50/50

```
┌───────────────────────┬───────────────────────┐
│                       │                       │
│   ESQUERDA            │   DIREITA             │
│   cor sólida          │   fotografia          │
│   título Anton        │   heroica do          │
│   body Montserrat     │   produto             │
│                       │                       │
│   cols 1–6            │   cols 7–12           │
│                       │                       │
└───────────────────────┴───────────────────────┘
```

### Hierarquia visual

1. Lockup top-left
2. Manchete Anton (4–6 linhas, viúvas naturais)
3. Foto de momento + body Montserrat
4. Produto hero à direita
5. Espiral em watermark grande (atrás de tudo, ≤25% opacity)
