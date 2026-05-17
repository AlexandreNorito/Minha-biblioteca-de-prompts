# Color Tokens — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/color-tokens

## 01 — Color System · Complete Palette · Lime + Gold Editions

`foundations` is now the canonical route for color presentation. Both brandbook editions are documented here with complete accent, surface, text, border and contrast systems. `globals.css` remains the runtime source of truth.

### Theme Edition — Lime Theme (Dark Cockpit Edition)

Original AIOX high-contrast system. Neutral black base, terminal-lime accent, warm off-white typography.

- Accent — `--bb-lime`
- Canvas — `--bb-canvas`
- Surface — `--bb-surface`
- Text — `--bb-cream`

#### Accent & Signals — Primary accent, info, flare, error

| Token | Value | Role |
|---|---|---|
| `--bb-lime` | `oklch(0.934 0.2264 121.95)` | Primary accent. CTA, active states, emphasis, kinetic highlights. |
| `--bb-blue` | `oklch(0.669 0.1837 248.81)` | Info accent. Secondary feedback and utility cues. |
| `--bb-flare` | `oklch(0.631 0.2116 36.21)` | Warm counter-accent. Editorial heat and alerts. |
| `--bb-error` | `oklch(0.6368 0.2078 25.33)` | Destructive/error state. Validation and danger cues. |

#### Surface Stack — Canvas, shells, panels, console

| Token | Value | Role |
|---|---|---|
| `--bb-canvas` | `var(--bb-dark)` | Document canvas. Main route background. |
| `--bb-dark` | `oklch(0.1149 0 0)` | Dark shell. Hero panels, editorial density, hard contrast. |
| `--bb-surface` | `oklch(0.1693 0.0041 285.95)` | Primary raised surface. Cards, top bars, shell modules. |
| `--bb-surface-alt` | `oklch(0.231 0.0099 124.97)` | Secondary surface. Nested blocks and alternate rows. |
| `--bb-surface-panel` | `oklch(0.1785 0.0041 285.98)` | Panel shell. Sidebars, drawers, utility layers. |
| `--bb-surface-console` | `oklch(0.184 0.0081 118.61)` | Console/terminal zone. Utility output and mono previews. |
| `--bb-surface-hover-strong` | `oklch(0.1971 0.006 285.84)` | Heavy hover state. Controls and selected shells. |

#### Text & Reading Layer — Text hierarchy and light neutrals

| Token | Value | Role |
|---|---|---|
| `--bb-cream` | `oklch(0.9639 0.0158 106.69)` | Primary reading color. Headlines and body text. |
| `--bb-cream-alt` | `oklch(0.9644 0.0172 103.15)` | Soft alternate off-white. UI variants and large fields. |
| `--bb-warm-white` | `oklch(0.9952 0.0235 106.82)` | Purest light. Mark/logo and maximum contrast details. |
| `--bb-dim` | `rgba(245, 244, 231, 0.4)` | Muted copy. Labels, captions, secondary descriptions. |
| `--bb-muted` | `oklch(0.7952 0 0)` | Neutral light support. Tertiary text and subtle separators. |
| `--bb-meta` | `oklch(0.6927 0 0)` | Metadata color. Counters, supporting UI, technical labels. |

#### Neutral Scale — Gray system and bridge tones

| Token | Value | Role |
|---|---|---|
| `--bb-gray-charcoal` | `oklch(0.36 0 0)` | Heavy neutral. Utility fills and strong separators. |
| `--bb-gray-dim` | `oklch(0.5208 0 0)` | Mid dark neutral. Placeholder surfaces and utility blocks. |
| `--bb-gray-muted` | `oklch(0.683 0 0)` | Muted support. Soft chip fills and subdued UI. |
| `--bb-gray-silver` | `oklch(0.7984 0 0)` | Light neutral. Delicate fills and border-led components. |
| `--bb-muted-legacy` | `oklch(0.5173 0 0)` | Legacy neutral bridge. Compatibility layers and old docs. |

#### Border System — Neutral separation tokens

| Token | Value | Role |
|---|---|---|
| `--bb-border` | `rgba(156, 156, 156, 0.15)` | Default border. Grid, rules, low-noise separation. |
| `--bb-border-soft` | `rgba(156, 156, 156, 0.10)` | Soft border. Hairline dividers and subtle separators. |
| `--bb-border-strong` | `rgba(156, 156, 156, 0.25)` | Strong border. Active shell and high-contrast framing. |
| `--bb-border-hover` | `rgba(156, 156, 156, 0.24)` | Hover border. Interactive feedback for surfaces. |
| `--bb-border-input` | `rgba(156, 156, 156, 0.2)` | Form border. Inputs, textareas, data entry zones. |

#### Accent Opacity Ladder — Theme glow and overlay scale

`--bb-accent-{02|04|05|06|08|10|12|15|20|25|40|50|75|90}` → `rgba(var(--bb-accent-rgb), 0.XX)`

#### Contrast Pairs (Approved high-contrast combinations)

- Lime / Dark — `--bb-lime` on `--bb-dark`
- Cream / Canvas — `--bb-cream` on `--bb-canvas`
- Dark / Lime — `--bb-dark` on `--bb-lime`
- Blue / Dark — `--bb-blue` on `--bb-dark`

---

### Theme Edition — Gold Theme (Golden Guideline Edition)

Neutral black foundation with a restrained champagne accent. Same dark system architecture, different emphasis layer.

#### Accent & Signals

| Token | Value | Role |
|---|---|---|
| `--bb-lime` | `#DDD1BB` | Primary gold accent. Active states, badges, premium highlights. |
| `--bb-blue` | `oklch(0.669 0.1837 248.81)` | Info accent. Preserved for shared system semantics. |
| `--bb-flare` | `#C4B7A2` | Warm support accent. Secondary emphasis and richer highlights. |
| `--bb-error` | `oklch(0.6368 0.2078 25.33)` | Destructive/error state. Shared semantic warning language. |

#### Surface Stack

| Token | Value | Role |
|---|---|---|
| `--bb-canvas` | `#09090A` | Document canvas. Neutral black foundation for the edition. |
| `--bb-dark` | `#121213` | Dark shell. Major panels and editorial contrast zones. |
| `--bb-surface` | `#151517` | Primary elevated surface. Cards, nav, foundation blocks. |
| `--bb-surface-alt` | `#1D1D20` | Alternate surface. Nested layers and secondary grouping. |
| `--bb-surface-panel` | `#18181B` | Panel shell. Drawers, sidebars, supporting containers. |
| `--bb-surface-console` | `#222225` | Dark utility console. Dense technical and mono moments. |
| `--bb-surface-hover-strong` | `#28282C` | Strong hover/selection shell. Elevated interactivity. |

#### Text & Reading Layer

| Token | Value | Role |
|---|---|---|
| `--bb-cream` | `#F4F4F4` | Primary text. Clean neutral reading layer. |
| `--bb-cream-alt` | `#E8E8E8` | Alternate light neutral. Secondary fields and tonal variation. |
| `--bb-warm-white` | `#FFFFFF` | Maximum contrast white. Marks and highest-priority detail. |
| `--bb-dim` | `rgba(244, 244, 244, 0.52)` | Muted copy. Supporting metadata and low-emphasis body. |
| `--bb-muted` | `#DDDDDD` | Soft neutral. Utility text and quiet secondary layers. |
| `--bb-meta` | `#AFAFAF` | Metadata color. Counters, labels, informational chrome. |

#### Neutral Scale

| Token | Value | Role |
|---|---|---|
| `--bb-gray-charcoal` | `#313131` | Dense neutral. Heavy framing and utility surfaces. |
| `--bb-gray-dim` | `#484848` | Mid neutral. Secondary chips, placeholders, subtle blocks. |
| `--bb-gray-muted` | `#6E6E6E` | Muted support. Soft UI moments and low-priority contrast. |
| `--bb-gray-silver` | `#919191` | Light neutral. Fine fills and structural detailing. |
| `--bb-muted-legacy` | `#919191` | Legacy bridge neutral. Compatibility with shared patterns. |

#### Border System

| Token | Value | Role |
|---|---|---|
| `--bb-border` | `rgba(255, 255, 255, 0.09)` | Default border. Neutral separation with no gold tint. |
| `--bb-border-soft` | `rgba(255, 255, 255, 0.05)` | Soft border. Quiet framing and low-noise structure. |
| `--bb-border-strong` | `rgba(255, 255, 255, 0.15)` | High-contrast border. Strong shell framing and active states. |
| `--bb-border-hover` | `rgba(255, 255, 255, 0.18)` | Interactive border. Hover cues without color contamination. |
| `--bb-border-input` | `rgba(255, 255, 255, 0.12)` | Input border. Neutral form language for the edition. |

#### Accent Opacity Ladder (Gold)

`--bb-accent-{02..90}` → `rgba(221, 209, 187, 0.XX)`

#### Contrast Pairs (Gold)

- Gold / Dark · Cream / Canvas · Ink / Gold · Silver / Surface

---

## 02 — Semantic Aliases (shadcn/ui token mapping)

| shadcn Token | Maps To | Usage |
|---|---|---|
| `--background` | `--bb-canvas` | Page background |
| `--foreground` | `--bb-cream` | Default text |
| `--primary` | `--bb-lime` | Primary actions |
| `--primary-foreground` | `--bb-dark` | Text on primary |
| `--secondary` | `--bb-surface-alt` | Secondary bg |
| `--muted` | `--bb-surface-panel` | Muted backgrounds |
| `--muted-foreground` | `--bb-dim` | Muted text |
| `--accent` | `--bb-accent-10` | Accent backgrounds |
| `--accent-foreground` | `--bb-lime` | Accent text |
| `--destructive` | `--bb-error` | Error/destructive |
| `--border` | `--bb-border` | Default borders |
| `--input` | `--bb-border-input` | Input borders |
| `--ring` | `--bb-accent-40` | Focus ring |
| `--card` | `--bb-surface` | Card bg |
| `--card-foreground` | `--bb-cream` | Card text |
| `--popover` | `--bb-surface` | Popover bg |
| `--popover-foreground` | `--bb-cream` | Popover text |
