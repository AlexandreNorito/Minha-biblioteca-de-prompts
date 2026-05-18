# Typography — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

**Duas famílias, dois papéis.** Anton ergue os títulos. Montserrat Medium
conduz a leitura.

---

## 01 — Display / Headlines

**ANTON Regular** · Variable: Single weight · **Sempre caixa alta**

```
A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
0 1 2 3 4 5 6 7 8 9
```

- `--font-display: "Anton", "Impact", sans-serif`
- Peso único: 400
- `text-transform: uppercase`
- `letter-spacing: 0.005em` (default) · `-0.005em` em display XL

## 02 — Sans / Body

**Montserrat** · Pesos 400 / 500 / 600 / 700 · **500 default**

```
ABCDEFGHIJKLMNOPQRSTUVWXYZ
abcdefghijklmnopqrstuvwxyz
0123456789 !@#$%&*
```

- `--font-body: "Montserrat", system-ui, sans-serif`
- Default weight: **500 (Medium)**
- Regular (400) raro · 600/700 para hierarquia · 800 reservado para
  wordmark dentro de lockup

## 03 — Mono / Technical

**ui-monospace / SF Mono / Menlo**

- `--font-mono: ui-monospace, "SF Mono", Menlo, monospace`
- Tamanho 12px · letter-spacing +2%

---

## Type Scale

| Token | Size | Line-Height | Tracking | Case | Role |
|---|---|---|---|---|---|
| Display XL | `clamp(96px, 17vw, 260px)` | 0.98 | -0.5% | UPPER | Cover hero wordmark |
| Display | 184px | 0.86 | -0.5% | UPPER | "VIVA A OKTOBERFEST NA SALA DA SUA CASA" |
| H1 | 72px (clamp 44–96) | 0.88 | normal | UPPER | "TRADIÇÃO TCHECA AGORA NO BRASIL" |
| H2 | 48px (clamp 30–48) | 0.92 | normal | UPPER | "CHOCOLATE INTENSO. SABOR INCRÍVEL." |
| H3 | 32px | 0.95 | normal | UPPER | "SORTE SUA PODER PROVAR." |
| Lead | 18–20px | 1.5 | normal | sentence | Lead paragraph (max 60ch) |
| Body | 16px | 1.55 | normal | sentence | Default reading |
| Body Root | 15px | 1.55 | normal | sentence | Page baseline (root) |
| Small | 14px | 1.5 | normal | sentence | Supporting copy |
| Eyebrow | 11px | — | +18% | UPPER | Over-line label (700) |
| Caption | 11px | — | +18% | UPPER | Pack meta — "355 ml · Cerveja puro malte · 6,1% vol." (700) |
| Meta key | 10px | — | +20% | UPPER | Cover meta keys (700) |
| Meta value | 14px | — | normal | sentence | Cover meta values (600) |
| Mono | 12px | — | +2% | sentence | Technical / refs |

---

## Exemplos canônicos

### Display

`VIVA A OKTOBERFEST NA SALA DA SUA CASA.`
_Anton 184/0.86 · -0.5% letter-spacing_

### H1

`TRADIÇÃO TCHECA AGORA NO BRASIL.`
_Anton 72/0.88 · ALL CAPS_

### H2

`CHOCOLATE INTENSO. SABOR INCRÍVEL.`
_Anton 48/0.92_

### H3

`SORTE SUA PODER PROVAR.`
_Anton 32/0.95_

### Lead

> Mergulhe na verdadeira essência da Boêmia com a nova Gauden Czech Pils.
> Nossa puro malte de 6,1% é uma homenagem ao estilo mais tradicional do
> mundo. Com lúpulo Saaz clássico, ela traz o sabor marcante e o amargor
> equilibrado que você procura.

_Montserrat 500 · 20/1.5 · max-width 60ch_

### Body

> Uma puro malte de corpo elegante e 6,1% de teor alcoólico. Notas de pão
> e cereais, alta refrescância.

_Montserrat 500 · 16/1.55_

### Small

> Descubra a Gauden Irish Red Ale — equilibrada, refrescante e cheia de
> personalidade. Notas levemente tostadas, caramelo suave e final limpo
> fazem dela perfeita para qualquer momento.

_Montserrat 500 · 14/1.5_

### Caption / Pack meta

`355 ml · Cerveja puro malte · 6,1% vol.` · `Produzido em Curitiba — PR ·
Indústria Brasileira.`

_Montserrat 700 · 11/+18% track · UPPER_

### Brand strip

`Since 2007 · × Experience × · Curitiba · Paraná · Brasil`

---

## Regras

- **Anton sempre UPPERCASE.** Sem exceção.
- **Body default = Montserrat 500.** Não use 400 como peso default — o
  corpo perde presença.
- **Anton tem peso único 400** — não tente usar bold/italic.
- Letter-spacing apertado negativo nos display (-0.5%), positivo amplo
  (+18–20%) em eyebrow / caption.
- Linha-altura colada nos títulos (0.86–0.95) — sensação tipográfica
  editorial, "letreiro de bar".
- Fontes hospedadas localmente (`@font-face` com TrueType). Não substitua
  por Inter ou Helvetica como fallback de display — `Anton → Impact →
  sans-serif`.
