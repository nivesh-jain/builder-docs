## dialog

`Dialog` is a composable UI component that presents content in a modal overlay. You use it to focus user attention on a specific task, blocking interaction with the rest of the interface until the dialog is closed.

It is commonly used for confirmations, forms, and critical actions.

---

## what it does

`Dialog` creates a layered interaction above the main interface.

* Opens a modal centered on the screen
* Blocks background interaction with an overlay
* Focuses user attention on a single task
* Supports accessible titles and descriptions
* Handles open and close interactions

It ensures that important actions are isolated and clearly communicated.

---

## classification

* **layer**: UI
* **role**: modal interaction container
* **rendering context**: overlay (renders above all content using a portal)

Use it in the UI layer when interaction must be isolated from the rest of the page.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Dialog` follows a structured hierarchy:

* `DialogRoot` → state container
* `DialogTrigger` → opens the dialog
* `DialogContent` → modal container
* `DialogTitle` → heading
* `DialogDescription` → supporting text
* `DialogClose` / `DialogCancel` → closes the dialog

### hierarchy relationships

* `DialogRoot` is the **parent** managing state
* `DialogTrigger` is a **child** that initiates opening
* `DialogContent` is rendered in a **portal**, outside normal hierarchy
* Inside content:

  * `DialogTitle` and `DialogDescription` provide context
  * Children define the actual content and actions

This separation ensures clear control of state, structure, and presentation.

---

## composability

* **type**: composable (compound component with abstraction)

`Dialog` supports two usage patterns:

### 1. low-level composition

You manually compose:

* `DialogRoot`
* `DialogTrigger`
* `DialogContent`
* Supporting elements

### 2. high-level abstraction

You use the `Dialog` wrapper:

* Accepts `title` and `description`
* Automatically handles accessibility (including hidden labels when absent)
* Wraps content inside a ready-to-use modal

This dual approach provides both flexibility and convenience.

---

## behavior details

* **overlay**

  * Covers the entire viewport
  * Prevents interaction with background
  * Can be optionally disabled

* **content positioning**

  * Centered using fixed positioning
  * Animated on open and close

* **accessibility**

  * Title and description are always present (visually hidden if not provided)
  * Focus is managed within the dialog

* **closing behavior**

  * Triggered via close buttons or external logic
  * Supports multiple close controls (`Close`, `Cancel`)

---

## when to use

Use `Dialog` when you need:

* Focused user interaction
* Confirmation flows (delete, submit, etc.)
* Forms or multi-step inputs
* Critical or blocking actions

Avoid using it when:

* Content is non-critical or passive
* Users need to interact with multiple parts of the page simultaneously

---

## edge cases and considerations

* **overuse**: Too many dialogs disrupt user flow
* **nested dialogs**: Avoid stacking multiple modals
* **content size**: Ensure content fits within viewport constraints
* **accessibility**: Always provide meaningful titles and descriptions

---

## summary

`Dialog` is a composable modal component that isolates user interaction in a focused overlay. It combines structured hierarchy, accessibility, and flexible composition to support critical tasks with clarity and control.
