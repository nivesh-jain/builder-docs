## sheet

`Sheet` is a composable UI component that presents content in a sliding panel attached to the edge of the screen. You use it to show secondary content or controls without leaving the current context.

It behaves like a directional dialog, optimized for side panels and drawers.

---

## what it does

`Sheet` reveals content from a screen edge.

* Slides in from top, right, bottom, or left
* Overlays the main interface with a backdrop
* Keeps focus within the panel while open
* Supports structured content with title and description

It allows users to access additional functionality without full context switching.

---

## classification

* **layer**: UI
* **role**: modal side panel
* **rendering context**: overlay (renders above content using a portal)

Use it in the UI layer for secondary panels, drawers, and side interactions.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Sheet` follows a structured hierarchy:

* `Sheet` → root container
* `SheetTrigger` → opens the sheet
* `SheetContent` → sliding panel
* `SheetOverlay` → background overlay
* `SheetTitle` → heading
* `SheetDescription` → supporting text
* `SheetClose` → closes the sheet

### hierarchy relationships

* `Sheet` is the **parent** managing open/close state
* `SheetTrigger` is a **child** that initiates opening
* `SheetContent` is rendered in a **portal**
* Inside content:

  * `SheetTitle` and `SheetDescription` provide context
  * Children define the panel content

This mirrors dialog structure, with directional behavior.

---

## composability

* **type**: composable (compound component with abstraction)

`Sheet` supports two usage patterns:

### 1. low-level composition

You assemble:

* Trigger
* Overlay
* Content
* Supporting elements

### 2. structured abstraction

You use `SheetContent` with:

* `title` and `description` props
* Built-in accessibility handling (hidden when not provided)

This simplifies common usage while preserving flexibility.

---

## behavior details

* **animation**

  * Slides in from a specified side
  * Slides out on close
  * Uses directional transforms for smooth motion

* **overlay**

  * Covers the background
  * Prevents interaction with underlying content

* **positioning**

  * Anchored to a screen edge
  * Supports `top`, `right`, `bottom`, `left` variants

* **accessibility**

  * Title and description are always present (visually hidden if not provided)
  * Focus is contained within the sheet

---

## when to use

Use `Sheet` when you need:

* Side panels (filters, settings, navigation drawers)
* Secondary workflows that should not replace the main view
* Contextual editing or configuration

Avoid using it when:

* Full attention is required (use dialog)
* Content is lightweight or non-interactive (use popover or tooltip)

---

## edge cases and considerations

* **screen size**: Ensure usability on smaller screens
* **content overflow**: Handle scroll within the panel if needed
* **multiple sheets**: Avoid stacking panels
* **entry direction**: Choose direction based on context and layout

---

## summary

`Sheet` is a composable UI component for sliding panels that extend from screen edges. It combines modal behavior with directional layout, making it ideal for secondary interactions that should remain connected to the current context.
