## point of interest controls

`PointOfInterestControls` is a composable canvas component that manages camera navigation between labeled points of interest in a 3D scene. You use it to enable smooth transitions and controlled camera movement based on selected targets.

It connects interaction state with camera behavior. 

---

## what it does

`PointOfInterestControls` controls the camera based on selected points of interest.

* Registers and tracks labeled targets in the scene
* Moves the camera to focus on a selected point
* Calculates optimal framing based on object bounds
* Supports smooth animated transitions
* Enables optional auto-rotation around the target
* Exposes both controlled and imperative APIs

It provides structured, state-driven camera navigation.

---

## classification

* **layer**: canvas
* **role**: camera controller (target-based navigation)
* **rendering context**: 3D (camera system)

Use it in the canvas layer to manage camera focus and transitions.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`PointOfInterestControls` defines a control + context structure:

* `PointOfInterestControls` → controller + provider
* camera controls → underlying camera system
* children → scene content (e.g., points of interest)

### hierarchy relationships

* Provides a context for registering points of interest
* Children (e.g., `PointOfInterest`) register themselves
* Camera updates based on the active value
* Control logic wraps and affects the entire scene

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: canvas

`PointOfInterestControls` coordinates multiple systems.

* You wrap scene content inside it
* It injects control behavior and context
* It integrates with camera and interaction systems

---

## behavior details

### registration system

* Maintains a mapping of labels to object identifiers

* Provides:

  * `register(label, uuid)`
  * `unregister(label)`
  * `clear()`

* Enables dynamic tracking of scene targets

---

### camera transitions

* Locates target objects using registered identifiers
* Computes bounding box and optimal viewing distance
* Moves camera to face and frame the target
* Applies smooth animated transitions

---

### controlled state

* Supports:

  * `value` → active point of interest
  * `defaultValue` → initial target
  * `onValueChange` → change handler

* Updates camera automatically when value changes

---

### imperative control

* Exposes a method to set the active value programmatically
* Cancels ongoing transitions before starting new ones
* Allows external systems to trigger navigation

---

### auto rotation

* Optionally rotates camera around the target

* Controlled via:

  * `autoRotate`
  * `autoRotateSpeed`

* Pauses during user interaction and resumes afterward

---

### interaction handling

* Detects user interaction start and end
* Temporarily disables auto-rotation during interaction
* Restores behavior after interaction completes

---

## when to use

Use `PointOfInterestControls` when you need:

* Guided navigation between scene elements
* Camera focus transitions for storytelling or product views
* Interactive exploration of predefined locations

Avoid using it when:

* Freeform camera control is sufficient (use orbit controls)
* No structured navigation between targets is required

---

## edge cases and considerations

* **missing target**: No camera movement occurs if label is not registered
* **rapid changes**: Transitions are canceled and restarted
* **large scenes**: Bounding calculations may impact performance
* **auto-rotation conflicts**: May interfere with user expectations
* **state sync**: Ensure consistent value management across systems

---

## summary

`PointOfInterestControls` is a composable canvas component that manages camera navigation between labeled targets in a 3D scene. It accepts children, belongs in the canvas layer, and provides smooth, state-driven control over camera movement and interaction.
