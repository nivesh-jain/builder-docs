## textarea

`TextArea` is a UI input component that allows users to enter **multi-line text**. You use it when input exceeds a single line, such as descriptions, messages, or notes.

It provides a flexible and resizable input area for longer content.

---

## what it does

`TextArea` captures and displays multi-line user input.

* Accepts extended text across multiple lines
* Supports vertical resizing by the user
* Reflects input states (focus, disabled, read-only)
* Provides validation feedback through styling

It enables structured input for longer or free-form content.

---

## classification

* **layer**: UI
* **role**: input control (text input)
* **rendering context**: interactive

Use it in the UI layer for collecting longer text input.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within forms, dialogs, or panels
* Does not contain nested components

It is a standalone input element.

---

## composability

* **type**: non-composable (single component)

`TextArea` is a single element without subcomponents. You configure it through variants and props.

---

## behavior details

* **input handling**

  * Supports multi-line text entry
  * Expands vertically via resize control

* **states**

  * **default** → normal input
  * **focus** → highlighted border
  * **disabled** → non-interactive, muted styling
  * **read-only** → non-editable but visible

* **validation**

  * `invalid` → error styling (red)
  * `valid` → success styling (green)

* **placeholder**

  * Displays hint text when empty
  * Styled differently for clarity

* **cursor behavior**

  * Adjusts based on interaction state

---

## variants

* **size**

  * `1`, `2`, `3` → controls font size, padding, and border radius

* **state**

  * `valid` → success indication
  * `invalid` → error indication

* **cursor**

  * `default` → standard pointer behavior
  * `text` → always shows text cursor

---

## when to use

Use `TextArea` when you need:

* Multi-line input (comments, descriptions, feedback)
* Flexible input length
* User-controlled resizing

Avoid using it when:

* Input is short or single-line (use input field instead)
* Structured or constrained input is required

---

## edge cases and considerations

* **input length**: Consider limits for very large text input
* **resizing**: Ensure layout supports vertical expansion
* **validation feedback**: Clearly communicate errors or success states
* **accessibility**: Provide labels and guidance for expected input

---

## summary

`TextArea` is a multi-line input component designed for longer text entry. It combines flexible input, clear state handling, and simple configuration, making it essential for forms and user-generated content.
