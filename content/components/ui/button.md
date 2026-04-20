## button

`Button` is a core UI component used to trigger actions. You use it wherever users need to initiate behavior—such as submitting data, navigating flows, or updating state.

It combines interaction, visual feedback, and flexible styling into a single, reusable control.

---

## what it does

`Button` captures user intent and executes an action.

* Responds to clicks or taps
* Reflects interactive states (default, hover, disabled)
* Adapts appearance through size, color, and variant
* Supports icons, full-width layouts, and compact modes

It is designed to be predictable, accessible, and consistent across the interface.

---

## classification

* **layer**: UI
* **role**: interactive control
* **rendering context**: triggers actions and user flows

Use it in the UI layer wherever user input leads to a defined outcome.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### typical usage

* Acts primarily as a **child** within layouts (forms, cards, toolbars)
* Can act as a **parent** for simple content:

  * Text labels
  * Icons

### constraints

* Should not contain complex or nested interactive components
* Keeps a shallow structure for clarity and accessibility

---

## composability

* **type**: non-composable (single component with variants)

`Button` is not a compound component. Instead of multiple subcomponents, it exposes behavior through **variants and props**.

You configure it using:

* **size** → controls dimensions and typography
* **variant** → defines visual style (`solid`, `outline`, `ghost`)
* **color** → applies semantic intent (`primary`, `error`, etc.)

This keeps usage simple while allowing broad flexibility.

---

## behavior details

* **interaction states**

  * Default → ready for interaction
  * Disabled → non-interactive, visually muted
* **layout**

  * Inline by default
  * Can expand to full width
* **content handling**

  * Aligns text and icons consistently
  * Adjusts spacing automatically

---

## variants

### visual variants

* **solid** → high emphasis, filled background
* **outline** → medium emphasis, bordered
* **ghost** → low emphasis, minimal styling

### semantic colors

* `neutral`, `primary`, `secondary`
* `success`, `error`, `warning`, `info`

These communicate intent and feedback to the user.

---

## when to use

Use `Button` when you need:

* A clear call to action
* User-triggered state changes
* Navigation or submission controls

Avoid using it for:

* Static labels or decorative elements
* Complex nested interactions

---

## edge cases and considerations

* **disabled state**: Prevents interaction and visually signals inactivity
* **overuse of variants**: Too many styles can reduce clarity—use consistently
* **icon-only buttons**: Ensure accessibility (provide labels or tooltips)
* **full-width usage**: Use for primary actions in constrained layouts

---

## summary

`Button` is a foundational UI control that translates user intent into action. It is simple in structure, flexible through variants, and designed for consistent, reliable interaction across your interface.
