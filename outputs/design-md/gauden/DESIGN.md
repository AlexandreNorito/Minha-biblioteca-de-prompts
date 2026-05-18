---
name: Gauden
url: https://gauden.example      # canonical brand URL — TBD
version: 1.0
edition: 2026
language: pt-BR
archetype: editorial-warm-condensed
origin: Curitiba — PR · Desde 2007
category: Cerveja Artesanal · Puro Malte
tagline: "× Experience × — Uma experiência em cada gole."

colors:
  # Brand identity (the color a person names when describing the brand)
  primary: "#14110C"           # Gauden Black — institutional ink, wordmark
  primary_rgb: "20,17,12"
  paper: "#EFE9DC"             # canvas — warm cream
  paper_alt: "#E6DFCF"         # paper-2 — secondary surface
  cream: "#F6F1E6"             # label cream — inverse text on dark
  ink: "#14110C"
  ink_soft: "#2A2620"
  line: "rgba(20,17,12,0.14)"  # hairline border on light surfaces
  line_dark: "rgba(246,241,230,0.18)"  # hairline on ink/dark surfaces

  # Brand line palette — one color per beer style (label primary)
  pilsen: "#F4C115"            # Pilsen — golden
  session: "#9BD32C"           # Session IPA — lime
  ipa: "#2DC9C9"               # IPA — teal
  czech: "#2A6E1F"             # Czech Pils (Pilsner) — forest
  english: "#E8217B"           # English IPA — magenta
  irish: "#EB5A1E"             # Irish Red Ale — orange
  amber: "#D63A2A"             # Amber Lager — red
  okto: "#1F6CC9"              # Oktoberfest (Lager) — royal blue
  porter: "#5C2C18"            # Chocolate Porter — cacao
  free: "#4DC9EC"              # IPA Free (sem álcool) — sky
  sevenhops: "#B5D34A"         # 7 Hops (American IPA) — lime ink

  # Expression accents — paired with each line color (used in campaign art)
  czech_bg: "#B3D34A"          # Czech Pils expression — lime
  okto_bg: "#D6E3DF"           # Oktoberfest expression — mint
  porter_bg: "#2DB5A9"         # Porter expression — teal
  irish_alt: "#A8D44A"         # Irish Red Ale expression — lime
  amber_alt: "#14224E"         # Amber Lager expression — navy
  english_alt: "#B5D34A"       # English IPA expression — lime ink
  free_alt: "#F6F1E6"          # IPA Free expression — cream
  sevenhops_alt: "#4DC9EC"     # 7 Hops expression — sky

  # Status (UI / digital surfaces — derived for product use)
  success: "#2A8A3A"
  error: "#D63A2A"
  info: "#1F6CC9"
  warning: "#F4C115"

contrast_pairs:
  - { fg: "#14110C", bg: "#EFE9DC", role: "default reading — ink on paper" }
  - { fg: "#F6F1E6", bg: "#14110C", role: "dark mode / hero — cream on ink" }
  - { fg: "#14110C", bg: "#F4C115", role: "Pilsen label" }
  - { fg: "#F6F1E6", bg: "#1F6CC9", role: "Oktoberfest label" }
  - { fg: "#F6F1E6", bg: "#2A6E1F", role: "Czech Pils label" }
  - { fg: "#F6F1E6", bg: "#5C2C18", role: "Porter label" }
  - { fg: "#14110C", bg: "#EB5A1E", role: "Irish Red label" }
  - { fg: "#F6F1E6", bg: "#D63A2A", role: "Amber label" }
  - { fg: "#F6F1E6", bg: "#E8217B", role: "English IPA label" }
  - { fg: "#14110C", bg: "#B5D34A", role: "7 Hops label" }
  - { fg: "#14110C", bg: "#4DC9EC", role: "IPA Free label" }

typography:
  display_xl:
    fontFamily: "Anton"
    fontWeight: 400
    fontSize: "clamp(96px, 17vw, 260px)"
    lineHeight: 0.98
    letterSpacing: "-0.005em"
    case: "UPPERCASE"
    role: "Cover hero wordmark (cover only)"
  display:
    fontFamily: "Anton"
    fontWeight: 400
    fontSize: "184px"          # tracking 0.86 line-height, -0.5% letter-spacing
    lineHeight: 0.86
    letterSpacing: "-0.005em"
    case: "UPPERCASE"
    role: "Hero display — campaign manchete"
  h1:
    fontFamily: "Anton"
    fontWeight: 400
    fontSize: "72px"           # clamp(44px, 6vw, 96px) on responsive
    lineHeight: 0.88
    case: "UPPERCASE"
    role: "Headline H1 — primary section title"
  h2:
    fontFamily: "Anton"
    fontWeight: 400
    fontSize: "48px"           # clamp(30px, 3vw, 48px)
    lineHeight: 0.92
    case: "UPPERCASE"
    role: "Headline H2 — secondary title"
  h3:
    fontFamily: "Anton"
    fontWeight: 400
    fontSize: "32px"
    lineHeight: 0.95
    case: "UPPERCASE"
    role: "Headline H3 — tertiary title / pack callout"
  lead:
    fontFamily: "Montserrat"
    fontWeight: 500
    fontSize: "18px"           # 20/1.5 in source — 18px also valid
    lineHeight: 1.5
    maxWidth: "60ch"
    role: "Lead paragraph — opening copy"
  body:
    fontFamily: "Montserrat"
    fontWeight: 500
    fontSize: "16px"
    lineHeight: 1.55
    role: "Default body"
  body_default:
    fontFamily: "Montserrat"
    fontWeight: 500
    fontSize: "15px"
    lineHeight: 1.55
    role: "Page body baseline (root)"
  small:
    fontFamily: "Montserrat"
    fontWeight: 500
    fontSize: "14px"
    lineHeight: 1.5
    role: "Small / supporting text"
  eyebrow:
    fontFamily: "Montserrat"
    fontWeight: 700
    fontSize: "11px"
    letterSpacing: "0.18em"
    case: "UPPERCASE"
    role: "Eyebrow / over-line label"
  caption:
    fontFamily: "Montserrat"
    fontWeight: 700
    fontSize: "11px"
    letterSpacing: "0.18em"
    case: "UPPERCASE"
    role: "Caption — pack measurements, technical labels"
  meta:
    fontFamily: "Montserrat"
    fontWeight: 700
    fontSize: "10px"
    letterSpacing: "0.2em"
    case: "UPPERCASE"
    role: "Meta key — section cover meta keys"
  meta_value:
    fontFamily: "Montserrat"
    fontWeight: 600
    fontSize: "14px"
    role: "Meta value"
  mono:
    fontFamily: "ui-monospace, 'SF Mono', Menlo, monospace"
    fontSize: "12px"
    letterSpacing: "0.02em"
    role: "Technical reference / code"

font_weights:
  regular: 400
  medium: 500
  semibold: 600
  bold: 700
  black: 800

font_families:
  display: "Anton, Impact, sans-serif"   # condensed display, single weight
  body: "Montserrat, system-ui, sans-serif"
  mono: "ui-monospace, 'SF Mono', Menlo, monospace"

rounded:
  sm: 6
  md: 10
  lg: 18

spacing:
  scale_px: [4, 8, 12, 16, 24, 32, 40, 56, 80, 110]   # observed in source
  section_padding_y: 110          # vertical breathing for sections
  page_padding_x: 56              # desktop margin
  grid_gutter: 24
  grid_columns: 12
  baseUnit: 4

breakpoints:
  mobile_max: 767
  tablet_min: 768
  desktop_min: 1200
  content_max_width: 1360

layers:
  base: 0
  pattern_watermark: 1
  content: 10
  sticky_nav: 100
  dropdown: 200
  overlay: 300
  modal: 400
  toast: 500

components:
  button_radius: 6
  button_radius_pill: "full"
  card_radius: 10
  badge_radius: 6
  card_radius_lg: 18

semantic_aliases:           # shadcn/ui token mapping for Gauden defaults
  background: --paper
  foreground: --ink
  primary: --ink                  # button primary fills with ink on paper
  primary-foreground: --cream
  secondary: --paper-2
  muted: --paper-2
  muted-foreground: rgba(20,17,12,0.55)
  accent: --pilsen                # default highlight when a brand line isn't picked
  accent-foreground: --ink
  destructive: --amber            # red-amber = destructive
  border: --line
  input: --line
  ring: rgba(20,17,12,0.4)
  card: --cream
  card-foreground: --ink
  popover: --cream
  popover-foreground: --ink

preview_tokens:
  button_primary_bg: "#14110C"
  button_primary_text: "#F6F1E6"
  button_primary_border: "#14110C"
  button_secondary_bg: "transparent"
  button_secondary_text: "#14110C"
  button_secondary_border: "rgba(20,17,12,0.14)"
  button_ghost_bg: "transparent"
  button_ghost_text: "#14110C"
  button_destructive_bg: "#D63A2A"
  button_destructive_text: "#F6F1E6"
  surface_bg: "#F6F1E6"
  page_bg: "#EFE9DC"
  link: "#14110C"
  text: "#14110C"
  text_muted: "rgba(20,17,12,0.55)"
  border: "rgba(20,17,12,0.14)"
  focus_ring: "rgba(20,17,12,0.4)"

logo:
  symbol: "spiral mark — single proprietary glyph"
  wordmark: "GAUDEN (condensed custom-built)"
  lockup: "spiral mark + 'GAUDEN' + '× EXPERIENCE ×' signature"
  safe_space: "≥ 25% of mark width on all sides"
  min_size_digital: "24 × 24 px"
  min_size_print: "10 mm"
  variants:
    - "Lockup horizontal — primary"
    - "Wordmark — secondary"
    - "Negative (white) — for dark / colored backgrounds"
  background_rules:
    - "Brand color allowed (e.g. paper, ink)"
    - "Expression color allowed (line accent)"
    - "Never on busy photography — only solid color or neutral"
  forbidden:
    - "Rotate / tilt the lockup"
    - "Distort proportions"
    - "Place on noisy backgrounds"
    - "Redraw, reconstruct, or simplify the spiral"

brand:
  origin: "Curitiba — PR · Desde 2007"
  positioning: "Tradição com sotaque curitibano. Cervejas puro malte com inspiração nas escolas clássicas — alemã, tcheca, irlandesa — feitas com matéria-prima brasileira."
  personality: "Calorosa, colorida, direta. Visual ousado, tipografia condensada, cores saturadas. Cada estilo tem sua identidade — todos compartilham o mesmo DNA."
  promise: "Mais do que uma cerveja, um momento. A marca aparece sempre acompanhada da assinatura '× Experience ×' — o convite para viver o ritual."
  archetypes:
    everyman: 40     # acessibilidade, brinde compartilhado, mesa cheia
    creator: 30      # construção artesanal, autoria do mestre cervejeiro
    explorer: 30     # variedade de estilos, escolas clássicas, mapa de sabores

voice:
  pillars:
    - "Direta — frases curtas, ritmo de brinde."
    - "Calorosa — convite para o ritual, não palestra técnica."
    - "Curitibana — humor regional sem sarcasmo, trocadilho leve."
  patterns:
    headline_imperative:
      example: "Viva a Oktoberfest na sala da sua casa."
      structure: "verbo no imperativo + benefício concreto + local cotidiano"
      max_words: 8
    headline_affirmation:
      example: "Sorte sua poder provar."
      structure: "inverte a expectativa, bom humor sem ironia ácida"
      use: "lançamento, ativação"
    description_sensorial:
      example: "Chocolate intenso. Sabor incrível."
      structure: "sensação principal + qualidade — pontos finais marcam o ritmo"
      use: "legendas, cards de produto"
    body_narrative:
      example: "Tradição tcheca agora no Brasil."
      structure: "origem → processo → convite (sinta / descubra / abra uma)"
      use: "corpo de campanha, página de produto"
  do:
    - "Frases curtas, ritmo de brinde."
    - "Trocadilho leve, regional."
    - "Notas claras, palavras concretas."
    - "Origem + processo + convite."
    - "Verbos no imperativo: viva, abra, descubra, sinta, prove, junte."
  dont:
    - "Texto técnico, jargão de cervejaria."
    - "Promessa que não cumpre."
    - "Adjetivos vazios — 'delicioso', 'incrível' isolados."
    - "Listas longas de ingredientes."
    - "Ironia ácida, sarcasmo, hype de marketing."

motion:
  ethos: "Movimento direto e celebratório — sem motion gratuito. Brinde, espuma, chama de fogão de mesa."
  patterns:
    - { name: "Pour-in", duration: "1.2s", role: "Entrada de hero — espuma sobe do bottom" }
    - { name: "Toast-in", duration: "0.6s", role: "Brinde clink — pop de scale + glow no símbolo" }
    - { name: "Spiral spin", duration: "8s loop", role: "Watermark sutil — espiral gira devagar" }
    - { name: "Label slide", duration: "0.4s", role: "Troca entre linhas (Pilsen → Czech → IPA…)" }
    - { name: "Foam fade", duration: "0.3s", role: "Hover de produto — espuma surge no topo" }

imagery:
  hero: "Fotografia heroica do produto à direita do layout-mestre, sempre com luz natural quente e mesa montada — vidro, pingos, baixa profundidade."
  moment: "Cenas de ritual cotidiano — pessoas brindando, mesa cheia, bar de bairro curitibano, varanda. Nunca estúdio asséptico."
  rainbow_rule: "Régua arco-íris aparece na borda inferior das fotos de apoio — acento de campanha."
  forbidden:
    - "Cervejas genéricas de banco de imagens sem identidade visual Gauden."
    - "Cenas frias, hospitalares, estúdio branco sem contexto."
    - "Padrão espiral sobreposto a fotografia rica — só sobre cor sólida ou neutro."

pattern_usage:
  watermark: "Espiral repetida em opacidade ≤25% como textura institucional — só em fundos sólidos / neutros."
  campaign_accent: "Padrão em recortes laterais ou borda — nunca cobrir o título."
  grid_rule: "Espaçamento mínimo entre espirais = 1.5× o diâmetro do glyph."
  combine_max: 2     # max variations of the pattern per peça

layout_master:
  rule: "Divisão 50/50 — esquerda cor sólida com título Anton, direita fotografia heroica do produto."
  desktop_columns: 12
  left_cols: "1–6"
  right_cols: "7–12"
  vertical_fallback: "story / feed — pilha 1 acima do outro"
  hierarchy:
    - "Lockup top-left"
    - "Manchete Anton (4–6 linhas, viúvas naturais)"
    - "Foto de momento + body Montserrat"
    - "Produto hero à direita"
    - "Espiral em watermark grande"

manifesto: |
  UMA EXPERIÊNCIA EM CADA GOLE.

  A Gauden nasceu em Curitiba para celebrar o ritual da cerveja artesanal —
  a tradição puro malte, a mesa cheia, o brinde compartilhado.

  Não acreditamos em cerveja como produto. Acreditamos em cerveja como
  momento. O que entra no copo importa; o que acontece em volta da mesa
  importa mais.

  Cada estilo tem sua identidade. Todos compartilham o mesmo DNA:
  matéria-prima brasileira, escola clássica, sotaque curitibano,
  convite aberto.

  × Experience × — mais do que uma cerveja. Um motivo pra você parar tudo
  e brindar.
---

# Gauden — DESIGN.md

> **Brand Identity System · v1.0 · 2026 Edition**
> _× Experience × — Uma experiência em cada gole._
> _Curitiba — PR · Desde 2007_

Documento canônico do sistema visual Gauden — paleta, tipografia, layout,
voz, componentes e regras de aplicação. Use como brief para qualquer
agente (LLM ou humano) produzindo material Gauden.

---

## 1. Visual Theme — Editorial Warm, Condensed Bold

Sistema **editorial-quente** com tipografia condensada Anton em caixa
alta para títulos e Montserrat 500 para leitura. Paleta de **neutros
cremes/papel** (`#EFE9DC` / `#F6F1E6`) ancorada em **ink near-black**
(`#14110C`), com **11 cores de linha** — uma por estilo de cerveja —
funcionando como acentos vibrantes em meio ao neutro.

**Archetype:** `editorial-warm-condensed`. A energia é a de uma carta
de cerveja artesanal — papel pardo, tipografia heavy, fotografia
heroica, régua arco-íris no rodapé.

**Don'ts (brand-specific):**

- Não use fundo branco puro (`#FFFFFF`) — Gauden vive em paper (`#EFE9DC`)
  ou ink (`#14110C`). Branco puro fere a temperatura da marca.
- Não combine duas cores de linha no mesmo bloco (ex: Czech + IPA juntas).
  Uma cor de linha = um estilo = uma peça. Régua arco-íris é a exceção,
  e só na borda.
- Não use radius > 18px. O sistema é editorial; cantos arredondados grandes
  remetem a UI de SaaS e quebram o ritmo.
- Não escreva títulos em title case ou lowercase — **Anton sempre em
  UPPERCASE**.
- Não escreva manchete com mais de 8 palavras.
- Não use Roboto, Inter, Helvetica como fallback de display — Anton →
  Impact → sans-serif. Sem exceções.

---

## 2. Color — Three Layers (Neutros / Linha / Expressão)

A paleta opera em **três camadas**:

### Neutros institucionais

| Token | Hex | Role |
|---|---|---|
| `--paper` | `#EFE9DC` | Canvas principal — fundo de página, ambiente |
| `--paper-2` | `#E6DFCF` | Surface alternativa — cards, blocos aninhados |
| `--cream` | `#F6F1E6` | Surface clara / texto inverso em dark |
| `--ink` | `#14110C` | Tinta — wordmark, texto, fundo dark |
| `--ink-soft` | `#2A2620` | Tinta suave — caixas dark internas |
| `--line` | `rgba(20,17,12,0.14)` | Linha hairline em fundo claro |

### Cores de linha — label primária por estilo

Cada cerveja Gauden tem **uma cor de label exclusiva**. Ao desenhar uma
peça que celebra uma cerveja específica, essa é a cor dominante.

| Cerveja | Token | Hex | Style |
|---|---|---|---|
| Czech Pils | `--czech` | `#2A6E1F` | Pilsner — forest green |
| 7 Hops | `--sevenhops` | `#B5D34A` | American IPA — lime ink |
| Chocolate Porter | `--porter` | `#5C2C18` | Porter — cacao |
| Oktoberfest | `--okto` | `#1F6CC9` | Lager — royal blue |
| Amber Lager | `--amber` | `#D63A2A` | Amber — red |
| Irish Red Ale | `--irish` | `#EB5A1E` | Red Ale — orange |
| English IPA | `--english` | `#E8217B` | IPA — magenta |
| IPA Free | `--free` | `#4DC9EC` | Sem álcool — sky |
| Pilsen | `--pilsen` | `#F4C115` | Pilsen — golden |
| Session IPA | `--session` | `#9BD32C` | Session — lime |
| IPA | `--ipa` | `#2DC9C9` | IPA — teal |

### Cores de expressão — acentos de campanha (par de cada linha)

Cada cor de linha tem uma **cor parceira** que aparece em arte de campanha
(régua arco-íris, recortes, espirais decorativos).

| Linha | Expressão | Combo |
|---|---|---|
| Czech `#2A6E1F` | `#B3D34A` lime | Forest + Lime |
| Oktoberfest `#1F6CC9` | `#D6E3DF` mint | Royal Blue + Mint |
| Porter `#5C2C18` | `#2DB5A9` teal | Cacao + Teal |
| Irish `#EB5A1E` | `#A8D44A` lime | Orange + Lime |
| Amber `#D63A2A` | `#14224E` navy | Red + Navy |
| English `#E8217B` | `#B5D34A` lime ink | Magenta + Lime |
| 7 Hops `#B5D34A` | `#4DC9EC` sky | Lime + Sky |
| Free `#4DC9EC` | `#F6F1E6` cream | Sky + Cream |

**Régua arco-íris:** combinação livre das cores de linha em uma faixa
horizontal aplicada na **borda inferior das fotos de apoio**. Acento de
campanha — não usar como faixa decorativa em qualquer lugar.

---

## 3. Typography — Anton + Montserrat

**Duas famílias, dois papéis.** Anton ergue os títulos. Montserrat
Medium conduz a leitura.

| Family | Weight | CSS Var | Role |
|---|---|---|---|
| **Anton** | 400 (single) | `--font-display` | H1–H4 sempre UPPERCASE |
| **Montserrat** | 400/500/600/700 | `--font-body` | Body, UI, labels |
| **ui-monospace** | system | `--font-mono` | Code, technical refs |

### Scale

| Token | Size | Line-Height | Use |
|---|---|---|---|
| Display XL | `clamp(96px, 17vw, 260px)` | 0.98 | Cover hero wordmark |
| Display | 184px | 0.86 | Hero campaign manchete |
| H1 | 72px (clamp 44–96) | 0.88 | Page title |
| H2 | 48px (clamp 30–48) | 0.92 | Section title |
| H3 | 32px | 0.95 | Pack callout, tertiary |
| Lead | 18–20px | 1.5 | Opening copy (max 60ch) |
| Body | 16px | 1.55 | Default reading |
| Body Root | 15px | 1.55 | Page body baseline |
| Small | 14px | 1.5 | Supporting copy |
| Eyebrow | 11px / 0.18em / UPPER | — | Over-line label |
| Caption | 11px / 0.18em / UPPER (700) | — | Pack meta (355ml · 6,1%) |
| Meta key | 10px / 0.20em / UPPER (700) | — | Cover meta keys |
| Mono | 12px / 0.02em | — | Technical / code |

**Caixa alta obrigatória** em Display + H1–H3. Letter-spacing apertado
negativo nos display (-0.5%), positivo amplo (+18–20%) em eyebrow / caption.

---

## 4. Spacing & Layout

### Grade base (desktop)

- **12 colunas · gutter 24px · margens externas 56px**
- Largura máxima de conteúdo: **1360px**
- Layout-mestre: esquerda cols 1–6 (cor sólida + título) · direita cols
  7–12 (fotografia heroica)
- Vertical fallback (story / feed): pilha 1 acima do outro

### Escala de spacing (observada)

`4 · 8 · 12 · 16 · 24 · 32 · 40 · 56 · 80 · 110 px`

- Section vertical padding: **110px**
- Page horizontal padding: **56px** desktop, escala em mobile
- Gutter: **24px**

### Breakpoints

- Mobile ≤ 767px
- Tablet ≥ 768px
- Desktop ≥ 1200px

---

## 5. Surfaces, Borders & Radius

### Radius

```
--r-sm: 6px   — badges, neck labels, small chips
--r-md: 10px  — cards, image frames, buttons (default)
--r-lg: 18px  — large cards, hero containers, modals
```

### Borders (hairlines)

- `--line: rgba(20,17,12,0.14)` — separadores e grids em fundo claro
- `--line-dark: rgba(246,241,230,0.18)` — separadores em fundo ink

### Surface stack

- `--paper` (`#EFE9DC`) → ambiente da página
- `--paper-2` (`#E6DFCF`) → cards aninhados, blocos secundários
- `--cream` (`#F6F1E6`) → surface elevada, conteúdo destacado
- `--ink` (`#14110C`) → modo dark, hero panels, side-by-side com paper
- `--ink-soft` (`#2A2620`) → caixa dark interna, separação dentro do dark

---

## 6. Logo, Símbolo & Iconografia

### Símbolo — A Espiral

Marca gráfica única, orgânica e proprietária. Funciona como **ícone,
padrão e selo** em todos os pontos de contato.

- Sempre vetorial — `logo/Gauden-Spiral.svg` (não redesenhe, não simplifique)
- Área mínima: **24×24 px digital** · **10mm impressão**
- Respiro: **≥25% da largura da marca** em todos os lados

### Wordmark

`GAUDEN` em letras **condensadas construídas sob medida**. Sempre
acompanhado da assinatura `× EXPERIENCE ×` nas embalagens.

### Lockup principal

`[espiral] GAUDEN × EXPERIENCE ×`

Horizontal · top-left de toda peça master. Versões: **horizontal
(primário)** · **wordmark sozinho (secundário)** · **negativa branca
(sobre dark/cor)**.

### Iconografia auxiliar

A espiral é o único símbolo proprietário. Ícones UI usam stroke editorial
(2px, currentColor) — mas Gauden prefere **rótulos texto** a ícones
sempre que possível. Cervejaria, não SaaS.

---

## 7. Motion

Motion é **direto e celebratório** — sem efeito gratuito.

| Pattern | Duration | Role |
|---|---|---|
| Pour-in | 1.2s | Entrada de hero — espuma sobe do bottom |
| Toast-in | 0.6s | Brinde "clink" — pop de scale + glow no símbolo |
| Spiral spin | 8s loop | Watermark sutil — espiral gira devagar |
| Label slide | 0.4s | Troca entre linhas (Pilsen → Czech → IPA…) |
| Foam fade | 0.3s | Hover de produto — espuma aparece no topo |

**Vocabulário:** brinde, espuma, vidro, mesa, chama de fogão.
**Sem:** bouncy easing, parallax exagerado, glitch tech, neon glow.

---

## 8. Components

### Buttons

- **Primary** — fundo `--ink` · texto `--cream` · radius 6px · padding 14×24 · weight 700 · sufixo seta `→`
  > Exemplos: `Conheça a linha →` · `Compre agora →`
- **Secondary** — fundo transparente · borda `--line` · texto `--ink`
  > Exemplos: `Saiba mais →` · `Onde encontrar →`
- **Ghost** — sem borda, texto `--ink`, underline no hover
- **Destructive** — fundo `--amber` (`#D63A2A`) · texto `--cream`

### Neck Label (selo de pack)

Pequeno selo retangular no topo das embalagens / cards de produto:

```
GAUDEN PILSEN
600 ml · 4.7% vol
```

- Padrão: cor de linha como fundo · `--cream` ou `--ink` como texto
  (conforme contraste)
- Title: Anton 32px UPPER
- Meta: Montserrat 700 11px tracking +18% UPPER

### Selo "× Experience × · Since 2007"

Selo institucional circular ou em strip — assinatura curta da marca.
Aparece em pack, em rodapé, em selos secundários.

### Cards

Border-radius 10px (md). Fundo `--cream` ou `--paper-2`. Conteúdo:
manchete Anton + body Montserrat + cor de linha na borda lateral
quando se referir a uma linha específica.

### Régua arco-íris

Faixa horizontal de ~6px que combina as cores de linha em sequência.
Uso restrito: **borda inferior das fotos de apoio** em campanha.

---

## 9. Voice, Tone & Brand Narrative

### Posicionamento

_Tradição com sotaque curitibano. Cervejas puro malte com inspiração nas
escolas clássicas — alemã, tcheca, irlandesa — feitas com matéria-prima
brasileira._

### Personalidade

_Calorosa, colorida, direta. Visual ousado, tipografia condensada, cores
saturadas. Cada estilo tem sua identidade — todos compartilham o mesmo
DNA._

### Promessa

`× Experience ×` — mais do que uma cerveja, um momento.

### Manifesto

> Uma experiência em cada gole.
>
> A Gauden nasceu em Curitiba para celebrar o ritual da cerveja
> artesanal — a tradição puro malte, a mesa cheia, o brinde compartilhado.

### Tom

- **Direta** — frases curtas, ritmo de brinde.
- **Calorosa** — convite para o ritual, não palestra técnica.
- **Curitibana** — humor regional sem sarcasmo, trocadilho leve.

### Padrões de copy

| Padrão | Exemplo | Estrutura |
|---|---|---|
| Manchete imperativa | "Viva a Oktoberfest na sala da sua casa." | verbo + benefício + lugar cotidiano (≤8 palavras) |
| Manchete afirmação | "Sorte sua poder provar." | inverte a expectativa, humor sem ironia ácida |
| Descrição sensorial | "Chocolate intenso. Sabor incrível." | sensação + qualidade · pontos finais marcam ritmo |
| Body narrativo | "Tradição tcheca agora no Brasil." | origem → processo → convite (sinta · descubra · abra uma) |

### Vocabulário — use

`Ritual · Brinde · Mesa cheia · Puro malte · × Experience × · Sotaque
curitibano · Tradição · Viva · Abra uma · Sinta · Descubra · Prove ·
Junte · Sala · Varanda · Bar de bairro`

### Ban list — never use

`Delicioso (isolado) · Disruptivo · Revolucionário · Inovador (vazio) ·
Premium (genérico) · Crafted (sem contexto) · Hype · Lifestyle (vazio)`

---

## Agent Prompt Guide

Ao produzir qualquer peça Gauden, o agente deve:

1. **Ancorar em paper.** Fundo de página = `#EFE9DC`. Nunca branco puro.
2. **Escolher UMA cor de linha** (se a peça é de um estilo específico) ou
   ficar nos neutros institucionais. Nunca duas cores de linha juntas.
3. **Trancar todo título em Anton UPPERCASE.** ≤ 8 palavras na manchete.
   Pontos finais para ritmo de brinde.
4. **Body em Montserrat 500.** Não use 400 como peso default.
5. **Lockup top-left** — espiral + GAUDEN + × EXPERIENCE ×. Toda peça.
6. **Layout-mestre 50/50** sempre que houver fotografia: esquerda cor
   sólida + título · direita produto hero.
7. **Régua arco-íris** só na borda inferior de foto de apoio. Nunca como
   decoração geral.
8. **Padrão espiral** ≤25% opacidade, só sobre cor sólida / neutro.
   Nunca sobre fotografia.
9. **Radius máximo 18px** (`--r-lg`). Sem cantos arredondados de SaaS.
10. **Voz: direta, calorosa, curitibana.** Verbos no imperativo. Banimentos
    do ban list em todo output.
11. **Pack callout** = neck label em cor de linha + meta Montserrat 700
    `600 ml · X% vol`.
12. **Motion** apenas se acrescentar — pour-in, toast, label-slide. Nunca
    bouncy, glitch ou parallax.

---

_Source: derivado de `Gauden_Design_System__standalone_.html` v1.0 (Maio
2026) — bundle Canva-like exportado. Texto canônico extraído, tokens
catalogados, regras de uso preservadas, agent guide adicionado para
paridade com o brandbook AIOX._
