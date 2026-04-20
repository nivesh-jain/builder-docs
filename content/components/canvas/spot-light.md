## spot light

`SpotLight` is a composable canvas component that emits light in a focused cone toward a target point. You use it to simulate directional light sources such as flashlights, stage lights, or lamps with a defined beam.

It provides controlled, directional illumination with optional shadow and debug support.

---

## what it does

`SpotLight` projects light in a cone from a position toward a target.

* Emits light in a specific direction
* Focuses illumination within a cone angle
* Supports shadow casting for realistic depth
* Allows dynamic targeting of a point in space
* Provides optional debug helpers for visualization

It creates precise, directional lighting effects.

---

## classification

* **layer**: canvas
* **role**: light source (spot / cone)
* **rendering context**: 3D (lighting system)

Use it in the canvas layer for focused lighting.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render or manage children

It affects objects within its light cone.

---

## composability

* **type**: non-composable (single node with behavior)
* **accepts children**: no
* **belongs in**: canvas

`SpotLight` is configured through properties.

* Wraps a native spotlight object from the rendering engine
* Behavior is controlled via props such as intensity, angle, and shadows

---

## behavior details

### light direction

* Uses a target position to define direction
* Internally creates a target object
* Updates direction when the target changes

---

### cone behavior

* Light is restricted to a cone shape
* Angle and falloff define the spread and softness
* Only objects within the cone are illuminated

---

### shadow support

* Supports shadow casting when enabled
* Uses a shadow camera aligned with the cone
* Updates projection matrix when properties change

---

### debug mode

When `debug` is enabled:

* Displays a spotlight helper to visualize the cone
* Shows a shadow camera helper when shadows are active
* Keeps helpers updated every frame

---

### runtime updates

* Responds to changes in target, props, and scene
* Synchronizes light, target, and shadow camera
* Updates continuously during rendering

---

## when to use

Use `SpotLight` when you need:

* Focused, directional lighting
* Effects like flashlights, headlights, or stage lighting
* Controlled illumination of specific areas

Avoid using it when:

* Uniform or ambient lighting is required
* Wide, global illumination is needed

---

## edge cases and considerations

* **shadow cost**: Shadow rendering can be expensive
* **target alignment**: Incorrect target leads to misdirected light
* **cone limits**: Narrow angles may miss intended objects
* **debug overhead**: Helpers add visual and performance cost
* **multiple lights**: Combining spotlights requires careful tuning

---

## summary

`SpotLight` is a composable canvas component that emits focused, cone-shaped light toward a target. It belongs in the canvas layer and provides precise control over directional lighting, shadows, and debugging in a 3D scene.
