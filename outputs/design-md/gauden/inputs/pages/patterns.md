# Padrão Espiral — Gauden Brandbook

Source: bundled `Gauden_Design_System__standalone_.html` v1.0

> A espiral se multiplica em padrão — usado como textura de fundo em
> embalagens premium (linha Chopp), em peças sociais e em recortes de
> campanha.

---

## 01 — Variantes

- **Símbolo repetido · dark** — espirais `--ink` sobre fundo claro
- **Símbolo repetido · cor removed** — espirais `--cream` sobre fundo
  dark / cor de linha

## 02 — Uso recomendado

| Contexto | Regra |
|---|---|
| Textura institucional | Opacidade **≤ 25%** em fundos institucionais (paper, ink) |
| Acento de campanha | Em uma seção ou borda — **nunca cobrir o título** |
| Watermark grande | Última camada do layout-mestre, atrás do conteúdo |
| Embalagem premium (Chopp 1 L) | Aplicação plena (≤25%) cobrindo o rótulo |

## 03 — Grid Rule

Sempre alinhar a espiral à grade base.
**Espaçamento mínimo entre espirais:** 1.5× o diâmetro do glyph.

```
   ┌─ 1.5d ─┐
   ●        ●        ●
        ●        ●        ●
   ●        ●        ●
```

## 04 — A Evitar

| ✕ | Regra |
|---|---|
| ✕ | Combinar **mais de duas** variações do padrão na mesma peça |
| ✕ | Padrão sobre **fotografia rica** — só sobre cor sólida ou neutro |
| ✕ | Aumentar a opacidade ao ponto de competir com a tipografia |
| ✕ | Distorcer (skew, rotate diferente, escala não-uniforme) |
| ✕ | Sobrepor padrão a outro padrão (gradient, mesh, etc.) |
| ✕ | Animar individualmente cada espiral (só a textura inteira como bloco) |

## 05 — Exemplos de aplicação

### Watermark institucional

`opacity: 0.12` · espiral em `--ink` · cobre 100% de fundo `--paper`

### Hero campaign

Espiral solo (não padrão) à esquerda do título, escala 240px, opacidade
0.18, cor `--ink` em fundo `--paper`. Serve de **ancoragem visual** sem
competir com a manchete Anton.

### Pack premium (Chopp 1 L)

Padrão repetido em todo o rótulo, opacidade 0.10, `--cream` sobre fundo
`--ink`. Cria textura sutil sob a tipografia hierarquicamente posicionada.

### Social

Borda lateral de stories — padrão em `--cream` sobre cor de linha do
estilo destacado (ex: Czech Pils em `--czech` com espirais em `--cream`).
