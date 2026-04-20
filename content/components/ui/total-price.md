## total price

`TotalPrice` is a composable UI component that displays the calculated total price using the active currency from a shared store. You use it to present formatted pricing values consistently across the interface.

It combines data retrieval, currency context, and formatting into a single component.

---

## what it does

`TotalPrice` reads and formats the current total price.

* Subscribes to a shared store for pricing and currency
* Extracts the active currency symbol or fallback code
* Retrieves the calculated total price
* Formats the value using a number formatting component
* Updates automatically when price or currency changes

It ensures consistent and accurate price display.

---

## classification

* **layer**: UI
* **role**: data-bound display (price formatter)
* **rendering context**: inline

Use it in the UI layer wherever total pricing needs to be shown.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within pricing sections, summaries, or checkout views
* Does not render or manage children

It is a leaf display component.

---

## composability

* **type**: non-composable (data-bound component)
* **accepts children**: no (children are not used)
* **belongs in**: UI

`TotalPrice` is configuration-driven.

* Wraps a formatting component internally
* Behavior is driven by store data

---

## behavior details

### data binding

* Connects to a shared store via `useCpqStore`
* Extracts:

  * `symbol` → currency symbol or fallback code
  * `totalPrice` → computed price value

---

### formatting

* Uses a number formatting component for display

* Applies:

  * `prefix` → currency symbol
  * `decimalScale` → number of decimal places (default: 2)

* Ensures consistent numeric formatting

---

### rendering

* Outputs a formatted price string
* Updates reactively when store values change
* Inherits additional formatting props

---

## when to use

Use `TotalPrice` when you need:

* Display of computed total price
* Consistent currency formatting
* Reactive updates based on pricing changes

Avoid using it when:

* Raw numeric values are required
* Custom formatting logic is needed beyond provided options

---

## edge cases and considerations

* **missing currency**: Falls back to currency code or empty prefix
* **undefined price**: May render empty or invalid output
* **children ignored**: Passing children has no effect
* **formatting limits**: Depends on underlying number formatter capabilities

---

## summary

`TotalPrice` is a data-bound UI component that displays the formatted total price using the active currency. It belongs in the UI layer and provides a consistent, reactive way to present pricing information.
