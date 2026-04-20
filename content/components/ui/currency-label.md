## currency label

`CurrencyLabel` is a composable UI component that displays the active currency from a shared pricing store. You use it to consistently render currency information such as symbol, code, or display name across the interface.

It ensures all currency references stay synchronized with application state.

---

## what it does

`CurrencyLabel` reads and displays the current currency property.

* Subscribes to a shared store for active currency
* Extracts a specific currency property (`symbol`, `code`, or `displayName`)
* Renders the value using the `Text` component
* Updates automatically when currency changes

It centralizes currency display logic in one place.

---

## classification

* **layer**: UI
* **role**: data-bound display (currency indicator)
* **rendering context**: inline

Use it in the UI layer wherever currency needs to be shown.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within pricing displays, product views, or summaries
* Does not manage or render nested components

It is a leaf display component.

---

## composability

* **type**: non-composable (data-bound component)
* **accepts children**: no (children are not used)
* **belongs in**: UI

`CurrencyLabel` is a single-purpose component.

* It wraps a `Text` component internally
* Behavior is driven by store data, not composition

---

## behavior details

### data binding

* Connects to a shared store via `useCpqStore`
* Subscribes to the `currency` state
* Extracts the selected property dynamically

---

### supported properties

* `symbol` → currency symbol (e.g., `$`)
* `code` → currency code (e.g., `USD`)
* `displayName` → full currency name

Defaults to `code` if not specified.

---

### rendering

* Outputs the selected value inside a `Text` component
* Inherits all typography and styling behavior from `Text`
* Updates reactively when the store changes

---

## when to use

Use `CurrencyLabel` when you need:

* Consistent currency display across the application
* Reactive updates when currency changes
* A simple, reusable currency indicator

Avoid using it when:

* You need formatted amounts (use a pricing/formatting component)
* Currency is static or hardcoded

---

## edge cases and considerations

* **missing currency data**: May render empty if store is not initialized
* **invalid property**: Unsupported values will return undefined
* **formatting**: Does not format numbers or amounts
* **children ignored**: Passing children has no effect

---

## summary

`CurrencyLabel` is a data-bound UI component that displays the active currency property from a shared store. It belongs in the UI layer and provides a consistent, reactive way to render currency information across the interface.
