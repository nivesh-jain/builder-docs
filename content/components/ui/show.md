## show

`Show` is a composable UI component that conditionally renders content based on a boolean condition. You use it to control visibility in a declarative and readable way.

It simplifies conditional rendering without embedding logic directly in the layout.

---

## what it does

`Show` evaluates a condition and renders content accordingly.

* Renders children when the condition matches
* Supports inverted logic through `invert`
* Displays optional fallback content when condition is not met
* Keeps conditional logic separate from structure

It provides a clear, structured alternative to inline conditionals.

---

## classification

* **layer**: UI
* **role**: conditional renderer
* **rendering context**: logical (visibility control)

Use it in the UI layer to manage conditional visibility.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Show` has a simple structure:

* `Show` → condition wrapper
* children → primary content
* fallback → alternative content

### hierarchy relationships

* Wraps content that should be conditionally rendered
* Decides which branch to render based on the condition
* Does not enforce internal subcomponents

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: UI

`Show` is lightweight and flexible.

* You pass any content as children
* You optionally provide fallback content
* It integrates seamlessly into any layout

---

## behavior details

### condition handling

* If `invert` is `false`:

  * Renders children when `condition` is `true`
  * Otherwise renders fallback

* If `invert` is `true`:

  * Renders children when `condition` is `false`
  * Otherwise renders fallback

---

### fallback behavior

* Renders `fallback` when condition is not satisfied
* Defaults to no output when fallback is not provided

---

### rendering model

* Only one branch is rendered at a time
* No hidden elements or reserved layout space
* Updates immediately when condition changes

---

## when to use

Use `Show` when you need:

* Clean conditional rendering
* Separation of logic from layout
* Readable visibility control in complex trees

Avoid using it when:

* Simple inline conditions are clearer
* Both branches must remain mounted

---

## edge cases and considerations

* **missing fallback**: Renders nothing when condition fails
* **invert usage**: Ensure logic remains clear and readable
* **nested conditions**: Multiple nested `Show` components can reduce clarity
* **state changes**: Frequent toggling may affect performance in large trees

---

## summary

`Show` is a composable UI component that controls conditional rendering based on a boolean condition. It accepts children, belongs in the UI layer, and provides a clean, declarative way to manage visibility in your interface.
