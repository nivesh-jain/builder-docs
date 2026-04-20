## project material

`ProjectMaterial` is a composable canvas component that retrieves and applies a shared material from a project-level store to a 3D object. You use it to ensure consistent material usage and centralized control across the scene.

It connects scene rendering with a shared material system.

---

## what it does

`ProjectMaterial` binds a stored material to a mesh.

* Retrieves a material using a `materialId`
* Attaches the material to the parent object
* Ensures consistent reuse of material instances
* Updates automatically when the material changes
* Renders nothing if the material is not available

It centralizes material management across components.

---

## classification

* **layer**: canvas
* **role**: material binding (shared resource)
* **rendering context**: 3D (material assignment)

Use it in the canvas layer to apply project-managed materials.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** of a mesh or geometry container
* Attaches itself as the material of the parent
* Does not render independent scene nodes

It acts as an attachment rather than a container.

---

## composability

* **type**: composable (attachment component)
* **accepts children**: yes
* **belongs in**: canvas

`ProjectMaterial` composes behavior through attachment.

* You place it inside a mesh
* It binds the retrieved material to that mesh
* Children can extend or modify the material if needed

---

## behavior details

### material resolution

* Uses a shared project context to retrieve materials
* Identifies materials using `materialId`
* Returns no output if the material is missing

---

### material attachment

* Attaches the material to the parent object
* Reuses the same material instance across multiple components
* Ensures consistent rendering behavior

---

### updates

* Reacts to changes in the project material store
* Updates the material in place without recreating objects

---

### integration

* Works with other systems such as:

  * material variants
  * model loaders
  * asset pipelines

* Enables centralized control over appearance

---

## when to use

Use `ProjectMaterial` when you need:

* Shared materials across multiple objects
* Centralized material management
* Consistent updates to materials

Avoid using it when:

* Materials are local and not reused
* Direct material assignment is sufficient

---

## edge cases and considerations

* **missing material**: Component renders nothing if material is not found
* **shared state**: Changes affect all objects using the same material
* **overrides**: Conflicts may occur with other material modification systems
* **children usage**: Ensure children are compatible with material extension

---

## summary

`ProjectMaterial` is a composable canvas component that binds a shared material to a 3D object. It accepts children, belongs in the canvas layer, and provides a consistent and centralized way to manage materials across a scene.
