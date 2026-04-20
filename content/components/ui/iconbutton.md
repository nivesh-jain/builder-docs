## icon button

`IconButton` is a compact UI control that triggers an action using an icon instead of text. You use it when space is limited or when the action is clearly represented by a visual symbol.

It is a specialized form of a button, optimized for minimal and icon-driven interfaces.

---

## what it does

`IconButton` captures user interaction through a single icon.

* Triggers actions on click or tap
* Displays only an icon (no text label)
* Adapts size, color, and visual style through variants
* Provides consistent alignment and spacing for icons

It enables quick, recognizable actions with minimal visual footprint.

---

## classification

* **layer**: UI
* **role**: interactive control (icon-based)
* **rendering context**: triggers actions

Use it in the UI layer where actions need to be compact and visually intuitive.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### typical usage

* Acts primarily as a **child** within toolbars, cards, or overlays
* Can act as a **parent** for:

  * A single icon (SVG)

### constraints

* Should contain only one visual element (icon)
* Avoid nesting text or complex components inside

---

## composability

* **type**: non-composable (variant-driven)

`IconButton` is a single component configured through variants rather than subcomponents.

You control its behavior using:

* **variant** → `ghost`, `outline`, `solid`
* **size** → `xs`, `sm`, `md`, `lg`
* **color** → semantic options (`primary`, `error`, etc.)

This keeps the component simple while allowing flexible styling.

---

## behavior details

* **layout**

  * Centers the icon within a square container
  * Maintains consistent aspect ratio

* **interaction**

  * Responds to hover, active, and click states
  * Provides visual feedback through styling

* **icon handling**

  * Automatically sizes child icons
  * Ensures alignment across variants

---

## when to use

Use `IconButton` when you need:

* Compact action controls (edit, delete, close)
* Toolbar or header actions
* Repeated actions in dense layouts

Avoid using it when:

* The action is not universally recognizable
* Text is required for clarity

---

## edge cases and considerations

* **accessibility**: Always provide accessible labels (for example, `aria-label`)
* **icon clarity**: Use clear, standard icons to avoid confusion
* **touch targets**: Ensure size is sufficient for touch interaction
* **overuse**: Too many icon buttons can reduce discoverability

---

## summary

`IconButton` is a compact, icon-driven action control. It prioritizes space efficiency and visual clarity, making it ideal for dense interfaces where actions must remain accessible but unobtrusive.
