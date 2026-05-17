# LP Sections — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/lp-sections

## 01 — Atoms & Molecules — Reusable Primitives

### SectionShell — LOW

**Purpose:** Wrapper for all page sections. Controls variant (dark/light), optional full-bleed mode, and consistent padding.

| Prop | Type | Default |
| --- | --- | --- |
| variant | 'dark' \| 'light' | 'light' |
| fullBleed | boolean | false |
| id | string? | — |

Layout:
- padding: py-24 md:py-32
- max-width: 1400px (when !fullBleed)
- dark bg: bg-aiox-black (#050505)
- light bg: bg-aiox-off-white (#F5F4E7)

### SectionHeader — LOW

**Purpose:** Mono-styled numbered label at the top of each section. Pattern: [number] label_

| Prop | Type | Default |
| --- | --- | --- |
| number | string | — |
| label | string | — |
| variant | 'dark' \| 'light' | 'light' |

Visual: Roboto Mono 11px, tracking 0.2em, number color (dark) aiox-neon (#D1FF00), label color (dark) white/40, margin-bottom mb-14 (3.5rem)

### AccentButton — LOW

**Purpose:** CTA button with arrow glyph. Three variants: lime (primary), dark, ghost.

| Prop | Type | Default |
| --- | --- | --- |
| variant | 'lime' \| 'dark' \| 'ghost' | 'lime' |
| arrow | boolean | true |
| href | string? | — |

Visual: text 11px bold uppercase tracking-[0.15em], padding px-5 py-3.5, min-width 200px, arrow glyph ↗

### StatCard — LOW

**Purpose:** Metric display with large value + mono label. Three sizes, three color variants.

Sizes: sm text-xl, md text-3xl, lg text-4xl md:text-[3.5rem]
Variants: light (black value + muted-smoke label), dark (white value + white/30 label), lime (neon value + white/30 label)

### QuoteBlock — LOW

**Purpose:** Testimonial block with oversized quote mark, author avatar + name/role.

| Prop | Type | Default |
| --- | --- | --- |
| quote | string | — |
| author | string | — |
| role | string | — |
| variant | 'dark' \| 'light' | 'light' |
| avatarSize | 'sm' \| 'md' | 'sm' |

Visual: quote mark text-5xl font-black 15% opacity, quote text text-lg md:text-xl, avatar rounded-full from pravatar.cc

### AvatarStack — LOW

**Purpose:** Overlapping avatar row with +N remaining count and optional label.

| Prop | Type | Default |
| --- | --- | --- |
| count | number | — |
| label | string? | — |
| variant | 'dark' \| 'light' | 'light' |

Visual: avatar size w-8 h-8 rounded-full, overlap -space-x-2, max displayed 5, label 10px mono uppercase tracking-[0.2em]

## 02 — Navigation — Fixed Bar + Fullscreen Overlay

### Navbar — MED

**Fixed Bar:** position fixed top-0 z-50; background aiox-dark/95 + backdrop-blur-sm; border-b border-white/[0.06]; max-width 1400px; padding px-6 md:px-10 py-4

**Elements:** logo aiox-logo-white.svg h-5; tagline 10px mono white/50 hidden md:block; clock 10px mono white/30 live BRT; menu btn border white/15 10px bold uppercase

**Fullscreen Overlay:** background aiox-cream (100vh); z-index z-[100]; layout grid md:grid-cols-[400px_1fr]; link size clamp(2.5rem, 6vw, 5.5rem); link style font-black uppercase tracking-tight

```
// Body scroll lock on menu open
useEffect(() => {
  document.body.style.overflow = menuOpen ? "hidden" : "";
}, [menuOpen]);

// Left panel: dark feature card with stats
// Right panel: full-height nav links
```

## 03 — Hero & Impact — Watermark, Ticker, Video Preview

### HeroSection — HIGH

Layout: min-h-screen flex-col; content align justify-end pb-12 md:pb-20; grid md:grid-cols-[1fr_1fr]; max-width 1400px

Typography: headline clamp(2.2rem, 7vw, 6.5rem); weight font-black (900); leading 0.92; tracking -0.02em; lime brackets [10x] [100]

AI Watermark:
```
// Giant "AI" text behind content
font-size: 45vw
opacity: white/[0.04]
tracking: -0.05em
translate-y: 30%
```

Video Preview (desktop only): aspect 16/10; grid overlay 30px squares white/6%; play button lime circle w-12 h-12; diamond shapes rotated 45deg borders

Logo Ticker: background aiox-cream; border-t border-white/10; animation animate-ticker 30s linear infinite; pattern 3x array duplication

Motion:
```
// Headline reveal
initial={{ opacity: 0, y: 30 }}
animate={{ opacity: 1, y: 0 }}
transition={{ duration: 0.6 }}

// Video preview
initial={{ opacity: 0, scale: 0.97 }}
transition={{ duration: 0.8, delay: 0.3 }}
```

## 04 — Pain & Proof — Tickers, Stats, Testimonials

### PainPoints — MED

Layout: structure 2 sections dark + light; dark height min-h-[70vh] md:min-h-screen; light height min-h-[50vh] md:min-h-screen

Dual Ticker: top animate-ticker (→); bottom animate-ticker-reverse (←); dot w-2 h-2 rounded-full bg-lime/60; text 11px mono white/50 uppercase

Center Headline: font-size clamp(2.2rem, 5.5vw, 5rem); motion whileInView fade-up duration 0.7

```
const topTicker = string[]   // duplicated 3x
const bottomTicker = string[] // duplicated 3x
```

### WhoWeAre — MED

Layout: variant light (SectionShell); grid md:grid-cols-2 gap-16

Stat Cascade:
```
// Staircase padding — each row offset 6%
{stats.map((stat, i) => (
  <div style={{ paddingLeft: `${i * 6}%` }}>
    <StatCard size="lg" />
    <div className="flex-1 h-3 bg-black/4%" />
  </div>
))}
```

Components: SectionShell, SectionHeader, StatCard (lg), QuoteBlock, AvatarStack (inline)

### CustomerStory — MED

Layout: grid md:grid-cols-2 gap-0; border border-white/[0.08]; left panel bg-white/[0.03] p-8 md:p-10; right panel full-bleed image

Content Grid: meta row grid-cols-3 (Background, Experience, Prazo); stats row 2x StatCard variant=lime; CTA underline link with ArrowRight icon

### Testimonials — HIGH

Layout: grid sm:grid-cols-2 lg:grid-cols-4; gap trick gap-px bg-black/[0.06]; card min-h 320px sm:420px

Highlight Card: bg-aiox-neon (lime); span sm:col-span-2 lg:col-span-1; content 2x StatCard + headline + brand mark

```
interface Testimonial {
  quote: string
  author: string
  role: string
  stats: { value: string; label: string }[]
}
```

## 05 — Services & Process — Table Layout, Staircase, Marquee

### Services — MED

Table Layout: grid md:grid-cols-[50px_180px_1fr_1fr]; header row 10px mono white/20 uppercase; dividers divide-y divide-white/[0.06]; hover bg-white/[0.015]

Capability Tags: style 10px mono white/25; border white/[0.08]; padding px-2.5 py-0.5

```
interface Service {
  id: string         // "01"-"06"
  name: string
  description: string
  capabilities: string[]  // 4 items
}
```

### HowItWorks — HIGH

Interactive Staircase:
```
// Cards offset vertically by index
marginTop: isMobile ? '24px' : `${i * 50 + 24}px`

// Progress bar tracks hovered step
width: `${((hovered + 1) / steps.length) * 100}%`

// 48-column tick marks below bar
Array.from({ length: 48 }).map(() =>
  <div className="flex-1 border-l border-black/15" />
)
```

Layout: grid md:grid-cols-4; card min-h 220px; variant light (SectionShell)
Post-Launch Grid: grid md:grid-cols-3 gap-px; gap trick bg-black/[0.06] with white cards; icons Activity, Zap, HeadphonesIcon (lucide)

### TechStack — LOW

Marquee: animation animate-marquee 20s linear infinite; duplication [...techs, ...techs]; item style border white/[0.08] px-6 py-3; text white/35 text-sm font-medium
Layout: variant dark (SectionShell fullBleed); items 18 tech names

## 06 — Commerce — Pricing Toggle, ROI Calculator

### Pricing — MED

Layout: grid sm:grid-cols-2 md:grid-cols-3; border border-r border-b white/[0.08]; popular highlight bg-white/[0.025]

Toggle (Mensal/Anual): track w-10 h-5 border white/25; thumb w-4 bg-white translate-x; discount price * 0.8 for annual

Card Anatomy: header tier name + popular badge; price text-5xl font-black; features Check icon + mono text; CTA full-width row with ↗

```
interface Tier {
  name: string      // Explorer | Creator | Pro
  monthly: number   // 0 | 497 | 1997
  description: string
  features: string[]
  cta: string
  popular: boolean
}
```

### ROICalculator — HIGH

Layout: bg aiox-cream (standalone section); calculator bg aiox-dark; max-width 3xl (max-w-3xl)

Sliders: component shadcn/ui Slider; thumb bg-aiox-lime border-aiox-lime; track bg-white/15; fill bg-aiox-lime

| Slider | Range | Step |
| --- | --- | --- |
| Employees | 1–100 | 1 |
| Hours/week | 5–40 | 5 |
| Hourly cost | R$15–200 | 5 |

```
const baseCost = employees * hours * cost * 52
const annual = includeBenefits
  ? Math.round(baseCost * 1.3)
  : baseCost
```

## 07 — Content & Community — FAQ, Articles, Team, Contact

### FAQ — MED

Layout: bg aiox-cream (standalone section); headline clamp(2.2rem, 7vw, 6rem)
Accordion: dividers divide-y divide-dark/[0.08]; active bg aiox-dark/[0.03]; number badge h-6 w-6 bg-lime text-dark; toggle icon Plus rotates 45deg on open; default open first item (id='01')

```
interface FAQ {
  id: string   // "01"-"06"
  q: string
  a: string
}
```

### Articles — MED

Layout: grid md:grid-cols-3 gap-px; gap trick bg-white/[0.06]; image aspect 16/9
Card Interactions: image hover scale-105 duration-500; border hover white/[0.06] → white/15; title hover white → aiox-neon

```
interface Article {
  date: string
  category: string
  author: string
  authorTitle: string
  title: string
  excerpt: string
}
```

### Team — MED

Portrait Cards: grid sm:grid-cols-2 max-w-3xl; gap trick gap-px bg-black/[0.06]; image aspect 3/4; meta bar ID[num] + country/year
CTA Banner: bg aiox-black with AccentButton; pattern full-width dark block inside light section

### Contact — MED

Layout: grid md:grid-cols-2 gap-10 md:gap-16; variant light (SectionShell)
Form: container bg-white border black/[0.06]; labels 10px mono bold uppercase; focus border-aiox-neon; submit full-width bg-black text-white
Left Panel: checklist Check icon + mono items; quote QuoteBlock variant=dark in black box; social proof AvatarStack + 5 stars

## 08 — Design Patterns — Recurring Techniques

### Hairline Grid (gap-px) — LOW

Parent has colored background + gap-px. Children have opaque background. The 1px gap reveals the parent color as grid lines.

```
// Dark variant
<div className="grid gap-px bg-white/[0.06]">
  <div className="bg-aiox-black">...</div>
</div>

// Light variant
<div className="grid gap-px bg-black/[0.06]">
  <div className="bg-aiox-off-white">...</div>
</div>
```

Used in: Testimonials (lg:grid-cols-4), Articles (md:grid-cols-3), Team (sm:grid-cols-2), HowItWorks (md:grid-cols-3 post-launch)

### Ticker & Marquee — LOW

```
@keyframes ticker {
  0% { transform: translateX(0); }
  100% { transform: translateX(-50%); }
}
@keyframes ticker-reverse {
  0% { transform: translateX(-50%); }
  100% { transform: translateX(0); }
}
@keyframes marquee {
  0% { transform: translateX(0); }
  100% { transform: translateX(-50%); }
}
```

Durations: ticker 30s linear infinite; ticker-reverse 35s linear infinite; marquee 20s linear infinite

Usage: HeroSection logo ticker (cream bg); PainPoints dual tickers (opposite dirs); TechStack tech marquee

### Mono Label System — LOW

```
font-family: Roboto Mono
font-size: 10-11px
text-transform: uppercase
letter-spacing: 0.15em – 0.2em
font-weight: 400-700
```

Variants: section number [01] lime/black 11px; section label Label_ white/40 or muted-smoke; meta text dates/roles/categories white/20-50; stat labels 10px tracking-[0.2em]

### Staircase Pattern — MED

```
// HowItWorks: vertical offset
marginTop: isMobile ? '24px' : `${i * 50 + 24}px`

// WhoWeAre: horizontal offset
paddingLeft: `${i * 6}%`
```

### Framer Motion Reveals — LOW

```
// Fade-up (most common)
initial={{ opacity: 0, y: 20-40 }}
whileInView={{ opacity: 1, y: 0 }}
viewport={{ once: true }}
transition={{ duration: 0.6-0.7 }}

// Staggered children
transition={{ delay: i * 0.04-0.1 }}

// Scale reveal (hero video)
initial={{ opacity: 0, scale: 0.97 }}
animate={{ opacity: 1, scale: 1 }}
```

### Dark/Light Section Alternation — LOW

LP alternates between dark (#050505) and light (#F5F4E7) sections. Some sections (PainPoints, FAQ, ROICalculator) use standalone backgrounds outside SectionShell for custom layouts.

| Section | Background |
| --- | --- |
| Navbar | dark/95 (fixed) |
| Hero | dark |
| WhoWeAre | light |
| PainPoints | dark → light |
| ROICalculator | cream |
| Services | dark |
| HowItWorks | light |
| CustomerStory | dark |
| Testimonials | light |
| TechStack | dark |
| Team | light |
| Pricing | dark |
| FAQ | cream |
| Articles | dark |
| Contact | light |
| Footer | dark |
