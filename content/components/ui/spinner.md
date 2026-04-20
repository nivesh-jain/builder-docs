## spinner

`Spinner` is a composable UI component that displays a loading animation using a selectable spinner style. You use it to indicate ongoing operations such as data fetching, processing, or transitions.

It provides a unified interface for multiple loader variants.

---

## what it does

`Spinner` renders a loading indicator based on a selected type.

* Selects a spinner implementation by `name`
* Renders animated loading visuals
* Supports size, color, and layout customization
* Falls back to no output if the spinner is invalid

It standardizes loading indicators across the interface.

---

## classification

* **layer**: UI
* **role**: loading indicator
* **rendering context**: inline

Use it in the UI layer to communicate loading states.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within layouts, buttons, or overlays
* Does not render or manage children

It is a leaf visual component.

---

## composability

* **type**: non-composable (variant-driven)
* **accepts children**: no
* **belongs in**: UI

`Spinner` is configured through variants.

* You select the spinner type via `name`
* Additional props control size, speed, and appearance

---

## behavior details

### spinner selection

* Chooses a spinner from a predefined set:

  * `MoonLoader`
  * `ScaleLoader`
  * `PuffLoader`
  * `BarLoader`
  * `BeatLoader`

* Defaults to `MoonLoader`

---

### rendering behavior

* Dynamically resolves the spinner component
* Renders the selected loader with provided props
* Returns no output if the name is invalid

---

### customization

Supports common loader properties:

* **size** → overall scale
* **color** → visual color
* **margin / spacing** → layout adjustments
* **height / width / radius** → shape-specific controls

---

## when to use

Use `Spinner` when you need:

* Visual feedback for loading states
* Consistent loading indicators across components
* Flexible selection of animation styles

Avoid using it when:

* Loading is instantaneous or not user-visible
* A skeleton or placeholder UI is more appropriate

---

## edge cases and considerations

* **invalid name**: Renders nothing if the spinner is not found
* **overuse**: Excessive spinners can reduce clarity
* **size consistency**: Ensure consistent sizing across usage
* **performance**: Multiple animated loaders may impact performance

---

## summary

`Spinner` is a composable UI component that renders a selectable loading animation. It belongs in the UI layer and provides a consistent, flexible way to communicate loading states across the interface.
