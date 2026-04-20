## features and slice of life

This section highlights practical workflows and shortcuts that improve speed, consistency, and control when working inside Builder. These features are designed to reduce repetitive work and preserve structure across UI and canvas components.

---

## component context menu (right click)

When you right-click on any component, you get access to powerful structural and styling tools:

* **import components** → `Ctrl + I`
* **export components** → `Ctrl + E`
* **expand** → `Ctrl + F`
* **copy styling props** → `Ctrl + Shift + C`
* **paste styling props** → `Ctrl + Shift + V`

---

### import components

`Import components` allows you to load a saved component structure into Builder.

* Opens your file explorer
* Accepts previously exported component files
* Recreates the full component hierarchy
* Restores all bindings (attributes, state, logic)

**What this means**

* You can reuse complex UI or canvas setups
* You can share components across projects
* You do not lose data connections when importing

---

### export components

`Export components` saves a component (and its full subtree) as a reusable file.

* Works on any selected component
* Includes all children recursively
* Preserves bindings and structure
* Opens file explorer to save locally

**What this means**

* You can create reusable building blocks
* You can version component structures externally
* You can move setups between projects safely

---

### expand

`Expand` reveals the full component hierarchy in the outliner.

* Expands all nested children
* Helps navigate deep structures quickly

**What this means**

* Faster access to deeply nested elements
* Better visibility into complex compositions

---

### copy styling props

Copies advanced styling from a component.

* Captures all CSS overrides and styling props
* Works across UI components

---

### paste styling props

Applies copied styling to another component.

* Pastes all advanced CSS content
* Instantly replicates visual styling

**What this means**

* Maintain visual consistency
* Avoid manual duplication of styles
* Speed up design iteration

---

## canvas workflow: import zip

When you right-click on a **canvas component** in the outliner, you get an additional option:

* **import zip**

This is designed for structured 3D asset ingestion.

---

### what it does

* Accepts a `.zip` file containing models
* Recreates the folder hierarchy as a scene structure
* Automatically nests models correctly

---

### example structure

```
shirt_model
  → base_model.glb
  → cuffs
      → rounded_cuff.glb
      → square_cuff.glb
  → collar
      → standard_collar.glb
      → wing_tip.glb
```

When imported:

* Each folder becomes a logical group
* Each model is placed in the correct hierarchy
* Structure is preserved exactly

---

### why this matters

* Mirrors how assets are organized externally
* Reduces manual scene setup
* Works well with systems like:

  * `ModelVariant`
  * `MaterialVariant`

---

## asset workflow: automatic material setup

The assets outliner includes a powerful naming-based material system.

---

### how it works

Upload multiple texture maps **at once** using a shared prefix:

#### required naming pattern

```
textureName1_map
textureName1_normalMap
textureName1_roughnessMap
textureName1_aoMap
textureName1_lightMap

textureName2_map
textureName2_normalMap
textureName2_roughnessMap
textureName2_aoMap
textureName2_lightMap
```

---

### system behavior

When uploaded:

* A material is automatically created
* All matching maps are assigned correctly
* Material name = shared prefix (e.g., `textureName1`)

---

### important rule

* A single map (e.g., only `texture_map`) will **not trigger material creation**
* At least **multiple related maps** must be present

---

### why this matters

This aligns with the material system:

* **project materials** → consistent base
* **asset materials** → generated variants

It enables:

* Faster material creation
* Reduced manual setup
* Consistent naming across assets

---

## summary

These features are designed to streamline real workflows:

* **component import/export** → reuse and portability
* **expand + styling tools** → faster UI iteration
* **import zip** → structured 3D ingestion
* **auto material setup** → optimized asset pipeline

Together, they reduce manual effort and enforce consistency across both UI and canvas layers.
