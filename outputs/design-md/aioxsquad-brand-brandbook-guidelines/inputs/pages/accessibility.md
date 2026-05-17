# Accessibility — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/accessibility

◤ Accessibility · contrast · focus · motion · type floors — AIOX/A11Y/V1

## CONTRAST — APPROVED PAIRS — WCAG AA (4.5:1 NORMAL · 3:1 LARGE) — 8 COMBOS

| Sample | Ratio | Status |
| --- | --- | --- |
| AIOX | 16.9:1 | ✓ AAA |
| AIOX | 16.9:1 | ✓ AAA |
| AIOX | 18.4:1 | ✓ AAA |
| AIOX | 18.4:1 | ✓ AAA |
| BODY TEXT | 16.8:1 | ✓ AAA |
| MUTED | 7.1:1 | ✓ AA |
| DIM-LARGE | 3.3:1 | ✓ LARGE |
| DO NOT | 1.1:1 | ✗ FAIL |

## FOCUS — VISIBLE RING — KEYBOARD NAV — 2PX + 6PX GLOW

▲ DEPLOY — // DEFAULT

All interactive elements **must** render a visible focus ring · 2px solid lime · 3px offset · 6px soft glow. **Never** outline:none without replacement. Tab order must follow reading order.

## TYPE — MIN-SIZE TABLE — READABILITY FLOOR — NEVER BELOW 12PX

| Size | Sample | Use | Status |
| --- | --- | --- | --- |
| 10px | Operator squad v4.1 | metadata · mono only | ⚠ MONO |
| 12px | Operator squad v4.1 | labels · captions | ✓ OK |
| 14px | Operator squad v4.1 | ui body | ✓ OK |
| 16px | Operator squad v4.1 | body default | ✓ FLOOR |
| 44px | Hit target min. | touch target | ✓ FLOOR |

## / MOTION — REDUCE

### Respect prefers-reduced-motion

All animations ship with a `@media (prefers-reduced-motion: reduce)` fallback. Disable: scan lines · glitches · auto-tickers · parallax.

Keep: state transitions ≤ 200ms, opacity/color fades.

## / TOUCH TARGETS

### 44 × 44 minimum

All tappable elements → `min-width: 44px` · `min-height: 44px` — even if visual is smaller, extend hit-area with padding.

Spacing between targets: `≥ 8px`

## / SCREEN READERS

### Semantic + ARIA

Mono-style labels like `◤ 001` or `▲ DEPLOY` must have `aria-label` equivalents in plain english.

Decorative elements → `aria-hidden="true"`.

## ◤ ACCESSIBILITY — NON-NEGOTIABLE RULES

1. **Contrast** — Body text: min 4.5:1. Large (≥24px bold / 18px regular): min 3:1.
2. **Never use lime on cream or cream on lime** — always pair lime with dark.
3. **Focus must be visible on every interactive** — keyboard + mouse.
4. **Motion** — all auto-play + infinite loops honor prefers-reduced-motion.
5. **Touch** — 44×44 min hit area · 8px min spacing between targets.
6. **Type** — body floor 16px · labels 12px · decorative mono may be 10px with aria-label.
7. **Color is never the only signal** — pair with icon, text or position.
