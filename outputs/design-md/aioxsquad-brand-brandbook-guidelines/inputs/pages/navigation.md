# Navigation — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/navigation

## 01 — Search Modal (Cmd+K Trigger)

- Trigger: "Open Search" or `⌘K`
- `BbSearchModal` props:
  - `open: boolean`
  - `onOpenChange: (open) => void`
  - `items: BbSearchItem[]`
  - `placeholder?: string`
  - `emptyMessage?: string`

## 02 — Pagination

- Few Pages (5)
- Many Pages (20)
- First Page (prev disabled)
- Returns `null` when `totalPages ≤ 1`
- Single Page (hidden)

## 03 — Breadcrumb

- Default (3 items)
- Deep Nesting (5 items)
- Truncation (`maxLabelLength=20`)

## 04 — Tabs

- `variant="default"` (backward compatible) — Overview / Tokens / Usage
- `variant="smooth"` (animated indicator) — Smooth sliding underline on tab switch — Overview / Metrics / Config / Logs

## 05 — Sidebar

- **Expanded (240px)** — full labels:
  - ◆ AIOX Squad
  - ⊞ Dashboard
  - ⊟ Biblioteca
  - ◈ Produtos
  - ⊕ Leads (12)
  - ◉ Alunos
  - ▢ Repositório
  - ⊜ Mentores
  - ⊙ Relatórios
  - Footer: "AIOX © 2026 — v1.0"
- **Collapsed (icon-only)** — same nav glyphs, no labels

## 06 — Bottom Bar (Mobile Tab Bar)

- ⌂ Home · ♡ Likes (12) · ☰ Menu · ⚑ Saved · ⚙ Config

## Patterns Reference

`SidebarDS` · `BottomBarDS` · `Cmd+K ModalDS` · `BreadcrumbDS` · `PaginationDS` · `TabsDS` · `Settings Panel (PLANNED)` · `StepperDS`
