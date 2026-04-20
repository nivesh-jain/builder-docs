## directional light

`DirectionalLight` is a composable canvas component that adds directional lighting to a 3D scene. You use it to simulate light coming from a distant source, such as sunlight, with consistent direction across all objects.

It provides both lighting control and optional debugging tools.

---

## what it does

`DirectionalLight` emits parallel light rays in a specific direction.

* Illuminates all objects uniformly from a fixed direction
* Supports shadow casting for realistic depth
* Allows targeting a specific point in space
* Provides optional visual debugging helpers

It defines how light interacts with the scene globally.

---

## classification

* **layer**: canvas
* **role**: light source (directional)
* **rendering context**: 3D (lighting system)

Use it in the canvas layer to control scene illumination.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene or group
* Does not contain or render children

It is a scene-level element.

---

## composability

* **type**: non-composable (single node with behavior)
* **accepts children**: no
* **belongs in**: canvas

`DirectionalLight` is configured through properties.

* It wraps a native light object from the rendering engine
* Behavior is controlled via props such as intensity, color, and shadows

---

## behavior details

### light direction

* Light direction is controlled via a target position
* A hidden target object is created and assigned to the light
* Updating the target updates the direction of the light

---

### shadow support

* Supports shadow casting when enabled
* Updates shadow camera projection when properties change
* Ensures shadows remain accurate as the scene updates

---

### debug mode

When `debug` is enabled:

* Displays a light helper to visualize direction
* Optionally shows a shadow camera helper when shadows are active
* Keeps helpers in sync with the light on every frame

This helps with positioning and tuning.

---

### runtime updates

* Uses frame updates to keep helpers synchronized
* Reacts to prop changes for dynamic lighting control
* Maintains alignment between light, target, and shadow camera

---

## when to use

Use `DirectionalLight` when you need:

* Global illumination from a distant source
* Sunlight-like lighting in outdoor scenes
* Consistent shadows across objects

Avoid using it when:

* Light needs to originate from a point (use point light)
* Light should be localized or directional within a small area

---

## edge cases and considerations

* **shadow cost**: Shadow rendering can impact performance
* **target management**: Incorrect target positioning affects lighting direction
* **debug overhead**: Helpers add visual and performance overhead
* **scene scale**: Ensure shadow camera settings match scene size
* **multiple lights**: Combining lights requires careful balancing

---

## summary

`DirectionalLight` is a composable canvas component that provides directional lighting for a 3D scene. It belongs in the canvas layer and offers control over light direction, shadows, and debugging, making it essential for realistic scene illumination.
