## point light

`PointLight` is a composable canvas component that emits light in all directions from a single point in 3D space. You use it to simulate localized light sources such as bulbs, lamps, or glowing objects.

It provides radial illumination with optional shadow support.

---

## what it does

`PointLight` emits light uniformly in every direction.

* Illuminates objects from a central position
* Affects nearby surfaces based on distance and intensity
* Supports shadow casting for realistic lighting
* Provides optional debug helpers for visualization
* Updates shadow camera when properties change

It creates focused, localized lighting within the scene.

---

## classification

* **layer**: canvas
* **role**: light source (point)
* **rendering context**: 3D (lighting system)

Use it in the canvas layer to simulate local light sources.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render or manage children

It affects surrounding objects based on position.

---

## composability

* **type**: non-composable (single node with behavior)
* **accepts children**: no
* **belongs in**: canvas

`PointLight` is configured through properties.

* Wraps a native light object from the rendering engine
* Behavior is controlled via props such as intensity, distance, and decay

---

## behavior details

### lighting model

* Emits light equally in all directions
* Intensity decreases with distance (based on decay)
* Position determines the center of influence

---

### shadow support

* Supports shadow casting when enabled
* Uses an internal shadow camera
* Updates projection matrix when properties change

---

### debug mode

When `debug` is enabled:

* Displays a point light helper to visualize position
* Shows a shadow camera helper when shadows are active
* Helps with tuning light placement and shadow bounds

---

### runtime updates

* Reacts to prop changes dynamically
* Keeps shadow camera aligned with light settings
* Ensures consistent lighting behavior

---

## when to use

Use `PointLight` when you need:

* Localized lighting (lamps, bulbs, effects)
* Radial illumination from a single point
* Dynamic lighting tied to object position

Avoid using it when:

* Directional or global lighting is required
* Performance constraints limit multiple shadow lights

---

## edge cases and considerations

* **shadow cost**: Point light shadows are expensive to render
* **range control**: Incorrect distance or decay can produce unrealistic results
* **multiple lights**: Too many point lights can degrade performance
* **debug overhead**: Helpers add visual and performance cost

---

## summary

`PointLight` is a composable canvas component that emits light in all directions from a single point. It belongs in the canvas layer and is ideal for simulating localized light sources with optional shadow and debugging support.
