## environment

`Environment` is a composable canvas component that provides environmental lighting and background for a 3D scene. You use it to define realistic ambient lighting using HDR images or preset environments.

It controls how light is reflected and diffused across all materials in the scene.

---

## what it does

`Environment` applies a global environment map to the scene.

* Loads environment textures (HDR or image-based)
* Provides ambient and reflection lighting
* Optionally sets the scene background
* Enhances material realism through light interaction
* Skips rendering when no valid environment is provided

It establishes the visual atmosphere of the scene.

---

## classification

* **layer**: canvas
* **role**: environment lighting provider
* **rendering context**: 3D (scene lighting and background)

Use it in the canvas layer to control global lighting and reflections.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render or manage children

It affects the entire scene rather than a local subtree.

---

## composability

* **type**: non-composable (wrapper component)
* **accepts children**: no
* **belongs in**: canvas

`Environment` is a configuration wrapper.

* It wraps an underlying environment system
* Behavior is controlled through properties such as `files`, `preset`, and `blur`

---

## behavior details

### environment source

* Accepts environment input via `files`

* Supports:

  * Array of texture files
  * Single file string

* If no valid input is provided:

  * The component does not render

---

### lighting behavior

* Applies image-based lighting to the scene
* Influences reflections on materials
* Provides soft, global illumination

---

### background control

* Can optionally render the environment as the scene background
* Supports blurring to reduce visual sharpness

---

### blur handling

* Normalizes blur configuration:

  * Uses `backgroundBlurriness` if provided
  * Falls back to `blur` when needed

This ensures consistent behavior across configurations.

---

## when to use

Use `Environment` when you need:

* Realistic lighting from HDR or environment maps
* Global reflections on materials
* A cohesive visual atmosphere

Avoid using it when:

* Lighting is fully controlled by manual light sources
* No environment textures are available
* Performance constraints limit texture usage

---

## edge cases and considerations

* **missing files**: Component renders nothing if no valid files are provided
* **large textures**: High-resolution environments can impact performance
* **over-lighting**: Combining with strong lights may wash out materials
* **blur usage**: Excessive blur reduces visual clarity
* **consistency**: Ensure environment matches scene intent

---

## summary

`Environment` is a composable canvas component that provides global lighting and background using environment maps. It belongs in the canvas layer and enhances realism by controlling how light interacts with the entire 3D scene.
