## tooltip

`Tooltip` is a composable UI component that displays short, contextual information when a user hovers over or focuses on an element. You use it to explain actions, labels, or controls without adding permanent UI.

It is designed for brief, non-interactive guidance.

---

## what it does

`Tooltip` reveals assistive text on interaction.

* Opens on hover or focus
* Displays a small floating label near the trigger
* Closes automatically when interaction ends
* Supports configurable delay for better usability

It helps users understand UI elements without interrupting their flow. 

---

## classification

* **layer**: UI
* **role**: assistive information component
* **rendering context**: overlay (renders above content using a portal)

Use it in the UI layer for hints, labels, and short descriptions.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### structure rules

`Tooltip` follows a structured hierarchy:

* `TooltipRoot` → state container
* `TooltipTrigger` → interaction element
* `TooltipContent` → displayed message
* `TooltipArrow` → visual pointer
* `TooltipPortal` → renders content outside normal DOM flow

### hierarchy relationships

* `TooltipRoot` is the **parent** managing visibility
* `TooltipTrigger` wraps the target element
* `TooltipContent` is rendered in a **portal**
* `TooltipArrow` is a **child** of the content

The trigger directly controls when the tooltip appears.

---

## composability

* **type**: composable (compound component with abstraction)

`Tooltip` supports two usage patterns:

### 1. direct composition

You assemble:

* `TooltipRoot`
* `TooltipTrigger`
* `TooltipContent`

### 2. wrapped component

You use the `Tooltip` wrapper:

* Pass `content` as a prop
* Wrap any element as the trigger
* Handles layout and text rendering automatically

This simplifies common usage while preserving flexibility.

---

## behavior details

* **interaction**

  * Opens on hover or keyboard focus
  * Closes on mouse leave or blur
  * Supports configurable delay

* **positioning**

  * Defaults to top alignment
  * Adjusts relative to trigger

* **content handling**

  * Accepts text or custom nodes
  * Automatically formats string content

* **styling**

  * Supports multiple color variants
  * Arrow inherits background color for visual consistency

---

## when to use

Use `Tooltip` when you need:

* Short explanatory text
* Labels for icons or unclear controls
* Non-intrusive guidance

Avoid using it when:

* Content is long or complex
* Interaction or input is required (use dialog or popover instead)

---

## edge cases and considerations

* **content length**: Keep content concise and scannable
* **hover limitations**: Ensure accessibility for keyboard and touch users
* **delay timing**: Avoid overly long delays
* **overuse**: Too many tooltips can create noise

---

## summary

`Tooltip` is a composable UI component for short, contextual guidance. It enhances usability by revealing helpful information on demand, without adding visual clutter to the interface.
