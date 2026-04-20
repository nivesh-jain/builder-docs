## gltf model

`GltfModel` is a composable canvas component that loads, clones, and renders a 3D model from a GLTF asset. You use it to bring external 3D content into your scene with support for material overrides and shadow control.

It provides a structured way to manage imported models within the rendering pipeline.

---

## what it does

`GltfModel` loads and renders a GLTF scene with runtime customization.

* Loads a model from a given asset URL
* Clones the scene to avoid shared mutations
* Injects mesh metadata during parsing
* Applies material overrides based on mesh index
* Configures shadow behavior for all meshes
* Suspends rendering until the model is ready

It turns static assets into configurable scene elements.

---

## classification

* **layer**: canvas
* **role**: model loader and renderer
* **rendering context**: 3D (scene graph)

Use it in the canvas layer to render and customize 3D models.

---

## hierarchy behavior

* **can be a parent**: yes (indirectly, via scene graph)
* **can be a child**: yes

### structure rules

`GltfModel` represents a scene subtree:

* `GltfModel` → root model container
* internal scene → cloned GLTF hierarchy
* meshes → renderable geometry nodes

### hierarchy relationships

* The loaded scene becomes part of the parent scene graph
* All meshes and groups are nested under the model root
* The component does not manage explicit children
* Transformations apply to the entire model

---

## composability

* **type**: non-composable (asset-driven component)
* **accepts children**: no
* **belongs in**: canvas

`GltfModel` is driven by external assets and configuration.

* It wraps a loaded scene object
* Behavior is controlled through props and overrides
* Composition happens internally through the model structure

---

## behavior details

### asset loading

* Loads GLTF assets asynchronously
* Suspends rendering until the model is available
* Ensures safe rendering without partial states

---

### scene cloning

* Clones the loaded scene to avoid shared references
* Allows multiple instances of the same asset
* Prevents unintended side effects between instances

---

### metadata injection

* Extends the GLTF parser to assign `meshIndex` to each mesh
* Stores metadata in `userData`
* Enables targeted overrides per mesh

---

### material overrides

* Matches meshes using `meshIndex`
* Applies materials from a shared material store
* Updates materials dynamically when overrides change

---

### shadow configuration

* Applies `castShadow` and `receiveShadow` to all meshes
* Ensures consistent lighting interaction
* Updates when shadow props change

---

## when to use

Use `GltfModel` when you need:

* To load and render GLTF/GLB models
* Per-mesh material customization
* Multiple instances of the same model
* Consistent shadow behavior across models

Avoid using it when:

* You need fine-grained control over individual meshes (use lower-level primitives)
* The model is static and does not require overrides
* Performance constraints limit cloning large scenes

---

## edge cases and considerations

* **missing asset**: Renders nothing if the model fails to load
* **large models**: Cloning and traversal can impact performance
* **override mismatch**: Invalid mesh indices result in no material change
* **material availability**: Overrides depend on external material definitions
* **suspense fallback**: No fallback UI is shown during loading

---

## summary

`GltfModel` is a composable canvas component that loads, clones, and renders GLTF models with support for material overrides and shadow configuration. It belongs in the canvas layer and provides a flexible, structured way to integrate external 3D assets into your scene.
