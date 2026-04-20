## canvas texture

`CanvasTexture` is a composable canvas component that renders 2D content and maps it as a live texture in a 3D scene. You use it to drive 3D materials using dynamic canvas-based visuals.

It bridges 2D drawing and 3D rendering.

---

## what it does

`CanvasTexture` generates a texture from canvas-rendered content.

* Renders children into an offscreen canvas
* Uses the canvas as a texture source
* Updates the texture whenever the canvas redraws
* Synchronizes 2D visuals with 3D materials in real time

It enables dynamic, UI-driven visuals inside a 3D environment.

---

## classification

* **layer**: canvas
* **role**: texture generator (2D → 3D bridge)
* **rendering context**: 3D (material pipeline)

Use it in the canvas layer when working with textures in a 3D scene.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`CanvasTexture` defines a dual rendering structure:

* `CanvasTexture` → texture node
* `Stage` → canvas root
* `Layer` → drawing surface
* children → rendered content

### hierarchy relationships

* Children are rendered into a hidden canvas layer
* The canvas output is used as the texture source
* The texture is applied within the 3D rendering pipeline
* Updates flow from canvas → texture → material

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: canvas

`CanvasTexture` composes multiple rendering systems.

* You provide canvas content as children
* It manages texture creation and updates internally
* No manual synchronization is required

---

## behavior details

### rendering pipeline

* Children render inside a canvas (`Stage` → `Layer`)
* The canvas is not directly visible
* Its output is captured as a texture

---

### texture updates

* Listens to canvas draw events
* Marks the texture for update on each redraw
* Keeps the texture in sync with canvas content

---

### sizing

* Accepts `width` and `height`
* Defines the resolution of the texture
* Affects visual clarity in 3D space

---

### integration

* Works within a 3D renderer (e.g., React Three Fiber)
* Produces a texture compatible with materials
* Updates automatically as content changes

---

## when to use

Use `CanvasTexture` when you need:

* Dynamic textures driven by canvas content
* Text, graphics, or UI rendered onto 3D objects
* Real-time updates to material appearance

Avoid using it when:

* Static textures are sufficient
* Performance constraints limit frequent updates
* No interaction between canvas and 3D is required

---

## edge cases and considerations

* **performance**: Frequent redraws can impact rendering performance
* **resolution**: Low dimensions reduce texture quality
* **hidden rendering**: Canvas content is not directly visible
* **update dependency**: Relies on draw events for synchronization
* **render timing**: Ensure alignment with the 3D render loop

---

## summary

`CanvasTexture` is a composable canvas component that converts 2D canvas content into a live 3D texture. It accepts children, belongs in the canvas layer, and enables dynamic, real-time visuals within the 3D rendering pipeline.
