# Forms — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/forms

## 01 — Advanced Form Components

- `BbDateRangePicker` — Select date range
- `BbPhoneInput` — Country/international dial code picker (flag chip)
- `BbFileInput` — Drag & drop or click to browse (`accepted: image/*`)
- `BbInlineEdit` — Click to edit me
- `BbMultiLanguageInput` — Multi-locale toggle (e.g. 🇧🇷 PT, 🇺🇸 EN)
- `BbArrayInput` — Add/remove array entries with counter (e.g. `2/5 items`)

## 02 — Rich Text Editor

- Minimal Toolbar: B I • (bold, italic, bullet)
- Full Toolbar: B I U H1 H2 H3 • 1. 🔗 🖼 `</>`
- Read-Only mode for locked content.

## 03 — Production Roles

- `Field` + `FieldLabel` — Canonical wrapper for form composition
- `Textarea Field` — Multi-line input
- `SegmentedControl` — Pill selector for compact single-choice marketing forms

## 04 — Legacy Compatibility

- `BbFormField` — Deprecated wrapper retained in source for one cycle. New docs use `Field` + `FieldLabel`.

## 05 — Usage Guidance

| Component | Role |
|---|---|
| `Field` | Canonical wrapper for new site & product form composition. |
| `FieldLabel` | Canonical label companion for `Input`, `Textarea` and grouped controls. |
| `SegmentedControl` | Canonical pill selector for compact single-choice marketing forms. |
| `BbFormField` | Deprecated wrapper retained in source only for one cycle. |

## 06 — Text Inputs

- Full Name — "As it appears on your ID"
- Email — "We will send a confirmation"
- Password — "Minimum 8 characters required"
- Disabled Input

## 07 — Textarea

- Message — "Max 500 characters"

## 08 — Select

- Role: Admin · Editor · Viewer

## 09 — Toggles / Checkboxes

- Accept terms · Subscribe to newsletter · Disabled
- Radio groups: Option A · Option B · Option C
- Switch: Enable notifications

## 10 — Composed Form (example)

- Project Name *
- Description
- Priority: Low · Medium · High
- Mark as urgent
- Actions: `Create Project` · `Cancel`
