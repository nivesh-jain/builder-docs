## text

`Text` is a foundational UI component used to render and style textual content. You use it to display any form of text—labels, descriptions, headings, or inline content—with consistent typography and design control.

It acts as the base layer for all readable content in the interface.

---

## what it does

`Text` controls how text is displayed.

* Renders text with consistent typography
* Supports alignment, size, weight, and color variants
* Handles wrapping, truncation, and spacing
* Adapts to layout and positioning requirements

It ensures visual consistency across all text elements. 

---

## classification

* **layer**: UI
* **role**: typography primitive
* **rendering context**: inline

Use it in the UI layer wherever text needs to be displayed.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### typical usage

* Acts as a **child** within layouts, components, and containers
* Can act as a **parent** for:

  * Inline elements
  * Nested text or simple spans

### constraints

* Avoid wrapping complex interactive components inside
* Keep structure focused on text content

---

## composability

* **type**: non-composable (variant-driven)

`Text` is a single component configured through variants.

You control its behavior using:

* **size** → typography scale
* **weight** → font weight
* **color** → semantic color
* **contrast** → visual emphasis
* **align** → text alignment

This provides flexibility without additional structure.

---

## behavior details

* **typography**

  * Uses a consistent scale for font size and line height
  * Supports multiple weights from thin to bold

* **color and contrast**

  * Semantic colors (`primary`, `error`, etc.)
  * Contrast levels (`low`, `regular`, `hi`, `solid`)

* **layout control**

  * Supports spacing (margin, padding)
  * Can control width, height, and positioning

* **text behavior**

  * Wrapping options (`nowrap`, `balance`, `pretty`)
  * Ellipsis for overflow handling

---

## when to use

Use `Text` when you need:

* Consistent typography across the interface
* Flexible text styling
* Reusable text elements in components

Avoid using it when:

* Semantic HTML elements are required (use appropriate tags if needed)
* Complex structured content is required (use dedicated layout components)

---

## edge cases and considerations

* **contrast**: Ensure readability across backgrounds
* **truncation**: Use ellipsis carefully to avoid loss of meaning
* **nested text**: Avoid excessive nesting for maintainability
* **semantic meaning**: Ensure proper structure when accessibility matters

---

## summary

`Text` is a core typography component that standardizes how text is rendered and styled. It provides flexible control over appearance while maintaining consistency across the interface.
