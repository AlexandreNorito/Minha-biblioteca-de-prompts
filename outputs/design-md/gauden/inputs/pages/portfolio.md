# Portfólio · Linha de Cervejas — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

O sistema visual aplicado às 11 cervejas da linha Gauden. Cada estilo
tem sua **cor de linha**, sua **cor de expressão pareada**, e segue o
mesmo template de pack + neck label + campanha.

---

## Linha completa

| # | Cerveja | Estilo | Cor Linha | Cor Expressão | Hex Linha | Hex Expressão |
|---|---|---|---|---|---|---|
| 1 | **Pilsen** | Pilsen | Golden | — | `#F4C115` | — |
| 2 | **Session IPA** | Session IPA | Lime | — | `#9BD32C` | — |
| 3 | **IPA** | IPA | Teal | — | `#2DC9C9` | — |
| 4 | **Czech Pils** | Pilsner Tcheca | Forest | Lime | `#2A6E1F` | `#B3D34A` |
| 5 | **Oktoberfest** | Lager Alemã | Royal Blue | Mint | `#1F6CC9` | `#D6E3DF` |
| 6 | **Chocolate Porter** | Porter | Cacao | Teal | `#5C2C18` | `#2DB5A9` |
| 7 | **Irish Red Ale** | Red Ale Irlandesa | Orange | Lime | `#EB5A1E` | `#A8D44A` |
| 8 | **Amber Lager** | Amber | Red | Navy | `#D63A2A` | `#14224E` |
| 9 | **English IPA** | IPA Inglesa | Magenta | Lime ink | `#E8217B` | `#B5D34A` |
| 10 | **7 Hops** | American IPA | Lime ink | Sky | `#B5D34A` | `#4DC9EC` |
| 11 | **IPA Free** | IPA sem álcool | Sky | Cream | `#4DC9EC` | `#F6F1E6` |

---

## Anatomy of a Beer (template canônico)

Cada linha herda a mesma estrutura visual:

```
┌────────────────────────────────────────────────┐
│ [LOCKUP top-left]                              │
│                                                │
│ STYLE PREFIX:        [FOTOGRAFIA               │
│ MANCHETE ANTON       HEROICA DO                │
│ EM UPPERCASE         PRODUTO À                 │
│ ATÉ 8 PALAVRAS.      DIREITA]                  │
│                                                │
│ Body Montserrat                                │
│ 500 · 16/1.55                                  │
│ origem → processo                              │
│ → convite.                                     │
│                                                │
│ [Neck label: 600 ml · X% vol]                  │
│                                                │
│ ░░░░░ rainbow rule ░░░░░                       │
└────────────────────────────────────────────────┘
   ← cols 1–6 (cor sólida) | cols 7–12 (foto) →
```

---

## Pack Specs

| Field | Style |
|---|---|
| Style prefix | Anton 32px UPPER · ":" no final |
| Manchete | Anton 88–184px UPPER · 0.86 line-height |
| Body | Montserrat 500 · 16px · 1.55 line-height |
| Neck label | Anton wordmark + Montserrat 700 meta |
| Volume + ABV | Montserrat 700 · 11px · UPPER · tracking +18% |

### Exemplo · Oktoberfest

```
OKTOBERFEST:
VIVA A OKTOBERFEST
NA SALA DA SUA CASA.

A Gauden Oktoberfest traz a tradição
alemã em uma puro malte de corpo
elegante e 6,1% de teor alcoólico.
Notas de pão e cereais, equilíbrio
sofisticado e alta refrescância.

GAUDEN OKTOBERFEST
600 ml · 6.1% vol
```

### Exemplo · Czech Pils

```
CZECH PILS:
TRADIÇÃO TCHECA
AGORA NO BRASIL.

Mergulhe na verdadeira essência da
Boêmia com a nova Gauden Czech Pils.
Nossa puro malte de 6,1% é uma
homenagem ao estilo mais tradicional
do mundo. Com lúpulo Saaz clássico,
ela traz o sabor marcante e o amargor
equilibrado que você procura.

GAUDEN CZECH PILS
600 ml · 6.1% vol
```

### Exemplo · Chocolate Porter

```
CHOCOLATE PORTER:
CHOCOLATE INTENSO.
SABOR INCRÍVEL.

[Body narrativo: origem → processo → convite]

GAUDEN CHOCOLATE PORTER
600 ml · X.X% vol
```

---

## Extensões

| Formato | Especificidade |
|---|---|
| Garrafa 600ml | Pack canônico — pinta da campanha |
| Chopp 1L | Padrão espiral pleno no rótulo (opacidade 10%) — premium |
| Lata | Versão compacta — wordmark + style prefix + ABV no topo |
| Combo / Sortido | Caixa com lockup central + régua arco-íris embaixo + linhas listadas em colunas verticais |
| Social (1080×1080) | Layout-mestre 50/50 vira pilha — manchete em cima, produto embaixo |
| Stories (1080×1920) | Mesma pilha + watermark espiral atrás |
