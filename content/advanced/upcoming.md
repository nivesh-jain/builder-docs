## upcoming features

This section outlines upcoming capabilities designed to improve reuse, customization, visualization, and overall workflow inside Builder. These features extend both the UI and canvas layers, with a strong focus on scalability and user experience.

---

## componentization and smart components

Create once. Reuse everywhere.

* Convert any component tree into a **smart component**
* Reuse it across multiple places in your project
* Changes to structure or styling automatically propagate

**what this enables**

* Consistent design systems
* Faster iteration across large projects
* Centralized updates without duplication

---

## image upload and customization

Bring user-driven content into your experience.

* Upload images directly through the widget
* Use uploaded images inside UI or canvas
* Bind images to attributes or materials

**what this enables**

* Personalization (e.g., custom prints, textures)
* Dynamic content driven by users

---

## customization and share

Share live configurations.

* Share what you see in the canvas with others
* Preserve current state and configuration
* Enable collaborative experiences

---

## download and share

Export visual output.

* Download canvas output as an image
* Capture current configuration and view

**what this enables**

* Sharing product configurations
* Generating previews or assets

---

## v-ton (virtual try-on)

Bring products into context.

* Try products in real-world scenarios
* Align models with user environment or input

**what this enables**

* Apparel try-on
* Product visualization in context

---

## ar (augmented reality)

Extend the canvas into the real world.

* View models in AR
* Place objects in physical space

**what this enables**

* Real-world product placement
* Immersive interaction beyond screen

---

## dynamic thumbnails

Make previews state-aware.

* Change thumbnails based on attributes
* Reflect user selections dynamically

**what this enables**

* Better visual feedback
* Context-aware previews

---

## post-processing components

Enhance rendering quality.

* Add effects like:

  * vignette
  * ambient occlusion (e.g., `n8ao`)

**what this enables**

* Cinematic visuals
* Improved depth and realism

---

## 3d helpers and transform tools

Improve control over scene elements.

* Helpers for:

  * scale
  * rotation
  * position

* Visual tools for manipulating objects

**what this enables**

* Easier scene editing
* Precise control over placement

---

## boundary visualization

Understand spatial layout clearly.

* Display friendly boundary boxes
* Show the space a component occupies

**what this enables**

* Better layout decisions
* Reduced overlap and misplacement

---

## validation indicators

Catch issues early.

* Red indicators on components when:

  * Required props are missing
  * Invalid children are passed
  * Configuration may cause crashes

**what this enables**

* Faster debugging
* Safer composition

---

## ui tree import

Import full UI structures.

* Import entire UI component trees
* Preserve hierarchy and relationships
* Not limited to single components

**what this enables**

* Faster onboarding of complex layouts
* Better understanding of structure
* Reusable UI patterns

---

## material enhancements

These upcoming features extend the material system to improve flexibility, performance, and control over rendering. They build directly on the existing **project material → asset material → variant** workflow.

---

## dynamic texture maps

Apply logic directly to texture maps within the same material.

---

### what it does

* Allows individual maps (e.g., normal, roughness) to be dynamic
* Keeps the base material consistent
* Updates only specific maps based on logic or state

---

### example

You can:

* Keep:

  * base color
  * roughness
  * metalness

* Dynamically change:

  * normal map

This allows variations like:

* smooth surface → subtle normal
* rough surface → strong normal

Without creating multiple materials.

---

### why it matters

* Reduces number of materials in the scene
* Improves rendering performance
* Enables fine-grained visual control
* Works seamlessly with dynamic values and attributes

---

### use cases

* Product customization (surface detail changes)
* Performance optimization (reuse materials)
* State-driven visuals (hover, selection, variants)

---

## orm map support (channel packing)

Support for **ORM maps** (Occlusion, Roughness, Metalness packed into one texture).

---

### what it does

* Allows a single texture to store multiple material properties

* Lets you select which channel to use:

  * **R** → Red
  * **G** → Green
  * **B** → Blue
  * **A** → Alpha

* Assign channels per material property

---

### example

A single ORM texture:

* **R channel** → ambient occlusion
* **G channel** → roughness
* **B channel** → metalness

Instead of three separate textures.

---

### why it matters

* Reduces number of texture files
* Saves memory and bandwidth
* Improves loading performance
* Aligns with industry-standard PBR workflows

---

### workflow improvement

When assigning a map:

* You choose:

  * texture
  * channel (R / G / B / A)

This makes optimization explicit and user-controlled.

---

---

## fps counter and debug tools

Measure and optimize performance with precision.

### what it does

* Displays real-time FPS inside the canvas
* Provides debug overlays for performance metrics
* Helps identify bottlenecks in rendering or logic

### what this enables

* Consistent benchmarking across devices
* Better optimization decisions
* Faster debugging of performance-heavy scenes

---

## 3d model animations

Bring static models to life.

### what it does

* Supports playback of embedded model animations
* Controls for:

  * play
  * pause
  * loop
  * timeline scrubbing (future scope)

### what this enables

* Interactive product demos
* State-driven animations (e.g., open/close, transitions)
* More immersive user experiences

---

## extended post-processing effects

Expand visual fidelity with advanced rendering effects.

### what it does

Adds support for additional post-processing components such as:

* bloom
* blur
* color grading
* god rays
* screen space ambient occlusion (SSAO)
* shock wave effects
* tone mapping

### what this enables

* Cinematic rendering inside the canvas
* Fine control over visual mood and lighting
* High-quality presentation without external tools

---


## summary

These upcoming features focus on:

* **reuse** → smart components, UI tree import
* **customization** → image upload, dynamic thumbnails
* **sharing** → canvas sharing and export
* **immersion** → AR, virtual try-on
* **visual quality** → post-processing, AO
* **usability** → helpers, boundaries, validation
* **dynamic texture maps** → logical, map-level control without duplicating materials
* **orm support** → efficient texture packing with channel-level selection
* **performance insight** → FPS tracking and debugging tools
* **interactivity** → animation playback and control
* **visual quality** → advanced post-processing effects

Together, they push Builder toward a more scalable, interactive, reduce asset weight, improve rendering performance, enable more advanced, scalable material workflows and production-ready platform.

