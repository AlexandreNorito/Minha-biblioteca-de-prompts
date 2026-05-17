# Templates — AIOX Brandbook (Page Templates)

Source: https://brand.aioxsquad.ai/brandbook/templates

## 01 — Page Shell (Standard Page Shell)

Every brandbook page follows this structure: sticky nav → page header → section dividers → footer.

```html
<!-- Standard page structure -->
<nav class="site-nav">...</nav>
<header class="page-header">...</header>
<div class="section-divider">...</div>
<!-- content sections -->
<footer class="page-footer">...</footer>
```

## 02 — Dashboard Grid (Bento Dashboard — 4 Col)

Asymmetric grid with span-2 and span-3 cells for dashboard layouts.

```html
<!-- Dashboard bento grid -->
<div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 1px;">
  <div style="grid-column: span 3;">Hero</div>
  <div>Stat</div>
  <div style="grid-column: span 2;">Chart</div>
  <div style="grid-row: span 2;">Sidebar</div>
</div>
```

## 03 — Content Grid (Auto-fit)

Responsive grid using `auto-fit` + `minmax` for card layouts. Adapts from 1 to N columns.

```html
<!-- Auto-fit content grid -->
<div class="grid">
  <!-- grid-template-columns: repeat(auto-fit, minmax(340px, 1fr)); -->
  <div class="cell">...</div>
  <div class="cell">...</div>
</div>
```
