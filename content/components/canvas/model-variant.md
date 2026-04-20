## model variant

`ModelVariant` is a composable canvas component that controls which version of a 3D model subtree is rendered based on a selected value. You use it to define multiple structural variations of a model and display only the active one.

It enables conditional rendering at the scene graph level.

---

## what it does

`ModelVariant` selects and renders one matching model variant.

* Provides a shared variant value through context
* Matches child variants using their `value`
* Renders only the selected variant’s content
* Keeps all variants within the same scene structure
* Falls back to a default value when no explicit value is provided

It allows switching between different model configurations without reloading assets.

---

## classification

* **layer**: canvas
* **role**: conditional renderer (model variant selector)
* **rendering context**: 3D (scene graph control)

Use it in the canvas layer to manage model variations.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`ModelVariant` defines a structured composition:

* `ModelVariant` → root group + provider
* `ModelVariantItem` → conditional model group

### hierarchy relationships

* `ModelVariant` provides the active variant value
* Each `ModelVariantItem` checks if it matches the value
* Only the matching item renders its children
* All items exist in the scene graph, but only one displays content

---

## composability

* **type**: composable (compound component)
* **accepts children**: yes
* **belongs in**: canvas

`ModelVariant` requires coordinated subcomponents.

### required composition

* `ModelVariant`

  * `ModelVariantItem`

Each part has a clear role:

* **ModelVariant** → defines active variant
* **ModelVariantItem** → conditionally renders model content

---

## behavior details

### variant selection

* Uses `value` when provided
* Falls back to `defaultValue` if undefined
* Shares the resolved value with all items

---

### conditional rendering

* Each item compares its `value` with the active value

* If matched:

  * Renders its children inside a group

* If not matched:

  * Renders an empty group

---

### scene integration

* Each variant is wrapped in a `group`
* Transformations can be applied per variant
* Switching variants updates visible geometry instantly

---

## when to use

Use `ModelVariant` when you need:

* Multiple structural variations of a model
* Configurable product models (e.g., different parts or layouts)
* Conditional rendering within the scene graph

Avoid using it when:

* Variants must be visible simultaneously
* Only material or minor changes are required (use material variants instead)
* Performance constraints limit multiple hidden structures

---

## edge cases and considerations

* **no matching value**: No visible content will render
* **duplicate values**: Multiple variants may render unexpectedly
* **empty groups**: Non-selected variants still create group nodes
* **state control**: Ensure consistent value management across systems

---

## summary

`ModelVariant` is a composable canvas component that controls which model variation is rendered based on a shared value. It accepts children, belongs in the canvas layer, and provides a structured way to switch between different 3D configurations.
