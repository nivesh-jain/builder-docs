## material variant

`MaterialVariant` is a composable canvas component that switches and applies material variations to a target material at runtime. You use it to dynamically change the appearance of 3D objects based on predefined variants.

It enables controlled, state-driven material updates within a scene.

---

## what it does

`MaterialVariant` manages and applies material variants.

* Selects a variant based on a controlled or default value
* Loads material data from project assets
* Parses and applies the material to a target material instance
* Updates the material in place without recreating the object
* Exposes an imperative method to switch variants

It allows seamless visual changes without reloading models.

---

## classification

* **layer**: canvas
* **role**: material controller (variant system)
* **rendering context**: 3D (material pipeline)

Use it in the canvas layer to manage dynamic material states.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a scene or alongside models
* Does not render visible output
* Does not accept or manage children

It operates as a behavior-driven controller.

---

## composability

* **type**: non-composable (behavioral component)
* **accepts children**: no
* **belongs in**: canvas

`MaterialVariant` is state-driven.

* It does not render UI or scene nodes
* It modifies existing materials through side effects

---

## behavior details

### variant selection

* Supports controlled (`value`) and uncontrolled (`defaultValue`) modes
* Matches the active variant using its `label`
* Triggers updates when the selected value changes

---

### asset resolution

* Looks up variant assets from the project store
* Uses the provided `projectMaterialId` to identify the target material
* Ensures only the selected variant is applied

---

### material application

* Parses material data using a loader
* Copies properties into the existing material instance
* Marks the material for update to reflect changes

This avoids recreating materials or breaking references.

---

### imperative control

* Exposes `applyVariant(label)` via ref
* Allows external systems (e.g., editor or UI) to switch variants
* Updates internal state and triggers reapplication

---

## when to use

Use `MaterialVariant` when you need:

* Dynamic material switching (e.g., color, finish, texture)
* Variant-driven customization of 3D objects
* Integration with project-level asset systems

Avoid using it when:

* Materials are static and do not change
* Direct material assignment is sufficient
* No variant system is required

---

## edge cases and considerations

* **invalid label**: No update occurs if the variant is not found
* **missing asset**: Material will not update without valid asset data
* **performance**: Frequent variant changes may impact performance
* **material dependencies**: Ensure compatibility between variants and target material
* **state sync**: Controlled and uncontrolled modes must be used correctly

---

## summary

`MaterialVariant` is a composable canvas component that applies material variants dynamically to a target material. It belongs in the canvas layer and enables flexible, state-driven control over material appearance in a 3D scene.
