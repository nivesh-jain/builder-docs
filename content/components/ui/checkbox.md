## checkbox

`Checkbox` is a UI component that allows users to select or deselect a binary option. You use it when users can make independent choices—each option stands on its own.

It provides a clear, compact way to capture true/false input.

---

## what it does

`Checkbox` manages a two-state input: checked or unchecked.

* Toggles between selected and unselected states
* Displays a visual indicator when selected
* Responds to user interaction (click or tap)
* Reflects state through styling and iconography

Each checkbox operates independently unless grouped explicitly.

---

## classification

* **layer**: UI
* **role**: input control
* **rendering context**: captures user selection

Use it in the UI layer wherever users need to make discrete selections.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### structure rules

`Checkbox` has a simple internal structure:

* `CheckboxRoot` → interactive container
* `CheckboxIndicator` → visual indicator (checkmark)

### hierarchy relationships

* `CheckboxRoot` is the **parent**
* `CheckboxIndicator` is a **child** that appears when checked

### typical usage

* Acts as a **child** inside forms, lists, or filters
* Can act as a **parent** only for its indicator

Avoid placing complex or nested components inside a checkbox.

---

## composability

* **type**: semi-composable

The internal structure exists (`Root` + `Indicator`), but it is abstracted into a single `Checkbox` component for ease of use.

* You typically use `Checkbox` as a single unit
* Advanced usage can access `CheckboxRoot` and `CheckboxIndicator` separately

This balances simplicity with flexibility.

---

## behavior details

* **checked state**

  * Displays a check icon inside the indicator
  * Applies background styling to signal selection

* **unchecked state**

  * Shows only the container outline

* **interaction states**

  * Hover → subtle border change
  * Active → visual feedback on press

* **size variants**

  * `sm` → compact
  * `md` → larger, more prominent

---

## when to use

Use `Checkbox` when you need:

* Multiple independent selections
* Optional toggles in forms
* Filters or preference settings

Avoid using it when:

* Only one option can be selected (use radio buttons instead)
* Immediate action is required (use a button instead)

---

## edge cases and considerations

* **state clarity**: Ensure checked vs unchecked states are visually distinct
* **grouping**: When used in lists, maintain consistent spacing and alignment
* **accessibility**: Provide clear labels for each checkbox
* **icon visibility**: Ensure the indicator remains legible across themes

---

## summary

`Checkbox` is a compact, reliable input control for binary choices. It combines a simple structure with clear visual feedback, making it ideal for forms, filters, and user preferences.
