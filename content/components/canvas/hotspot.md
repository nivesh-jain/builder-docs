## hotspot

`Hotspot` is a composable canvas component that anchors HTML content to a 3D position in the scene. You use it to attach UI elements—such as labels, tooltips, or controls—to objects in 3D space.

It bridges 3D coordinates with DOM-based UI. 

---

## what it does

`Hotspot` positions and renders HTML elements relative to a 3D object.

* Projects a 3D position into screen space
* Renders HTML content at the projected position
* Updates position on every frame
* Supports scaling based on camera distance
* Handles occlusion (hiding when blocked or behind objects)
* Allows optional 3D transform mode for true spatial alignment

It enables UI to follow and interact with 3D elements.

---

## classification

* **layer**: canvas
* **role**: 3D-to-DOM bridge (anchored UI)
* **rendering context**: hybrid (3D positioning + DOM rendering)

Use it in the canvas layer to connect UI with 3D objects.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Hotspot` defines a hybrid structure:

* `Hotspot` → 3D anchor (group)
* internal DOM root → HTML container
* children → rendered UI content

### hierarchy relationships

* The component exists as a 3D group in the scene
* Its children are rendered into a separate DOM layer
* Position updates are driven by the 3D object's world matrix
* Visibility depends on camera and occlusion logic

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: canvas

`Hotspot` is content-driven.

* You pass UI elements as children
* It handles positioning, projection, and rendering
* No manual synchronization is required

---

## behavior details

### positioning

* Calculates screen position from the 3D world position
* Updates every frame to follow camera and object movement
* Supports custom position calculation

---

### transform modes

* **default mode**

  * Positions UI using screen-space translation

* **transform mode**

  * Applies full 3D transforms using CSS matrices
  * Preserves perspective and depth alignment

---

### scaling

* Can scale UI based on distance from the camera
* Maintains readability across varying depths

---

### occlusion

Supports multiple occlusion strategies:

* **raycast occlusion**

  * Hides UI when blocked by other objects

* **blending occlusion**

  * Adjusts layering with canvas

* **manual occlusion**

  * Controlled via references

---

### visibility handling

* Hides content when:

  * Object is behind the camera
  * Object is occluded (if enabled)

* Can trigger callbacks on visibility changes

---

### layering

* Dynamically updates `z-index` based on depth
* Ensures correct stacking relative to other elements

---

## when to use

Use `Hotspot` when you need:

* Labels or annotations attached to 3D objects
* Tooltips or UI overlays in 3D scenes
* Interactive UI elements linked to spatial positions

Avoid using it when:

* UI does not need to track 3D objects
* Pure 3D rendering is sufficient
* Performance constraints limit DOM updates

---

## edge cases and considerations

* **performance**: Frequent updates and DOM rendering can be costly
* **occlusion complexity**: Raycasting may impact performance in large scenes
* **z-index conflicts**: Ensure proper layering with other UI
* **transform mode**: More accurate but more complex and heavier
* **pointer events**: Must be configured for interactivity

---

## summary

`Hotspot` is a composable canvas component that anchors HTML content to 3D positions. It accepts children, belongs in the canvas layer, and enables seamless integration between 3D scenes and DOM-based UI.
