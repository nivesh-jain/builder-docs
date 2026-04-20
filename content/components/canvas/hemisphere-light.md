## hemisphere light

`HemisphereLight` is a composable canvas component that provides ambient lighting based on two colors—one from above and one from below. You use it to simulate natural environmental light, such as sky and ground illumination.

It creates soft, non-directional lighting across the scene.

---

## what it does

`HemisphereLight` emits light from two hemispheres.

* Applies one color from above (sky light)
* Applies another color from below (ground reflection)
* Blends lighting smoothly across surfaces
* Illuminates all objects without casting shadows
* Supports optional debug visualization

It provides subtle, realistic ambient lighting.

---

## classification

* **layer**: canvas
* **role**: ambient light source (hemisphere)
* **rendering context**: 3D (lighting system)

Use it in the canvas layer to simulate environmental lighting.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render or manage children

It affects the entire scene globally.

---

## composability

* **type**: non-composable (single node with behavior)
* **accepts children**: no
* **belongs in**: canvas

`HemisphereLight` is configured through properties.

* Wraps a native light object from the rendering engine
* Behavior is controlled via props such as color, intensity, and position

---

## behavior details

### lighting model

* Combines two light sources:

  * **sky color** → applied from above
  * **ground color** → applied from below

* Creates a gradient-like lighting effect across surfaces

---

### shadow behavior

* Does not cast shadows
* Used primarily for ambient illumination

---

### debug mode

When `debug` is enabled:

* Displays a helper to visualize light position and influence
* Helps with tuning light placement and intensity

---

### rendering behavior

* Contributes evenly to all objects in the scene
* Does not depend on direction targeting
* Works well in combination with other light types

---

## when to use

Use `HemisphereLight` when you need:

* Soft ambient lighting
* Outdoor or natural lighting approximation
* Base illumination before adding directional lights

Avoid using it when:

* Sharp shadows or directional lighting are required
* Precise light control is needed

---

## edge cases and considerations

* **no shadows**: Cannot be used for shadow casting
* **color balance**: Incorrect color combinations may look unnatural
* **over-lighting**: Combining with strong lights may flatten contrast
* **debug overhead**: Helpers may affect performance slightly

---

## summary

`HemisphereLight` is a composable canvas component that provides ambient lighting using sky and ground colors. It belongs in the canvas layer and is ideal for creating soft, natural illumination across a 3D scene.
