## select

`Select` is a composable UI component that allows users to choose **one option from a list** within a dropdown interface. You use it when you need a compact, scalable alternative to radio groups.

It combines input control with an overlay menu.

---

## what it does

`Select` manages single selection from a list of options.

* Displays the selected value in a trigger
* Opens a dropdown menu with available options
* Updates selection on user choice
* Supports scrolling for long lists

It keeps the interface compact while handling large option sets.

---

## classification

* **layer**: UI
* **role**: input control (single selection)
* **rendering context**: hybrid (inline trigger + overlay menu)

Use it in the UI layer when selection must scale beyond a few options.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Select` follows a structured hierarchy:

* `SelectRoot` → state container
* `SelectTrigger` → visible control
* `SelectValue` → selected value display
* `SelectIcon` → dropdown indicator
* `SelectContent` → dropdown menu
* `SelectViewport` → scrollable container
* `SelectItem` → selectable option
* `SelectItemText` → option label
* `SelectItemIndicator` → selected state indicator
* `SelectGroup` → groups options
* `SelectLabel` → group label
* `SelectSeparator` → divider
* `SelectScrollUpButton` / `SelectScrollDownButton` → scrolling controls
* `SelectPortal` → renders menu outside normal DOM flow

### hierarchy relationships

* `SelectRoot` is the **parent** managing state
* `SelectTrigger` is a **child** that controls opening
* `SelectContent` is rendered in a **portal**
* `SelectItem` are **children** within the content
* Only one item is selected at a time

---

## composability

* **type**: composable (compound component with abstraction)

`Select` supports two usage patterns:

### 1. low-level composition

You assemble:

* Trigger
* Content
* Items and groups

### 2. high-level abstraction

You use:

* `Select` wrapper
* `SelectOption` for items

This simplifies common usage while keeping full flexibility.

---

## behavior details

* **interaction**

  * Opens on click
  * Closes on selection or outside interaction

* **selection**

  * Only one option can be selected
  * Selected value updates trigger display

* **scrolling**

  * Supports long lists with scroll controls
  * Maintains alignment with trigger

* **visual feedback**

  * Indicator marks selected item
  * Trigger icon rotates based on open state

---

## when to use

Use `Select` when you need:

* Single selection from many options
* Compact input controls
* Scalable option lists

Avoid using it when:

* Options are few and should remain visible (use radio group)
* Multi-selection is required (use checkbox or multi-select patterns)

---

## edge cases and considerations

* **long labels**: Ensure text truncation is handled properly
* **default value**: Provide a placeholder or initial selection
* **scroll usability**: Ensure smooth navigation for long lists
* **accessibility**: Ensure keyboard navigation and focus states are clear

---

## summary

`Select` is a composable input component for single-choice selection in a dropdown format. It combines a compact trigger with a flexible overlay menu, making it ideal for handling larger sets of options efficiently.
