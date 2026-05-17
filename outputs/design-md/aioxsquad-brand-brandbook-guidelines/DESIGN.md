---
name: AIOX Squad
url: https://brand.aioxsquad.ai/brandbook/guidelines
version: 2.0
edition: Dark Cockpit Edition
language: pt-BR
archetype: brutalist-mono
tagline: "Orquestrando IA com estrutura, metodologia e clareza."

colors:
  primary: "#D1FF00"          # KINETIC LIMON — accent / CTA / kinetic highlights
  primary_oklch: "oklch(0.934 0.2264 121.95)"
  primary_rgb: "209,255,0"
  primary_cmyk: "20,0,100,0"
  secondary: "#DDD1BB"        # Gold edition accent (alternate theme)
  info: "oklch(0.669 0.1837 248.81)"   # --bb-blue
  flare: "oklch(0.631 0.2116 36.21)"   # --bb-flare — warm counter-accent
  error: "oklch(0.6368 0.2078 25.33)"  # --bb-error
  surface: "oklch(0.1693 0.0041 285.95)"  # --bb-surface
  surface_alt: "oklch(0.231 0.0099 124.97)"
  surface_panel: "oklch(0.1785 0.0041 285.98)"
  surface_console: "oklch(0.184 0.0081 118.61)"
  surface_hover_strong: "oklch(0.1971 0.006 285.84)"
  canvas: "var(--bb-dark)"
  dark: "oklch(0.1149 0 0)"          # near-black — page base
  text: "oklch(0.9639 0.0158 106.69)" # --bb-cream — primary reading color
  text_alt: "oklch(0.9644 0.0172 103.15)"
  text_muted: "rgba(245, 244, 231, 0.4)" # --bb-dim
  text_neutral: "oklch(0.7952 0 0)"      # --bb-muted
  text_meta: "oklch(0.6927 0 0)"
  warm_white: "oklch(0.9952 0.0235 106.82)" # logo / max contrast
  border: "rgba(156, 156, 156, 0.15)"
  border_soft: "rgba(156, 156, 156, 0.10)"
  border_strong: "rgba(156, 156, 156, 0.25)"
  border_hover: "rgba(156, 156, 156, 0.24)"
  border_input: "rgba(156, 156, 156, 0.2)"
  gray_charcoal: "oklch(0.36 0 0)"
  gray_dim: "oklch(0.5208 0 0)"
  gray_muted: "oklch(0.683 0 0)"
  gray_silver: "oklch(0.7984 0 0)"

themes:
  lime:
    accent: "#D1FF00"
    accent_rgb: "209,255,0"
    canvas: "var(--bb-dark)"
    surface: "oklch(0.1693 0.0041 285.95)"
    text: "oklch(0.9639 0.0158 106.69)"
  gold:
    accent: "#DDD1BB"
    flare: "#C4B7A2"
    canvas: "#09090A"
    dark: "#121213"
    surface: "#151517"
    surface_alt: "#1D1D20"
    surface_panel: "#18181B"
    surface_console: "#222225"
    surface_hover_strong: "#28282C"
    text: "#F4F4F4"
    text_alt: "#E8E8E8"
    warm_white: "#FFFFFF"
    text_muted: "rgba(244, 244, 244, 0.52)"

accent_opacity_ladder:
  - "--bb-accent-02: rgba(var(--bb-accent-rgb), 0.02)"
  - "--bb-accent-04: rgba(var(--bb-accent-rgb), 0.04)"
  - "--bb-accent-05: rgba(var(--bb-accent-rgb), 0.05)"
  - "--bb-accent-06: rgba(var(--bb-accent-rgb), 0.06)"
  - "--bb-accent-08: rgba(var(--bb-accent-rgb), 0.08)"
  - "--bb-accent-10: rgba(var(--bb-accent-rgb), 0.10)"
  - "--bb-accent-12: rgba(var(--bb-accent-rgb), 0.12)"
  - "--bb-accent-15: rgba(var(--bb-accent-rgb), 0.15)"
  - "--bb-accent-20: rgba(var(--bb-accent-rgb), 0.20)"
  - "--bb-accent-25: rgba(var(--bb-accent-rgb), 0.25)"
  - "--bb-accent-40: rgba(var(--bb-accent-rgb), 0.40)"
  - "--bb-accent-50: rgba(var(--bb-accent-rgb), 0.50)"
  - "--bb-accent-75: rgba(var(--bb-accent-rgb), 0.75)"
  - "--bb-accent-90: rgba(var(--bb-accent-rgb), 0.90)"

typography:
  display:
    fontFamily: "TASA Orbiter Display"
    fontWeight: 800
    fontSize: "4rem"     # 64px
    role: "H1-H4, Titles, Impact, Hero"
    cssVar: "--font-bb-display"
  h1:
    fontFamily: "TASA Orbiter Display"
    fontWeight: 800
    fontSize: "2.5rem"   # 40px
    role: "Page Title"
  h2:
    fontFamily: "TASA Orbiter Display"
    fontWeight: 800
    fontSize: "1.5rem"   # 24px
    role: "Section Title"
  body:
    fontFamily: "Geist"
    fontWeight: 400
    fontSize: "1rem"     # 16px
    role: "Body, UI, Labels"
    cssVar: "--font-bb-sans"
  body_small:
    fontFamily: "Geist"
    fontWeight: 400
    fontSize: "0.8rem"   # ~13px
    role: "Secondary text, descriptions, supporting content"
  label:
    fontFamily: "Roboto Mono"
    fontWeight: 500
    fontSize: "0.65rem"  # ~10.4px
    role: "HUD Labels, Navigation, Status"
    cssVar: "--font-bb-mono"
  micro:
    fontFamily: "Roboto Mono"
    fontWeight: 500
    fontSize: "0.6rem"   # ~9.6px
    role: "Footer meta, class names, refs"
  mono:
    fontFamily: "Roboto Mono"
    fontWeight: 500
    role: "Code, Labels, Nav, HUD"
    cssVar: "--font-bb-mono"

font_weights:
  thin: 300
  regular: 400
  semibold: 600
  bold: 700
  black: 800

font_families:
  display: "TASA Orbiter Display"   # premium, brutalist editorial
  sans: "Geist"                     # 400–700 — body, UI, labels
  mono: "Roboto Mono"               # 400–500 — code, HUD, terminal

spacing:
  named:
    xs: "0.5rem"   # 8px
    sm: "1rem"     # 16px
    md: "2rem"     # 32px
    lg: "3rem"     # 48px
    xl: "4rem"     # 64px
  scale:           # 14-step numeric scale --space-0 ... --space-13
    "0": 0
    "1": 4
    "2": 8
    "3": 12
    "4": 15
    "5": 20
    "6": 30
    "7": 40
    "8": 60
    "9": 80
    "10": 90
    "11": 120
    "12": 150
    "13": 180
  baseUnit: 4
  usage:
    micro_ui: "space-0..3   (inline gaps, icon padding, tight clusters)"
    components: "space-4..6 (card padding, form gaps, button groups)"
    section_layout: "space-7..11 (section padding, grid gaps, page margins)"
    editorial: "space-12..13 (large editorial blocks, hero spacing)"

rounded:                  # brutalist — every radius is 0
  none: 0
  sm: 0
  md: 0
  lg: 0
  xl: 0
  "2xl": 0
  full: 0

layers:
  nav: 100
  dropdown: 200
  overlay: 300
  modal: 400
  toast: 500

breakpoints:
  mobile_max: 767
  tablet_min: 768
  desktop_min: 1200

glass:
  blur_standard: "blur(10px)"   # nav, modals
  blur_soft: "blur(5px)"        # tooltips, popovers

components:
  button_radius: 0
  card_radius: 0
  input_radius: 0
  button_variants: [primary, secondary, ghost, destructive]
  button_sizes: [small, medium, large]
  button_states: [default, hover, focus, focus-visible, active, loading, disabled]
  badge_variants: [lime, blue, error, surface, solid]
  button_roles:
    SiteCta: "Primary page or form action for marketing surfaces"
    Button: "Generic product and app-shell action primitive"
    PrimaryLink: "Inline editorial / nav action with low visual weight"
    CtaButton: "Legacy marketing primitive — kept for backwards compat"

motion:
  patterns:
    - { name: "Orchestration Pulse", duration: "3.5s", role: "hero / splash full reveal" }
    - { name: "Speed Lines",         duration: "2s",   role: "emphasis — pin 1 inspired" }
    - { name: "Particle Orbit",      duration: "loop", role: "agents — pin 2 inspired" }
    - { name: "Logo Dissolve",       duration: "3s",   role: "transition / exit / fade" }
    - { name: "Morphing Square",     duration: "3.5s cycle", role: "loop / shape shift" }
    - { name: "Glitch Reveal",       duration: "2s",   role: "dramatic / tech / hacker" }
    - { name: "Stagger Letters",     duration: "1.5s", role: "elegant / navbar / footer" }
    - { name: "Brand Reveal",        duration: "3s",   role: "premium landing page hero" }
  stack: "Framer Motion, GPU-accelerated"

semantic_aliases:       # shadcn/ui token mapping
  background: --bb-canvas
  foreground: --bb-cream
  primary: --bb-lime
  primary-foreground: --bb-dark
  secondary: --bb-surface-alt
  muted: --bb-surface-panel
  muted-foreground: --bb-dim
  accent: --bb-accent-10
  accent-foreground: --bb-lime
  destructive: --bb-error
  border: --bb-border
  input: --bb-border-input
  ring: --bb-accent-40
  card: --bb-surface
  card-foreground: --bb-cream
  popover: --bb-surface
  popover-foreground: --bb-cream

preview_tokens:
  button_primary_bg: "#D1FF00"
  button_primary_text: "#050505"
  button_primary_border: "#D1FF00"
  button_secondary_bg: "transparent"
  button_secondary_text: "#F5F4E7"
  button_secondary_border: "rgba(156,156,156,0.25)"
  button_ghost_bg: "transparent"
  button_ghost_text: "#D1FF00"
  button_destructive_bg: "oklch(0.6368 0.2078 25.33)"
  button_destructive_text: "#050505"
  surface_bg: "oklch(0.1693 0.0041 285.95)"
  page_bg: "#050505"
  link: "#D1FF00"
  text: "#F5F4E7"
  text_muted: "rgba(245,244,231,0.4)"
  border: "rgba(156,156,156,0.15)"
  focus_ring: "rgba(209,255,0,0.4)"

logo:
  primary: "https://brand.aioxsquad.ai/logo/AIOX-White.svg"
  favicon: "https://brand.aioxsquad.ai/icon.svg"
  safe_space: "x (clear-space equal to the height of the X glyph)"
  construction: "wordmark on grid, ✕✕✕✕ safe-space markers"

brand:
  positioning: "AI Orchestration Experience — acesso direto a IA raiz empacotada com metodologia pesada de Engenharia de Software"
  enemy: "A COMPLEXIDADE — ferramentas que prometem facilidade e entregam travamentos"
  target_audience: "OS CRIADORES — pessoas não-técnicas (ou devs frustrados) com visão que bateram no teto do No-Code genérico"
  archetypes:
    magician: 60      # transformacional — revela que o poder de criar sempre esteve lá
    sage: 25          # sabedoria reveladora — clareza na escuridão
    explorer: 15      # convite à toca do coelho — autonomia com mapa
  personality: "Morpheus digital: profundo, direto, revela o caminho — não faz por você"
  voice_archetypes:
    AIOX: "Morpheus Digital — frio, implacável, minimalista, sábio. Não tenta convencer, fornece o ferramental. Design brutalista, cores sóbrias com toques neon."
    ALAN: "Morpheus Humano (founder voice) — quente, passional, expansivo, provocador. Vende a visão. Chama para a briga contra a Matrix."

voice_vocabulary:
  use: [O X, A Seta, O Terminal, A Clareza, Transformador, Revelador, Direto, Jornada]
  ban: [Mágico, Revolucionário, Fácil, Hack]

symbols:
  delta: "∆ — Triangulo / Delta. Transformação. Jornada de um ponto a outro."
  joystick: "Você está no controle absoluto. O criador comanda sua ferramenta."
  arrow_flow: "A→I→O→X — A Seta (input) → Orquestração → O Destino (X Marks the Spot)"

evidence:
  - "R$500K/ano · Criação de Valor Real — João Pedro (Anima Educação)"
  - "6 DIAS para MVP (normalmente 3 meses) — Paulo Chaves"
  - "R$8K/cliente sem saber programar — Karla Pazos"
  - "R$100K economia · integração in-house — @leoh4236"

manifesto: |
  EU NÃO PRECISO SER PROGRAMADOR PARA CRIAR.
  A IA É A SETA. O X É MEU.
  A IA não é o herói. Você é. A IA não é o destino. É o caminho.
---

# AIOX Squad — DESIGN.md

> **Brand Identity System · v2.0 · Dark Cockpit Edition**
> _Orquestrando IA com estrutura, metodologia e clareza._

This document captures the AIOX Squad design system extracted from
`brand.aioxsquad.ai/brandbook/guidelines` and adjacent token pages
(`color-tokens`, `typography`, `spacing-layout`, `surfaces`,
`effects`, `motion`, `buttons`). Use it as the canonical brief for any
agent (LLM or human) producing AIOX surfaces.

---

## 1. Visual Theme — Dark Cockpit

A **brutalist, terminal-grade dark UI** with a single high-energy neon
accent. Every radius is zero. Type is mono-forward (Geist + Roboto Mono)
with a heavyweight editorial display face (TASA Orbiter) reserved for
hero moments. The palette is restricted and signal-driven — black canvas,
warm-white reading layer, a single kinetic accent (`#D1FF00` lime or
`#DDD1BB` champagne gold, depending on edition).

**Archetype:** `brutalist-mono` with editorial cockpit overtones.
Voice is "Morpheus Digital": frio, implacável, minimalista, sábio.

**Don'ts (brand-specific):**

- Don't round corners. Every component is square (`--radius* = 0`).
- Don't use the lime accent for body text. It's reserved for CTA,
  active states, kinetic highlights, and brand marks.
- Don't introduce a second hue from the wheel. The system runs on
  black + warm white + one accent. Blue is reserved for `--bb-blue` (info).
- Don't use the words *Mágico*, *Revolucionário*, *Fácil* or *Hack* in copy.
- Don't soften the voice. The system is direct, declarative, terminal-like.

---

## 2. Color — Restricted Palette

The system runs on **two editions** that share the same architecture
and swap only the accent + surface tint:

| Token | Lime (Dark Cockpit) | Gold (Golden Guideline) | Role |
|---|---|---|---|
| `--bb-lime` (accent) | `#D1FF00` · `oklch(0.934 0.2264 121.95)` | `#DDD1BB` | Primary CTA, kinetic highlight |
| `--bb-blue` | `oklch(0.669 0.1837 248.81)` | same | Info accent |
| `--bb-flare` | `oklch(0.631 0.2116 36.21)` | `#C4B7A2` | Warm counter-accent / editorial heat |
| `--bb-error` | `oklch(0.6368 0.2078 25.33)` | same | Destructive |
| `--bb-canvas` | `var(--bb-dark)` | `#09090A` | Page background |
| `--bb-dark` | `oklch(0.1149 0 0)` | `#121213` | Hero panels, hard-contrast shells |
| `--bb-surface` | `oklch(0.1693 0.0041 285.95)` | `#151517` | Cards, top bars, modules |
| `--bb-surface-alt` | `oklch(0.231 0.0099 124.97)` | `#1D1D20` | Nested blocks |
| `--bb-surface-panel` | `oklch(0.1785 0.0041 285.98)` | `#18181B` | Sidebars, drawers |
| `--bb-surface-console` | `oklch(0.184 0.0081 118.61)` | `#222225` | Terminal/console |
| `--bb-cream` (text) | `oklch(0.9639 0.0158 106.69)` | `#F4F4F4` | Body + headlines |
| `--bb-warm-white` | `oklch(0.9952 0.0235 106.82)` | `#FFFFFF` | Logo, max-contrast detail |
| `--bb-dim` | `rgba(245,244,231,0.4)` | `rgba(244,244,244,0.52)` | Muted copy, labels |

**Accent opacity ladder** — `--bb-accent-{02..90}` — drives glow,
hover surfaces, focus rings, and ambient overlays. Always reference the
ladder; never compose ad-hoc alpha values.

**Approved contrast pairs** (lime edition):
`lime / dark`, `cream / canvas`, `dark / lime`, `blue / dark`.

---

## 3. Typography — Cockpit Stack

Three families. No exceptions.

| Family | Weight Range | CSS Var | Role |
|---|---|---|---|
| **TASA Orbiter Display** | 800 (Black) | `--font-bb-display` | H1–H4, hero, impact |
| **Geist** | 400–700 | `--font-bb-sans` | Body, UI, labels |
| **Roboto Mono** | 400–500 | `--font-bb-mono` | Code, HUD, nav, terminal moments |

**Scale (rem, root = 16px):**

| Token | Size | Use |
|---|---|---|
| Display | 4rem (64px) | AIOX hero wordmark moments |
| H1 | 2.5rem (40px) | Page title |
| H2 | 1.5rem (24px) | Section title |
| Body | 1rem (16px) | Default reading |
| Small | 0.8rem (~13px) | Secondary descriptions |
| Label | 0.65rem (~10px) | HUD labels, nav, status |
| Micro | 0.6rem (~9.6px) | Footer meta, class names, refs |

**Weight tokens:** `THIN 300` / `REG 400` / `BOLD 700` / `BLACK 800`.

Mono is not decorative — it carries the "terminal real para leigos"
metaphor. Use it for any value that resembles a token, command, status,
ID, label, or measurement.

---

## 4. Spacing & Layout

Two systems coexist:

**Named (semantic):** `--spacing-xs..xl` → `8 / 16 / 32 / 48 / 64 px`.

**Numeric (14-step):** `--space-0..13` → `0, 4, 8, 12, 15, 20, 30, 40,
60, 80, 90, 120, 150, 180 px`.

| Range | Tier | Use |
|---|---|---|
| `space-0..3` | Micro UI | Inline gaps, icon padding, tight clusters |
| `space-4..6` | Components | Card padding, form gaps, button groups |
| `space-7..11` | Section / Layout | Section padding, grid gaps, page margins |
| `space-12..13` | Editorial | Hero spacing, large editorial blocks |

**Breakpoints:** mobile ≤ 767px · tablet ≥ 768px · desktop ≥ 1200px.

**Z-index stack:** nav 100 · dropdown 200 · overlay 300 · modal 400 · toast 500.

---

## 5. Surfaces, Borders & Radius

**Border radius is zero across the entire scale.** This is intentional —
the system is brutalist; rounded corners would betray the voice.

```
--radius, --radius-sm, --radius-md, --radius-lg,
--radius-xl, --radius-2xl, --radius-full   →   all 0px
```

**Border tokens** (neutral, no color contamination):

- `--bb-border` `rgba(156,156,156,0.15)` — default
- `--bb-border-soft` `rgba(156,156,156,0.10)` — hairline
- `--bb-border-strong` `#3D3D3D` / `rgba(156,156,156,0.25)` — active shell
- `--bb-border-hover` `rgba(156,156,156,0.24)` — interactive feedback
- `--bb-border-input` `rgba(156,156,156,0.2)` — form fields

**Glass / blur:** `--glass-blur: blur(10px)` (nav, modals) ·
`--glass-blur-soft: blur(5px)` (tooltips, popovers).

---

## 6. Iconography & Symbols

The system uses **glyphs as identity**, not decoration:

- **∆ Delta / Triangle** — transformation; the journey from point A to point B.
- **Joystick** — control; the creator commands the tool.
- **A → I → O → X** — the semantic flow: input → orchestration → destination ("X Marks the Spot").

Icons are square, mono-weight, terminal-grade — never illustrative.
Pair them with mono labels for HUD-style affordance.

---

## 7. Motion — Framer Motion, GPU-accelerated

Eight named animation patterns, each with a fixed role:

| Pattern | Duration | Role |
|---|---|---|
| Orchestration Pulse | 3.5s | Hero / splash full reveal |
| Speed Lines | 2s | Emphasis ("pin 1" inspired) |
| Particle Orbit | loop | Agents ("pin 2" inspired) |
| Logo Dissolve | 3s | Transition / exit / fade |
| Morphing Square | 3.5s cycle | Continuous shape shift |
| Glitch Reveal | 2s | Dramatic / tech / hacker |
| Stagger Letters | 1.5s | Elegant / navbar / footer |
| Brand Reveal | 3s | Premium landing-page hero |

Motion vocabulary: spring, stagger, scanline, hue-rotate, glow ring,
speed lines, dissolve. **No bouncy easing.** All motion is precise,
mechanical, and arrives with intent.

---

## 8. Components

**Buttons** (square — `border-radius: 0`):

- **Variants:** Primary · Secondary · Ghost · Destructive.
- **Sizes:** Small · Medium · Large.
- **States:** Default · Hover · Focus · Focus-visible · Active · Loading · Disabled.
- **Production roles** (legacy + current):
  - `SiteCta` — primary action on marketing surfaces.
  - `Button` — generic product / app-shell primitive.
  - `PrimaryLink` — inline editorial or nav action; low visual weight.
  - `CtaButton` — legacy marketing primitive; preserve until migrated.

**Badges:** `lime` · `blue` · `error` · `surface` · `solid`.

**Surface stack** for cards / panels / nav: canvas → surface →
surface-alt → surface-panel → surface-console.

**Semantic aliases (shadcn/ui mapping):** see frontmatter
`semantic_aliases:` — full shadcn token surface is mapped onto the
`--bb-*` system so any shadcn component renders in-brand.

---

## 9. Voice, Tone & Brand Narrative

**Positioning:** _AI Orchestration Experience_ — acesso direto a IA raiz,
empacotada com metodologia pesada de Engenharia de Software.

**Enemy:** _A Complexidade_ — ferramentas que prometem facilidade e
entregam travamento.

**Audience:** _Os Criadores_ — pessoas não-técnicas (ou devs frustrados)
com visão, que bateram no teto do No-Code genérico.

**Archetypes:** Magician 60% · Sage 25% · Explorer 15% — transformador
fundamentado, revelador não místico, aventureiro com mapa.

**Manifesto (canonical copy):**

> _EU NÃO PRECISO SER PROGRAMADOR PARA CRIAR._
> _A IA É A SETA. O X É MEU._
> _A IA não é o herói. Você é. A IA não é o destino. É o caminho._

**Dual voice:**

- **AIOX (the brand)** — Morpheus Digital. Frio, implacável,
  minimalista, sábio. Não tenta convencer, fornece o ferramental.
  Tom direto, objetivo, institucional premium.
- **Alan (the founder)** — Morpheus Humano. Quente, passional,
  expansivo, provocador. Vende a visão, destrói o mindset velho,
  chama para a briga contra a Matrix.

**Vocabulary — use:** `O X`, `A Seta`, `O Terminal`, `A Clareza`,
`Transformador`, `Revelador`, `Direto`, `Jornada`.

**Ban list — never use:** `Mágico`, `Revolucionário`, `Fácil`, `Hack`.

**Social proof anchors:**

- _"Há dois anos me levava 3 meses. Há seis meses, 3 semanas. Há dois dias, 3 horas."_ — Rodrigo Faerman
- _"Pegou minha mentalidade, jogou no lixo e colocou uma semente nova."_ — Lucas D.
- _"Estou me sentindo PODEROSAAAA DEMAAAAAIS!"_ — Betty Bonaparte

---

## Agent Prompt Guide

When asked to produce any AIOX surface (UI, deck, post, doc), the agent should:

1. **Anchor on the dark canvas.** Page background = `#050505` / `--bb-canvas`. Never white.
2. **Use one accent.** Lime `#D1FF00` (default) or Gold `#DDD1BB` (alternate edition). Never both in the same surface.
3. **Lock every radius to 0.** No `rounded-lg`, no `border-radius: 8px`. Brutalist is the brand.
4. **Lead with mono for any technical / kinetic affordance** (HUD labels, counters, IDs, status). Use Geist for body, TASA Orbiter for hero moments.
5. **Respect the accent opacity ladder** — `--bb-accent-{02..90}` — for any tint, glow, or hover state.
6. **Speak in AIOX voice:** direct, declarative, terminal-like. No fluffy adjectives. No banned words.
7. **Anchor copy on the manifesto** — _"A IA é a seta. O X é meu."_ — and the A→I→O→X flow.
8. **Use ∆ and the joystick metaphor** for symbolic moments. Use the lime accent for kinetic / transformation moments only.
9. **For motion:** prefer one of the eight named patterns. No bouncy easing. Precise, mechanical, intentional.
10. **For components:** map shadcn/ui tokens via the `semantic_aliases` block. Buttons square, with variants `Primary / Secondary / Ghost / Destructive`.

---

_Source: scraped from `brand.aioxsquad.ai/brandbook/{guidelines,color-tokens,typography,spacing-layout,surfaces,effects,motion,buttons}` on 2026-05-17 via the design-md skill pipeline (firecrawl fallback — the local `design-md` runner is blocked by this remote environment's egress allowlist; see `inputs/extraction-note.md`)._
