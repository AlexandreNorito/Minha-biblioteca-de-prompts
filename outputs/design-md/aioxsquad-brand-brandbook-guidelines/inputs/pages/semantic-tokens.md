# Semantic Tokens — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/semantic-tokens

## 01 — Semantic Tokens · Aliases · Glow · States · Weights · shadcn

### Semantic Backgrounds

| Token | Value | Role |
|---|---|---|
| `--color-bg-void` | `#050505` | Absolute black. Overlays, blackout. |
| `--color-bg-base` | `#050505` | Page background. Main canvas. |
| `--color-bg-surface` | `#0F0F11` | Elevated surface. Cards, panels. |
| `--color-bg-surface-alt` | `#1C1E19` | Secondary surface. Nested cards. |
| `--color-bg-elevated` | `#1C1E19` | Alias for surface-alt. |
| `--color-bg-overlay` | `rgba(61,61,61,0.5)` | Modal backdrop dim. |

### Semantic Text (Text color aliases)

| Token | Value | Role |
|---|---|---|
| `--color-text-base` | `#F4F4E8` | Primary text. High-contrast foreground. |
| `--color-text-secondary` | `rgba(245, 244, 231, 0.4)` | Secondary text. Descriptions. |
| `--color-text-tertiary` | `rgba(245, 244, 231, 0.4)` | Tertiary text. Metadata. |
| `--color-text-muted` | `rgba(245, 244, 231, 0.4)` | Muted text. Dim labels. |

### Glow & Neon (Brand luminance tokens)

| Token | Value | Role |
|---|---|---|
| `--bb-accent` | `#D1FF00` | Canonical brand accent. Legacy alias `--bb-lime` remains. |
| `--neon-dim` | `rgba(var(--bb-accent-rgb), 0.15)` | Subtle accent tint. Backgrounds. |
| `--neon-glow` | `rgba(var(--bb-accent-rgb), 0.4)` | Strong glow. Active focus. |
| `--lime-glow` | `rgba(var(--bb-accent-rgb), 0.25)` | Box-shadow glow. CTAs. |
| `--lime-glow-soft` | `rgba(var(--bb-accent-rgb), 0.1)` | Soft glow. Hover states. |

### Interactive States (Focus, selection, warning)

| Token | Value | Role |
|---|---|---|
| `--focus-brand` | `#D1FF00` | Focus ring on brand elements. |
| `--focus-neutral` | `#BDBDBD` | Focus ring on neutral elements. |
| `--selection-bg` | `#050505` | Text selection background. |
| `--selection-fg` | `#D1FF00` | Text selection foreground. |
| `--warning-bg` | `rgba(245,158,11,0.05)` | Warning state background. |
| `--warning-border` | `rgba(245,158,11,0.2)` | Warning state border. |

### Font Weights (Weight scale tokens)

| Token | Value | Name |
|---|---|---|
| `--font-weight-thin` | 300 | Thin |
| `--font-weight-regular` | 400 | Regular |
| `--font-weight-medium` | 500 | Medium |
| `--font-weight-semibold` | 600 | Semibold |
| `--font-weight-bold` | 700 | Bold |
| `--font-weight-extrabold` | 800 | Extrabold |
| `--font-weight-black` | 900 | Black |

### shadcn/ui Mapping (Component library token bridge)

| shadcn token | maps to | resolved value |
|---|---|---|
| `--background` | `--bb-dark` | `#050505` |
| `--foreground` | `--bb-cream` | `#F4F4E8` |
| `--card` / `--popover` | `--bb-surface` | `#0F0F11` |
| `--primary` | `--bb-accent` | `#D1FF00` |
| `--primary-foreground` | `--bb-dark` | `#050505` |
| `--accent` | `--bb-accent` | `#D1FF00` |
| `--accent-foreground` | `--bb-dark` | `#050505` |
| `--muted` | `--bb-gray-charcoal` | `#3D3D3D` |
| `--muted-foreground` | `--bb-gray-dim` | `#696969` |
| `--destructive` | `--bb-error` | `#EF4444` |
| `--ring` | `--bb-accent` | `#D1FF00` |
| `--radius` | — | `0px` |
