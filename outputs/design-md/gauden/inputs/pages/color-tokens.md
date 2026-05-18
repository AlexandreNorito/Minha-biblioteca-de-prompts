# Color Tokens — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

A paleta da marca opera em **três camadas**: neutros que sustentam, cores
de linha que identificam cada estilo, e cores de expressão que dão vida às
campanhas.

---

## 01 — Neutros Institucionais

Sustentam a marca. Toda peça começa aqui.

| Token | Hex | RGB | Role |
|---|---|---|---|
| `--ink` (Gauden Black) | `#14110C` | 20 17 12 | Tinta — wordmark, texto, fundo dark |
| `--ink-soft` | `#2A2620` | 42 38 32 | Tinta suave — caixa dark interna |
| `--cream` (Cream Label) | `#F6F1E6` | 246 241 230 | Surface clara · texto inverso em dark |
| `--paper` | `#EFE9DC` | 239 233 220 | Canvas — fundo principal |
| `--paper-2` (Paper Dark) | `#E6DFCF` | 230 223 207 | Surface alternativa — cards |
| `--line` | `rgba(20,17,12,0.14)` | — | Hairline em fundo claro |
| `--line-dark` | `rgba(246,241,230,0.18)` | — | Hairline em fundo dark |

---

## 02 — Cores de Linha · Label Primária por Estilo

Cada cerveja Gauden tem **uma cor exclusiva**. Quando uma peça celebra
uma cerveja específica, essa cor é dominante.

| Token | Hex | Estilo · Cerveja |
|---|---|---|
| `--okto` | `#1F6CC9` | Lager · **Oktoberfest** — royal blue |
| `--czech` | `#2A6E1F` | Pilsner · **Czech Pils** — forest |
| `--porter` | `#5C2C18` | Porter · **Chocolate Porter** — cacao |
| `--irish` | `#EB5A1E` | Red Ale · **Irish Red Ale** — orange |
| `--amber` | `#D63A2A` | Amber · **Amber Lager** — red |
| `--english` | `#E8217B` | IPA · **English IPA** — magenta |
| `--sevenhops` | `#B5D34A` | American IPA · **7 Hops** — lime ink |
| `--free` | `#4DC9EC` | Sem Álcool · **IPA Free** — sky |
| `--pilsen` | `#F4C115` | Pilsen — golden |
| `--session` | `#9BD32C` | Session IPA — lime |
| `--ipa` | `#2DC9C9` | IPA — teal |

---

## 03 — Cores de Expressão · Acentos de Campanha

Cada cor de linha tem uma **cor parceira** que aparece em arte de
campanha (régua arco-íris, recortes, espirais decorativos).

| Linha | Expressão | Combo |
|---|---|---|
| `--okto` `#1F6CC9` | `--okto-bg` `#D6E3DF` mint | Royal Blue + Mint |
| `--czech` `#2A6E1F` | `--czech-bg` `#B3D34A` lime | Forest + Lime |
| `--porter` `#5C2C18` | `--porter-bg` `#2DB5A9` teal | Cacao + Teal |
| `--irish` `#EB5A1E` | `--irish-2` `#A8D44A` lime | Orange + Lime |
| `--amber` `#D63A2A` | `#14224E` navy | Red + Navy |
| `--english` `#E8217B` | `#B5D34A` lime ink | Magenta + Lime ink |
| `--sevenhops` `#B5D34A` | `#4DC9EC` sky | Lime ink + Sky |
| `--free` `#4DC9EC` | `--cream` `#F6F1E6` | Sky + Cream |

---

## 04 — Régua Arco-Íris

Faixa horizontal de ~6px que **combina as cores de linha em sequência**.

- **Uso restrito:** borda inferior das **fotos de apoio** em peças de
  campanha
- **Acento** — não usar como faixa decorativa em qualquer lugar
- Mantém todas as cores em saturação plena, sem gradiente entre elas

---

## 05 — Approved Contrast Pairs

| FG | BG | Role |
|---|---|---|
| `--ink` `#14110C` | `--paper` `#EFE9DC` | Default reading — ink on paper |
| `--cream` `#F6F1E6` | `--ink` `#14110C` | Dark mode · hero — cream on ink |
| `--ink` | `--pilsen` `#F4C115` | Pilsen label |
| `--cream` | `--okto` `#1F6CC9` | Oktoberfest label |
| `--cream` | `--czech` `#2A6E1F` | Czech Pils label |
| `--cream` | `--porter` `#5C2C18` | Porter label |
| `--ink` | `--irish` `#EB5A1E` | Irish Red label |
| `--cream` | `--amber` `#D63A2A` | Amber label |
| `--cream` | `--english` `#E8217B` | English IPA label |
| `--ink` | `--sevenhops` `#B5D34A` | 7 Hops label |
| `--ink` | `--free` `#4DC9EC` | IPA Free label |

---

## 06 — Status Tokens (UI / digital)

Derivados para uso em produto digital:

| Token | Hex | Role |
|---|---|---|
| `--success` | `#2A8A3A` | Confirmação positiva |
| `--error` | `#D63A2A` (= `--amber`) | Erro · destructive |
| `--info` | `#1F6CC9` (= `--okto`) | Mensagem informativa |
| `--warning` | `#F4C115` (= `--pilsen`) | Atenção |
