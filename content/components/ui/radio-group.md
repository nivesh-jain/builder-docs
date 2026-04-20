## radio group

`RadioGroup` is a composable UI component that allows users to select **one option from a set**. You use it when choices are mutually exclusive—selecting one option automatically deselects the others.

It ensures a clear and controlled selection pattern.

---

## what it does

`RadioGroup` manages a single selection across multiple options.

* Allows only one item to be selected at a time
* Updates selection state automatically
* Provides visual feedback for selected and unselected items
* Keeps options grouped and aligned

It enforces consistency in choice-based interactions.

---

## classification

* **layer**: UI
* **role**: input control (single selection)
* **rendering context**: interactive

Use it in the UI layer for selecting one option from many.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`RadioGroup` follows a clear structure:

* `RadioGroup` → container
* `RadioGroupItem` → selectable option
* `RadioGroupIndicator` → visual indicator of selection

### hierarchy relationships

* `RadioGroup` is the **parent** managing selection state
* `RadioGroupItem` are **children** representing options
* `RadioGroupIndicator` is a **child** of each item

Only one `RadioGroupItem` can be active at a time.

---

## composability

* **type**: composable (compound component)

`RadioGroup` is built from coordinated subcomponents:

* Use `RadioGroup` to define the selection context
* Use `RadioGroupItem` for each option
* Use `RadioGroupIndicator` to show selected state

This structure allows flexible layouts while maintaining strict selection rules.

---

## behavior details

* **selection logic**

  * Selecting one item deselects others
  * State is managed at the group level

* **layout**

  * Items are displayed inline by default
  * Supports horizontal scrolling for overflow

* **visual feedback**

  * Selected item updates border or style
  * Indicator reflects active state

* **interaction**

  * Supports click and keyboard navigation
  * Focus states are managed for accessibility

---

## when to use

Use `RadioGroup` when you need:

* A single choice from multiple options
* Clear, mutually exclusive selections
* Compact or inline option lists

Avoid using it when:

* Multiple selections are allowed (use checkboxes instead)
* Options are independent of each other

---

## edge cases and considerations

* **overflow handling**: Ensure horizontal scrolling works for long lists
* **default selection**: Consider setting an initial value for clarity
* **labeling**: Provide clear labels for each option
* **spacing**: Maintain consistent spacing between items

---

## summary

`RadioGroup` is a composable input component for single-choice selection. It enforces mutual exclusivity while providing clear visual and interactive feedback, making it ideal for structured decision-making in UI.
