## component variant

`ComponentVariant` is a composable UI component that controls which variation of content is rendered based on a selected value. You use it to define multiple variants of a component and display only the active one.

It provides a structured way to manage conditional rendering.

---

## what it does

`ComponentVariant` selects and renders one matching variant from its children.

* Provides a shared variant value through context
* Matches child variants based on their `value`
* Renders only the selected variant
* Falls back to a default value when no explicit value is provided

It ensures only one variant is visible at a time.

---

## classification

* **layer**: UI
* **role**: conditional renderer (variant selector)
* **rendering context**: logical (state-based visibility control)

Use it in the UI layer to manage component variations.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`ComponentVariant` defines a controlled composition:

* `ComponentVariant` → root provider
* `ComponentVariantItem` → conditional content

### hierarchy relationships

* `ComponentVariant` provides the active value
* Each `ComponentVariantItem` checks if it matches the value
* Only the matching item renders its children
* All non-matching items render nothing

---

## composability

* **type**: composable (compound component)
* **accepts children**: yes
* **belongs in**: UI

`ComponentVariant` requires coordinated subcomponents.

### required composition

* `ComponentVariant`

  * `ComponentVariantItem`

Each part has a clear role:

* **ComponentVariant** → defines active variant
* **ComponentVariantItem** → conditionally renders content

---

## behavior details

### variant selection

* Uses `value` when provided
* Falls back to `defaultValue` if `value` is undefined
* Shares the resolved value with all children

---

### conditional rendering

* Each item compares its `value` with the active value

* If matched:

  * Renders its children

* If not matched:

  * Renders nothing

---

### rendering model

* Only one variant is visible at a time
* No layout space is reserved for inactive variants
* Switching values updates visible content immediately

---

## when to use

Use `ComponentVariant` when you need:

* Multiple visual or structural variations of a component
* Controlled switching between variants
* Clean separation of variant-specific content

Avoid using it when:

* Multiple variants must be visible simultaneously
* Simple conditional logic is sufficient
* Variants do not share a common structure

---

## edge cases and considerations

* **no matching value**: Nothing will render if no item matches
* **missing value**: Ensure either `value` or `defaultValue` is defined
* **duplicate values**: Multiple matching items may render unexpectedly
* **nesting**: Nested variants require careful value management

---

## summary

`ComponentVariant` is a composable UI component that controls which variation of content is rendered based on a shared value. It accepts children, belongs in the UI layer, and provides a clean, structured approach to managing conditional UI states.
