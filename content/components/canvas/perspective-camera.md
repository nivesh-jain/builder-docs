## perspective camera

`PerspectiveCamera` is a composable canvas component that defines how a 3D scene is viewed using perspective projection. You use it to simulate a real-world camera where objects appear smaller as they move farther away.

It controls the viewpoint and framing of the entire scene.

---

## what it does

`PerspectiveCamera` renders the scene using perspective projection.

* Mimics how the human eye perceives depth
* Controls what part of the scene is visible
* Defines field of view, aspect ratio, and clipping range
* Can set itself as the default active camera
* Can render content or follow children in the scene

It determines how the scene is seen, not what is rendered. ([Three.js][1])

---

## classification

* **layer**: canvas
* **role**: camera (view controller)
* **rendering context**: 3D (projection system)

Use it in the canvas layer to define the scene’s viewpoint.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`PerspectiveCamera` acts as a scene node:

* `PerspectiveCamera` → camera node
* children → optional attached content

### hierarchy relationships

* Can be placed anywhere in the scene graph
* Children follow the camera’s transform
* Can become the active camera when `makeDefault` is used
* Affects rendering globally, not just locally

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: canvas

`PerspectiveCamera` is flexible in structure.

* Can be used as a standalone camera
* Can wrap children that move with the camera
* Can render to textures using a render function

---

## behavior details

### perspective projection

* Objects closer to the camera appear larger
* Objects farther away appear smaller
* Creates depth and realism in the scene ([Medium][2])

---

### core parameters

* **fov** → field of view (vertical angle)
* **aspect** → width / height ratio
* **near** → closest visible distance
* **far** → farthest visible distance

These define the camera’s viewing frustum. ([Three.js][1])

---

### default camera behavior

* `makeDefault` sets it as the active camera
* Automatically integrates with controls and rendering
* Only one camera is active at a time

---

### responsive vs manual mode

* **responsive (default)**

  * Automatically updates aspect ratio

* **manual**

  * Requires manual updates (`updateProjectionMatrix`)
  * Gives full control over projection

---

### render-to-texture support

* Can render its view into a texture
* Accepts a render function as a child
* Useful for mirrors, screens, or portals

---

## when to use

Use `PerspectiveCamera` when you need:

* Realistic 3D viewing
* Depth perception in scenes
* Standard camera setup for most applications

Avoid using it when:

* You need uniform scaling without perspective (use orthographic camera)
* UI-like rendering without depth is required

---

## edge cases and considerations

* **incorrect aspect ratio**: Can distort the scene
* **near/far clipping**: Objects may disappear if values are poorly set
* **multiple cameras**: Only one can be active at a time
* **extreme fov**: Can cause distortion (fisheye effect)
* **manual mode**: Requires careful updates to projection

---

## summary

`PerspectiveCamera` is a composable canvas component that defines how a 3D scene is viewed using perspective projection. It accepts children, belongs in the canvas layer, and is the standard way to create realistic depth and camera behavior in 3D applications.

[1]: https://threejs.org/docs/pages/PerspectiveCamera.html?utm_source=chatgpt.com "PerspectiveCamera – three.js docs"
[2]: https://medium.com/%40gopisaikrishna.vuta/exploring-cameras-in-three-js-32e268a6bebd?utm_source=chatgpt.com "Exploring Cameras in Three.js"
