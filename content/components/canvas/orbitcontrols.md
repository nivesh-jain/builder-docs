## orbit controls

`OrbitControls` is a composable canvas component that enables interactive camera control in a 3D scene. You use it to allow users to rotate, zoom, and pan around a target.

It provides intuitive navigation for exploring 3D content.

---

## what it does

`OrbitControls` manages camera movement based on user input.

* Allows orbiting around a central target
* Enables zooming in and out within defined limits
* Supports panning across the scene
* Constrains movement using angle and distance bounds
* Responds to mouse, touch, and input events

It gives users direct control over the camera.

---

## classification

* **layer**: canvas
* **role**: camera controller (interaction system)
* **rendering context**: 3D (camera manipulation)

Use it in the canvas layer to enable scene navigation.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render visible content
* Does not accept or manage children

It operates as a scene-level controller.

---

## composability

* **type**: non-composable (behavioral wrapper)
* **accepts children**: no
* **belongs in**: canvas

`OrbitControls` is configured through properties.

* Wraps an underlying control system
* Behavior is driven by input constraints and interaction settings

---

## behavior details

### interaction model

* **orbit**

  * Rotates the camera around a target point

* **zoom**

  * Moves the camera closer or farther

* **pan**

  * Shifts the camera position laterally

---

### constraints

* **distance limits**

  * `minDistance` → closest zoom
  * `maxDistance` → farthest zoom

* **horizontal rotation**

  * `minAzimuthAngle` and `maxAzimuthAngle`

* **vertical rotation**

  * `minPolarAngle` and `maxPolarAngle`

These prevent unwanted or invalid camera movement.

---

### input handling

* Supports mouse and touch gestures
* Updates camera continuously based on interaction
* Integrates with the render loop automatically

---

### defaults and normalization

* Ensures valid constraint values
* Falls back to safe defaults when values are not provided
* Normalizes angle limits to prevent invalid ranges

---

## when to use

Use `OrbitControls` when you need:

* Interactive camera navigation
* Product viewers or 3D previews
* User-controlled exploration of a scene

Avoid using it when:

* Camera movement is fully scripted
* Interaction should be restricted or disabled
* Alternative control systems are required

---

## edge cases and considerations

* **unbounded angles**: Infinite limits may allow disorienting rotation
* **zoom limits**: Improper bounds can break scene visibility
* **interaction conflicts**: May conflict with other input handlers
* **performance**: Frequent updates can impact performance in complex scenes

---

## summary

`OrbitControls` is a composable canvas component that enables interactive camera control in a 3D scene. It belongs in the canvas layer and provides intuitive orbit, zoom, and pan behavior with configurable constraints.
