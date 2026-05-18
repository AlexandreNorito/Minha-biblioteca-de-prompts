# Semantic Tokens — Gauden Brandbook

Source: derived from Gauden v1.0 + AIOX brandbook structure

Aliases de alto nível que mapeiam os tokens canônicos para uso em
componentes (shadcn/ui, design tokens app).

## 01 — Semantic Backgrounds

| Token | Maps To | Role |
|---|---|---|
| `--color-bg-base` | `--paper` `#EFE9DC` | Page background |
| `--color-bg-surface` | `--cream` `#F6F1E6` | Elevated surface — cards |
| `--color-bg-surface-alt` | `--paper-2` `#E6DFCF` | Nested surface |
| `--color-bg-dark` | `--ink` `#14110C` | Dark hero, modo dark |
| `--color-bg-dark-alt` | `--ink-soft` `#2A2620` | Dark internal |
| `--color-bg-overlay` | `rgba(20,17,12,0.6)` | Modal backdrop |

## 02 — Semantic Text

| Token | Maps To | Role |
|---|---|---|
| `--color-text-base` | `--ink` `#14110C` | Texto primário (em paper / cream) |
| `--color-text-soft` | `--ink-soft` `#2A2620` | Secundário, descrição |
| `--color-text-muted` | `rgba(20,17,12,0.55)` | Metadata, captions |
| `--color-text-inverse` | `--cream` `#F6F1E6` | Texto sobre dark / cor de linha |

## 03 — Brand · Highlight

| Token | Maps To | Role |
|---|---|---|
| `--brand-default` | `--ink` `#14110C` | Default brand color (ink wordmark) |
| `--brand-highlight` | `--pilsen` `#F4C115` | Highlight quente |
| `--brand-accent-blue` | `--okto` `#1F6CC9` | Acento frio (links, info) |
| `--brand-accent-warm` | `--irish` `#EB5A1E` | Acento quente (CTA secundário) |

## 04 — Interactive States

| Token | Value | Role |
|---|---|---|
| `--focus-ring` | `rgba(20,17,12,0.4)` | Focus ring default |
| `--focus-ring-brand` | `--pilsen` `#F4C115` | Focus ring com destaque de marca |
| `--selection-bg` | `--ink` `#14110C` | Text selection background |
| `--selection-fg` | `--pilsen` `#F4C115` | Text selection foreground |
| `--hover-overlay` | `rgba(20,17,12,0.05)` | Hover de surface clara |

## 05 — Font Weights

| Token | Value | Name |
|---|---|---|
| `--fw-regular` | 400 | Regular |
| `--fw-medium` | 500 | Medium · default body |
| `--fw-semibold` | 600 | Semibold |
| `--fw-bold` | 700 | Bold |
| `--fw-black` | 800 | Black · wordmark only |

## 06 — shadcn/ui Mapping

| shadcn token | maps to | resolved value |
|---|---|---|
| `--background` | `--paper` | `#EFE9DC` |
| `--foreground` | `--ink` | `#14110C` |
| `--card` | `--cream` | `#F6F1E6` |
| `--card-foreground` | `--ink` | `#14110C` |
| `--popover` | `--cream` | `#F6F1E6` |
| `--popover-foreground` | `--ink` | `#14110C` |
| `--primary` | `--ink` | `#14110C` |
| `--primary-foreground` | `--cream` | `#F6F1E6` |
| `--secondary` | `--paper-2` | `#E6DFCF` |
| `--secondary-foreground` | `--ink` | `#14110C` |
| `--muted` | `--paper-2` | `#E6DFCF` |
| `--muted-foreground` | `--color-text-muted` | `rgba(20,17,12,0.55)` |
| `--accent` | `--pilsen` | `#F4C115` |
| `--accent-foreground` | `--ink` | `#14110C` |
| `--destructive` | `--amber` | `#D63A2A` |
| `--destructive-foreground` | `--cream` | `#F6F1E6` |
| `--border` | `--line` | `rgba(20,17,12,0.14)` |
| `--input` | `--line` | `rgba(20,17,12,0.14)` |
| `--ring` | `--focus-ring` | `rgba(20,17,12,0.4)` |
| `--radius` | `--r-md` | `10px` |
