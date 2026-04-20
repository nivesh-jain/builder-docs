## contact shadows

`ContactShadows` is a composable canvas component that renders soft, real-time contact shadows directly beneath objects. You use it to simulate subtle grounding shadows without requiring traditional shadow-casting lights.

It provides a fast and visually effective approximation of shadows close to surfaces.

---

## what it does

`ContactShadows` generates soft shadows under objects.

* Renders shadows onto a flat receiving surface
* Does not require a light source to cast shadows ([Wawa Sensei][1])
* Uses depth-based rendering to approximate contact shadows
* Produces soft, blurred shadows for realism
* Updates in real time as objects move

It creates lightweight, believable shadows with minimal setup.

---

## classification

* **layer**: canvas
* **role**: shadow renderer (contact / screen-space approximation)
* **rendering context**: 3D (shadow projection)

Use it in the canvas layer for efficient ground shadows.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a scene
* Positioned beneath objects (usually aligned with ground)
* Does not render or manage children

It acts as a shadow receiver.

---

## composability

* **type**: non-composable (single-purpose rendering component)
* **accepts children**: no
* **belongs in**: canvas

`ContactShadows` is configuration-driven.

* Controlled via props such as position, scale, blur, and opacity
* Does not require composition with subcomponents

---

## behavior details

### shadow model

* Projects shadows onto a plane facing upward (Y-axis) ([Drei Documentation][2])
* Captures depth information from objects above
* Converts depth into soft shadow textures

---

### visual characteristics

* Produces soft, diffused shadows
* Focuses on **contact areas** (where objects meet surfaces)
* Does not simulate full directional shadows

---

### performance

* Lightweight compared to traditional shadow maps
* Does not require shadow-casting lights
* Suitable for real-time and interactive scenes

---

### positioning

* Must be placed correctly relative to objects
* Typically aligned with the ground plane
* Shadow quality depends on scale and distance settings

---

## when to use

Use `ContactShadows` when you need:

* Soft grounding shadows under objects
* Lightweight shadow rendering
* Real-time interaction without heavy lighting setup

Avoid using it when:

* Accurate, directional shadows are required
* Shadows must extend far from objects
* Complex lighting interactions are needed

---

## edge cases and considerations

* **limited realism**: Only simulates contact shadows, not full shadows
* **plane dependency**: Shadows only appear on the receiving surface
* **position sensitivity**: Incorrect placement can break the illusion
* **no light interaction**: Does not respond to actual light sources
* **scale tuning**: Requires adjustment for different scene sizes

---

## summary

`ContactShadows` is a composable canvas component that renders soft, real-time shadows beneath objects without requiring light sources. It belongs in the canvas layer and provides a fast, efficient way to ground objects visually in a 3D scene.

[1]: https://wawasensei.dev/courses/react-three-fiber/lessons/shadows?utm_source=chatgpt.com "Shadows"
[2]: https://drei.docs.pmnd.rs/staging/contact-shadows?utm_source=chatgpt.com "ContactShadows - Drei"
