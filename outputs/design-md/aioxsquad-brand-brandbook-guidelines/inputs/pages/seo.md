# SEO & Digital Identity — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/seo

## 01 — Meta Tags (HTML Head Metadata)

| Tag | Value / Note |
|---|---|
| `<meta name="title">` | "AIOX Squad — AI Automation Agency" · Max 60 chars |
| `<meta name="description">` | "We build custom AI systems that handle your repetitive work." · Max 155 chars |
| `<meta name="robots">` | `index, follow` |
| `<meta name="canonical">` | `https://aiox.ai/` |

## 02 — Open Graph

| Property | Value |
|---|---|
| `og:title` | AIOX Squad — AI Automation |
| `og:description` | Scale operations 10x without hiring 100 people. |
| `og:type` | `website` |
| `og:image` | `/referencias/outras/aiox_grid_final.webp` (1200×630) |
| `og:url` | `https://aiox.ai` |

## 03 — Twitter Cards

| Property | Value |
|---|---|
| `twitter:card` | `summary_large_image` |
| `twitter:site` | `@aioxsquad` |
| `twitter:title` | "AIOX Squad — AI Automation" |
| `twitter:image` | `/referencias/outras/aiox_grid_final.webp` (1200×600 recommended) |

## 04 — Structured Data (JSON-LD Schema.org)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "AIOX Squad",
  "url": "https://aiox.ai",
  "logo": "https://aiox.ai/logo/AIOX-White.svg",
  "description": "AI Automation Agency",
  "sameAs": [
    "https://twitter.com/aioxsquad",
    "https://linkedin.com/company/aioxsquad"
  ]
}
```
