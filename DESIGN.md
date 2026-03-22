# Design System Specification: Editorial Authority

## 1. Overview & Creative North Star
The Creative North Star for this design system is **"The Digital Monograph."** 

This system rejects the ephemeral, rounded, and "bubbly" aesthetics of modern SaaS startups in favor of the permanence and prestige of a peer-reviewed academic journal. It is built to house high-density information, prioritizing intellectual clarity over decorative flair. By utilizing a rigid 0px radius policy and a sophisticated "Ink-on-Paper" tonal palette, we create an environment that commands respect. 

The design breaks the "template" look through **intentional typographic density** and **asymmetric layout structures**—where white space is not just "empty," but acts as a functional margin for focus, much like a physical manuscript.

---

## 2. Colors
Our palette is rooted in the high-contrast world of print. We use deep charcoals and archival "paper" tones to ensure maximum legibility and perceived authority.

### The "No-Line" Rule
**Explicit Instruction:** Do not use 1px solid borders to section content. Boundaries must be defined solely through background color shifts. Use `surface-container-low` (#f6f3f2) against a `surface` (#fcf9f8) background to indicate a new content block.

### Surface Hierarchy & Nesting
Treat the UI as a series of stacked parchment sheets. 
- **Base Layer:** `surface` (#fcf9f8).
- **Secondary Content/Sidebars:** `surface-container-low` (#f6f3f2).
- **Featured Technical Insets:** `surface-container-high` (#ebe7e7).
- **Floating Academic Menus:** `surface-container-lowest` (#ffffff).

### Signature Textures & Gradients
To avoid a "flat" digital look, main CTAs or high-level headers may use a subtle linear gradient transitioning from `primary` (#001c2d) to `primary-container` (#01324b). This mimics the depth of high-quality ink saturation on heavy paper stock.

---

## 3. Typography
Typography is the primary vehicle of the brand identity. We use **Newsreader**, a high-quality serif, for almost all communicative text to evoke the feeling of a prestigious publication.

- **Display & Headlines (`display-lg` to `headline-sm`):** Set in Newsreader. Use tight tracking (-2%) for large displays to give a "justified" editorial feel. This is the voice of the journal.
- **Body (`body-lg` to `body-sm`):** Set in Newsreader. We prioritize readability over aesthetic minimalism; line-heights are generous (1.5x–1.6x) to facilitate long-form reading.
- **Labels & Metadata (`label-md`, `label-sm`):** Set in **Public Sans**. This sans-serif provides a "technical" counterpoint to the serif body, used for citations, figure labels, and data points to provide a functional, archival contrast.

---

## 4. Elevation & Depth
In an academic context, "drop shadows" are often too aggressive. We use **Tonal Layering** to achieve depth.

- **The Layering Principle:** Place a `surface-container-lowest` (#ffffff) card on top of a `surface-container-low` (#f6f3f2) section to create a soft, natural lift.
- **Ambient Shadows:** If a floating element (like a technical dropdown) requires a shadow, use a 32px blur with only 4% opacity, using the `on-surface` color (#1c1b1b) as the shadow tint.
- **The "Ghost Border" Fallback:** If accessibility requires a stroke, use `outline-variant` (#c2c7cd) at 20% opacity. **Never use a 100% opaque border.**
- **Editorial Glass:** For top navigation bars that scroll over content, use `surface` (#fcf9f8) at 85% opacity with a `20px` backdrop-blur. This mimics the translucency of vellum.

---

## 5. Components

### Buttons
- **Primary:** Sharp corners (0px). Background: `primary` (#001c2d); Text: `on-primary` (#ffffff). No icons unless technical (e.g., an arrow for "Next Page").
- **Secondary:** Sharp corners. Background: `surface-container-highest` (#e5e2e1). Text: `primary`.
- **Tertiary/Ghost:** Text only, capitalized, using `label-md` (Public Sans) to look like a technical footnote.

### Inputs & Fields
- **Text Fields:** 0px radius. Use a `surface-container-low` background with a 1px `outline-variant` bottom-border ONLY. This mimics a "fill-in-the-blank" manuscript.
- **Error State:** Use `error` (#ba1a1a) for text and a `error-container` (#ffdad6) subtle background highlight.

### Cards & Lists
- **Forbid Dividers:** Do not use horizontal lines between list items. Use the **Spacing Scale** (specifically `spacing-4` or `spacing-6`) to create separation through white space. 
- **Content Grouping:** Use a `surface-variant` (#e5e2e1) background for the "Abstract" or "Summary" section of a card to differentiate it from the main body.

### Technical Components (New)
- **Citations:** Small `label-sm` text in `secondary` (#116493) to draw the eye to references without breaking the flow of reading.
- **Figure Captions:** Use `body-sm` Newsreader in Italics, placed with asymmetric margins (e.g., 40px left-indent) to mimic professional journal typesetting.

---

## 6. Do's and Don'ts

### Do
- **DO** use absolute 0px rounding on every element.
- **DO** use asymmetric layouts. For example, a wider right margin to allow for "marginalia" or metadata.
- **DO** prioritize text density. It is okay for a screen to look "full" as long as the typographic hierarchy is clear.
- **DO** use `secondary` (#116493) sparingly for links or interactive data points—it is our primary "ink" accent.

### Don't
- **DON'T** use icons where a text label will suffice. (e.g., Use "Search" instead of a magnifying glass icon).
- **DON'T** use "startup" animations like bouncy transitions. Use simple, fast fades (200ms) or "slide-up" motions that mimic turning a page.
- **DON'T** use center-alignment for long-form text. Always left-align to maintain a strong vertical "axis" of readability.
- **DON'T** use pure black (#000000) for large blocks of text; use `on-surface` (#1c1b1b) to reduce eye strain and mimic ink-on-paper.