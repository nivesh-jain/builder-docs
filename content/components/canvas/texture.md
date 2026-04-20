## texture

`Texture` is a composable canvas component that loads an image and applies it as a texture in a 3D scene. You use it to map external image data onto materials or surfaces.

It provides a declarative way to handle texture loading and updates.

---

## what it does

`Texture` loads and binds an image as a Three.js texture.

* Loads an image from a URL
* Converts the image into a texture source
* Attaches the texture to a parent material or property
* Marks the texture for update when the source changes
* Integrates with the rendering pipeline automatically

It enables dynamic image-based rendering in 3D.

---

## classification

* **layer**: canvas
* **role**: texture resource (image → material input)
* **rendering context**: 3D (material pipeline)

Use it in the canvas layer to apply textures to materials.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** of a material or mesh property
* Attaches itself via `attach` to a target (e.g., `map`)
* Does not render standalone scene nodes

It acts as a resource attachment.

---

## composability

* **type**: composable (attachment component)
* **accepts children**: no
* **belongs in**: canvas

`Texture` is configuration-driven.

* You provide a `url` and optional props
* It handles loading and binding internally

---

## behavior details

### texture loading

* Uses a loader to fetch image data
* Supports caching and reuse across instances
* Handles asynchronous loading safely

---

### texture binding

* Attaches to a parent via `attach` (e.g., `map`, `alphaMap`)
* Provides the loaded image as `source-data`
* Integrates directly with material properties

---

### updates

* Marks the texture as needing update when the image loads
* Ensures changes are reflected in the render output
* Reacts to changes in the `url`

---

### integration

* Works with materials and shaders
* Can be combined with other texture types
* Supports standard Three.js texture behavior

---

## when to use

Use `Texture` when you need:

* Image-based materials (diffuse maps, masks, etc.)
* Dynamic or externally loaded textures
* Declarative texture management

Avoid using it when:

* Textures are static and preloaded
* Direct texture assignment is sufficient

---

## edge cases and considerations

* **missing url**: May result in no texture being applied
* **invalid image**: Loading failure leads to no update
* **performance**: Large textures can impact memory and load time
* **update timing**: Texture updates depend on load completion
* **attach usage**: Incorrect attachment may not apply texture properly

---

## summary

`Texture` is a composable canvas component that loads and applies image textures to materials. It belongs in the canvas layer and provides a clean, reactive way to manage textures in a 3D rendering pipeline.
