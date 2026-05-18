# Motion — Gauden Brandbook

Source: derived from Gauden v1.0 brand voice + AIOX structure

## 01 — Ethos

Movimento **direto e celebratório** — sem motion gratuito.

Vocabulário: brinde · espuma · vidro · mesa · chama de fogão.

Sem: bouncy easing exagerado · parallax sem propósito · glitch tech ·
neon glow · efeitos de SaaS hipnótico.

## 02 — Patterns

| Name | Duration | Role | Easing |
|---|---|---|---|
| **Pour-in** | 1.2s | Entrada de hero — espuma sobe do bottom enquanto o produto desce | `cubic-bezier(0.25, 0.1, 0.25, 1)` smooth |
| **Toast-in** | 0.6s | Brinde "clink" — pop de scale (1 → 1.05 → 1) + glow rápido no símbolo | `cubic-bezier(0.34, 1.56, 0.64, 1)` spring leve |
| **Spiral spin** | 8s loop | Watermark sutil — espiral gira devagar atrás do conteúdo | `linear` infinito |
| **Label slide** | 0.4s | Troca entre linhas de cerveja (Pilsen → Czech → IPA…) | `cubic-bezier(0, 0, 0.2, 1)` out |
| **Foam fade** | 0.3s | Hover em card de produto — espuma branca aparece no topo | `ease-out` |
| **Rainbow rule sweep** | 0.8s | Régua arco-íris desliza in da esquerda quando entra no viewport | `ease-out` |

## 03 — Duração tokens

| Token | Value | Use |
|---|---|---|
| `--duration-fast` | 0.3s | Hover, foam fade |
| `--duration-base` | 0.6s | Toast-in, default UI transitions |
| `--duration-medium` | 0.8s | Rainbow sweep |
| `--duration-slow` | 1.2s | Pour-in, hero entrance |
| `--duration-loop-slow` | 8s | Spiral spin, ambient loops |

## 04 — Easing tokens

| Token | Value | Use |
|---|---|---|
| `--ease-smooth` | `cubic-bezier(0.25, 0.1, 0.25, 1)` | Default — pour-in, content |
| `--ease-out` | `cubic-bezier(0, 0, 0.2, 1)` | UI exit / decel |
| `--ease-spring-soft` | `cubic-bezier(0.34, 1.56, 0.64, 1)` | Toast-in apenas |
| `--ease-linear` | `linear` | Loops (spiral spin) |

## 05 — Reduced Motion

Quando `@media (prefers-reduced-motion: reduce)`:

- **Pour-in** → fade simples (0.3s opacity)
- **Toast-in** → fade simples
- **Spiral spin** → DESLIGADO (espiral parada)
- **Label slide** → crossfade
- **Foam fade** → instantâneo

## 06 — Anti-patterns

- ✕ Bouncy spring com overshoot maior que 1.1× — Gauden é editorial, não cartoon
- ✕ Parallax background grande
- ✕ Glitch / scanline / hue-rotate
- ✕ Neon glow piscando — só para AIOX, nunca aqui
- ✕ Texto entrando letra-por-letra (Stagger Letters) — quebra ritmo de brinde
