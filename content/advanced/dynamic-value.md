## dynamic values

`Dynamic values` let you attach logic directly to component properties. You use them to make components reactive, state-aware, and interactive without leaving the Builder environment.

They turn static properties into programmable inputs.

---

## what it does

Dynamic values allow properties to evaluate expressions instead of fixed values.

* Enables logic inside any supported property
* Connects components to **attributes** and **page state**
* Allows conditional rendering, interaction, and data flow
* Executes functions in response to events

It transforms components from static to behavior-driven.

---

## how to use

### enable dynamic value

1. Right-click on any component property
2. Open the property action menu
3. Select **dynamic value** (if available)
4. A code editor appears
5. Turn on the toggle inside the editor to confirm activation

> All properties support **unset**, but only some support dynamic values.

---

## available actions and methods

Dynamic values can call built-in APIs:

### attributes (external / widget bridge)

* `$attributes.setCurrency(currency)`
* `$attributes.setDisabledAtPath(id, flag)`
* `$attributes.setValueAtPath(id, value)`

---

### page state (internal state)

* `$pageState.setVariableValue(name, value)`

---

### direct value setter

* `.setValue(string)`

---

## execution pattern

Dynamic values often use immediately invoked functions:

```
function () {
  // logic
  return value
}()
```

This ensures:

* Logic runs instantly
* A value is returned to the property

---

## why it matters

Dynamic values are your primary tool for adding logic inside Builder.

They allow you to:

* Control visibility
* React to user input
* Sync UI with state
* Trigger actions across components

Without dynamic values, components remain static.

---

## example: toggle visibility

### goal

Show or hide a model when a button is clicked.

---

### setup

1. Create a **page state variable** (boolean)
2. Bind a button to update this variable
3. Use dynamic value on the model’s visibility

---

### behavior

* Button click toggles state:

  * `true` → visible
  * `false` → hidden

* Model visibility subscribes to that state

---

### result

* Clicking the button hides the model
* Clicking again shows it

---

## when to use

Use dynamic values when you need:

* Conditional rendering (show/hide)
* State-driven UI updates
* Event-based logic (click, change, etc.)
* Communication between components

Avoid using it when:

* Static values are sufficient
* Logic becomes too complex (move to structured systems if needed)

---

## edge cases and considerations

* **toggle requirement**: Must be explicitly enabled in editor
* **no return value**: Property will not update correctly
* **overuse**: Too much inline logic can reduce clarity
* **state sync**: Ensure correct variable names and paths
* **debugging**: Errors in logic may silently fail

---

## summary

Dynamic values are a core Builder feature that lets you attach logic directly to component properties. They connect attributes, page state, and user interaction, making your interface reactive and interactive without external code.
