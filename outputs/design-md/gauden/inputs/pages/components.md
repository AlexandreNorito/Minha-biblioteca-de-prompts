# Components — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

Lockups, badges, botões, neck labels e selos institucionais — peças
prontas para uso em qualquer ponto de contato.

## 01 — Buttons

### Primary

```
[ Conheça a linha → ]
```

- Fundo: `--ink` `#14110C`
- Texto: `--cream` `#F6F1E6`
- Padding: 14×24
- Radius: `--r-sm` 6px
- Font: Montserrat 700 · 14px · UPPER · tracking +6%
- Sufixo: seta `→` com gap 8px
- Hover: `transform: translateY(-1px)` + shadow leve
- Active: `transform: translateY(0)` sem shadow

> Exemplos canônicos: `Conheça a linha →` · `Compre agora →`

### Secondary

```
[ Saiba mais → ]
```

- Fundo: transparente
- Borda: `1px solid var(--line)` (`rgba(20,17,12,0.14)`)
- Texto: `--ink`
- Padding: 14×24
- Radius: 6px
- Hover: `border-color: var(--ink)` (sólido)

> Exemplos: `Saiba mais →` · `Onde encontrar →`

### Ghost

- Sem borda
- Texto: `--ink` · weight 700
- Underline no hover
- Padding lateral 0

### Destructive

- Fundo: `--amber` `#D63A2A`
- Texto: `--cream`
- Demais regras = Primary

### Sizes

| Size | Padding | Font-size |
|---|---|---|
| Small | 8×16 | 12px |
| Medium (default) | 14×24 | 14px |
| Large | 18×32 | 16px |

### States

`default · hover · focus · focus-visible · active · loading · disabled`

- Loading: spinner inline à esquerda do label (`--cream` em primary)
- Disabled: `opacity: 0.4` · `pointer-events: none`

---

## 02 — Neck Label · Selo de Pack

Pequeno selo retangular no topo das embalagens / cards de produto.

```
┌──────────────────┐
│  GAUDEN PILSEN   │
│  600 ml · 4.7%   │
└──────────────────┘
```

| Campo | Style |
|---|---|
| Marca + Linha | Anton 32px UPPER · ink ou cream conforme contraste |
| Meta | Montserrat 700 · 11px · tracking +18% · UPPER |
| Background | Cor de linha do estilo (ex: `--pilsen`) |
| Radius | `--r-sm` 6px |
| Padding | 16×20 |

### Variantes canônicas

| Neck label | BG | FG |
|---|---|---|
| `GAUDEN PILSEN · 600 ml · 4.7% vol` | `--pilsen` `#F4C115` | `--ink` |
| `GAUDEN IPA · 600 ml · 6.0% vol` | `--ipa` `#2DC9C9` | `--ink` |
| `GAUDEN ENGLISH IPA · 600 ml · 7.1% vol` | `--english` `#E8217B` | `--cream` |

---

## 03 — Selo "× Experience × · Since 2007"

Assinatura institucional curta. Aparece em pack, rodapé, materiais
secundários.

```
× Experience ×
SINCE 2007
```

| Campo | Style |
|---|---|
| `× Experience ×` | Anton 24px UPPER · tracking +4% |
| `SINCE 2007` | Montserrat 700 · 10px · tracking +20% · UPPER |
| Layout | empilhado (vertical) ou inline (`× Experience × · Since 2007`) |
| Color | `--ink` em paper · `--cream` em ink/cor de linha |

---

## 04 — Badges

| Badge | BG | FG | Use |
|---|---|---|---|
| Default | `--paper-2` | `--ink` | Tag neutra |
| Brand | `--ink` | `--cream` | Destaque institucional |
| Linha (ex: Pilsen) | `--pilsen` | `--ink` | Filtro de estilo |
| Status — Disponível | `--success` `#2A8A3A` | `--cream` | Estoque |
| Status — Esgotado | `--amber` | `--cream` | Out of stock |

- Padding: 4×10
- Radius: `--r-sm` 6px
- Font: Montserrat 700 · 11px · UPPER · tracking +18%

---

## 05 — Cards

### Default Card

- BG: `--cream`
- Borda: `1px solid var(--line)`
- Radius: `--r-md` 10px
- Padding: 24
- Title: Anton h3 32px UPPER
- Body: Montserrat 500 · 16px · 1.55
- Eyebrow opcional acima do título

### Brand Line Card (destaque por estilo)

Default Card + **borda lateral esquerda** de 4px na cor da linha:
`border-left: 4px solid var(--okto);`

### Hero Card (campanha)

- BG: cor de linha sólida (ex: `--okto`)
- Texto: `--cream`
- Radius: `--r-lg` 18px
- Title: Display 88px UPPER
- Padding: 56×56

---

## 06 — Lockup Component

(Ver `logo.md` para regras completas.)

| Slot | Style |
|---|---|
| Mark | espiral 22×22 (escalável) |
| Name | "GAUDEN" · Montserrat 800 · tracking +4% |
| Line | "× EXPERIENCE ×" · Montserrat 600 · tracking +6% |
| Gap | 12px entre slots |

---

## 07 — Rainbow Rule Component

Faixa horizontal de 6px com as cores de linha em sequência.

```css
.rainbow-rule {
  display: flex;
  height: 6px;
  width: 100%;
}
.rainbow-rule > span { flex: 1; }
.rainbow-rule .pilsen { background: var(--pilsen); }
.rainbow-rule .session { background: var(--session); }
.rainbow-rule .ipa { background: var(--ipa); }
.rainbow-rule .czech { background: var(--czech); }
.rainbow-rule .english { background: var(--english); }
.rainbow-rule .irish { background: var(--irish); }
.rainbow-rule .amber { background: var(--amber); }
.rainbow-rule .okto { background: var(--okto); }
.rainbow-rule .porter { background: var(--porter); }
.rainbow-rule .free { background: var(--free); }
.rainbow-rule .sevenhops { background: var(--sevenhops); }
```

**Uso:** APENAS na borda inferior de fotografia de apoio em peças de
campanha. Nunca como faixa decorativa solta.

---

## 08 — Inputs (Forms)

| Campo | Style |
|---|---|
| Input bg | `--cream` |
| Input border | `1px solid var(--line)` |
| Input border focus | `1px solid var(--ink)` + `box-shadow: 0 0 0 3px rgba(20,17,12,0.1)` |
| Input radius | `--r-sm` 6px |
| Input padding | 12×16 |
| Label | Montserrat 700 · 11px · UPPER · tracking +18% |
| Helper text | Montserrat 500 · 13px · `--color-text-muted` |
| Error text | Montserrat 500 · 13px · `--amber` |
