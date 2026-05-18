# Token Export — Gauden Design System

Source: derived from Gauden v1.0 design system

## 01 — Instructions (Copy · Paste · Ship)

1. Cole o bloco CSS abaixo no `index.css` ou `globals.css` do seu projeto.
2. shadcn/ui automaticamente herda os tokens via `--background`,
   `--foreground`, etc.
3. Para acesso direto às cores de linha, use `var(--okto)`, `var(--czech)`,
   etc.

Compatível com Tailwind CSS v3+v4, shadcn/ui, e qualquer stack que use
CSS custom properties.

## 02 — CSS Variables (Lime + Gold equivalents are merged here)

```css
/* Gauden Design System — v1.0 (2026) */
/* Cole em index.css ou globals.css */

@layer base {
  :root {
    /* —— Neutrals (institutional) —— */
    --paper: #EFE9DC;
    --paper-2: #E6DFCF;
    --cream: #F6F1E6;
    --ink: #14110C;
    --ink-soft: #2A2620;
    --line: rgba(20, 17, 12, 0.14);
    --line-dark: rgba(246, 241, 230, 0.18);

    /* —— Brand line palette (1 per beer) —— */
    --okto: #1F6CC9;       /* Oktoberfest — royal blue */
    --czech: #2A6E1F;      /* Czech Pils — forest */
    --porter: #5C2C18;     /* Chocolate Porter — cacao */
    --irish: #EB5A1E;      /* Irish Red Ale — orange */
    --amber: #D63A2A;      /* Amber Lager — red */
    --english: #E8217B;    /* English IPA — magenta */
    --sevenhops: #B5D34A;  /* 7 Hops — lime ink */
    --free: #4DC9EC;       /* IPA Free — sky */
    --pilsen: #F4C115;     /* Pilsen — golden */
    --session: #9BD32C;    /* Session IPA — lime */
    --ipa: #2DC9C9;        /* IPA — teal */

    /* —— Expression accents (paired with line colors) —— */
    --okto-bg: #D6E3DF;    /* Oktoberfest pair — mint */
    --czech-bg: #B3D34A;   /* Czech Pils pair — lime */
    --porter-bg: #2DB5A9;  /* Porter pair — teal */
    --irish-2: #A8D44A;    /* Irish pair — lime */
    --amber-2: #14224E;    /* Amber pair — navy */
    --english-2: #B5D34A;  /* English IPA pair — lime ink */
    --free-2: #F6F1E6;     /* Free pair — cream */
    --sevenhops-2: #4DC9EC;/* 7 Hops pair — sky */

    /* —— Radius —— */
    --r-sm: 6px;
    --r-md: 10px;
    --r-lg: 18px;

    /* —— Type —— */
    --font-display: "Anton", "Impact", sans-serif;
    --font-body: "Montserrat", system-ui, sans-serif;
    --font-mono: ui-monospace, "SF Mono", Menlo, monospace;

    /* —— Weights —— */
    --fw-regular: 400;
    --fw-medium: 500;
    --fw-semibold: 600;
    --fw-bold: 700;
    --fw-black: 800;

    /* —— Motion —— */
    --ease-smooth: cubic-bezier(0.25, 0.1, 0.25, 1);
    --ease-out: cubic-bezier(0, 0, 0.2, 1);
    --duration-fast: 0.3s;
    --duration-base: 0.6s;
    --duration-pour: 1.2s;

    /* —— shadcn/ui semantic aliases —— */
    --background: var(--paper);
    --foreground: var(--ink);
    --card: var(--cream);
    --card-foreground: var(--ink);
    --popover: var(--cream);
    --popover-foreground: var(--ink);
    --primary: var(--ink);
    --primary-foreground: var(--cream);
    --secondary: var(--paper-2);
    --secondary-foreground: var(--ink);
    --muted: var(--paper-2);
    --muted-foreground: rgba(20, 17, 12, 0.55);
    --accent: var(--pilsen);
    --accent-foreground: var(--ink);
    --destructive: var(--amber);
    --destructive-foreground: var(--cream);
    --border: var(--line);
    --input: var(--line);
    --ring: rgba(20, 17, 12, 0.4);
    --radius: var(--r-md);
  }

  /* Dark mode — paper inverts to ink */
  .dark {
    --background: var(--ink);
    --foreground: var(--cream);
    --card: var(--ink-soft);
    --card-foreground: var(--cream);
    --popover: var(--ink-soft);
    --popover-foreground: var(--cream);
    --primary: var(--cream);
    --primary-foreground: var(--ink);
    --secondary: var(--ink-soft);
    --secondary-foreground: var(--cream);
    --muted: var(--ink-soft);
    --muted-foreground: rgba(246, 241, 230, 0.55);
    --accent: var(--pilsen);
    --accent-foreground: var(--ink);
    --destructive: var(--amber);
    --destructive-foreground: var(--cream);
    --border: var(--line-dark);
    --input: var(--line-dark);
    --ring: rgba(246, 241, 230, 0.4);
  }

  body {
    font-family: var(--font-body);
    font-weight: var(--fw-medium);
    background: var(--background);
    color: var(--foreground);
    font-size: 15px;
    line-height: 1.55;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
  }

  h1, h2, h3, .title {
    font-family: var(--font-display);
    font-weight: var(--fw-regular);
    text-transform: uppercase;
    letter-spacing: 0.005em;
    line-height: 1.02;
    margin: 0;
  }

  h1 { font-size: clamp(64px, 11vw, 184px); }
  h2 { font-size: clamp(44px, 6vw, 96px); }
  h3 { font-size: clamp(30px, 3vw, 48px); }
}
```

## 03 — Tailwind config (optional)

```js
// tailwind.config.js — extend with Gauden brand colors
module.exports = {
  theme: {
    extend: {
      colors: {
        paper: '#EFE9DC',
        'paper-2': '#E6DFCF',
        cream: '#F6F1E6',
        ink: '#14110C',
        'ink-soft': '#2A2620',
        okto: '#1F6CC9',
        czech: '#2A6E1F',
        porter: '#5C2C18',
        irish: '#EB5A1E',
        amber: '#D63A2A',
        english: '#E8217B',
        sevenhops: '#B5D34A',
        free: '#4DC9EC',
        pilsen: '#F4C115',
        session: '#9BD32C',
        ipa: '#2DC9C9',
      },
      fontFamily: {
        display: ['Anton', 'Impact', 'sans-serif'],
        body: ['Montserrat', 'system-ui', 'sans-serif'],
        mono: ['ui-monospace', 'SF Mono', 'Menlo', 'monospace'],
      },
      borderRadius: {
        sm: '6px',
        md: '10px',
        lg: '18px',
      },
    },
  },
}
```
