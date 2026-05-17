# Icons — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/icons

## 01 — Icon Grid

| Size | Use |
|---|---|
| 16px | Inline, tight spaces |
| 24px | Default / UI |
| 32px | Cards, emphasis |
| 48px | Hero, feature |

**Icons in the system:** Check, Close, Plus, Minus, Chevron Right, Chevron Left, Chevron Down, Arrow Right, Search, Sun, Grid, Moon.

## 02 — Usage Rules

1. **Always use 2px stroke width at all sizes.** Maintains visual consistency across the scale.
2. **Round caps and round joins only.** `stroke-linecap: round; stroke-linejoin: round;`
3. **24px viewBox as canonical base.** Scale up/down from `24x24` viewBox.
4. **Stroke only, no fills.** Icons are outline-based. Use `fill: none`.
5. **Use `currentColor` for inheritance.** Icons inherit color from parent text color.
6. **Minimum touch target: 44×44px.** Icons smaller than 24px need padding for accessibility.

## 03 — Color Variants

| Variant | Var |
|---|---|
| Default / Cream | `var(--cream)` |
| Brand / Lime | `var(--lime)` |
| Muted / Dim | `var(--dim)` |
| Error / Destructive | `var(--error)` |
| Info / Blue | `var(--blue)` |
| Warning / Flare | `var(--flare)` |
