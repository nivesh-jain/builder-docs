## point of interest

`PointOfInterest` is a composable canvas component that defines a labeled, interactive anchor within a 3D scene. You use it to mark important locations and enable camera or editor-driven interactions around those points.

It acts as both a spatial marker and an interaction hook.

---

## what it does

`PointOfInterest` registers and manages a named location in 3D space.

* Defines a position, rotation, and scale in the scene
* Registers itself with a control system using a label
* Enables camera-related interactions (e.g., focus or navigation)
* Supports debug visualization for editing and alignment
* Exposes interaction events for editor integration

It connects scene structure with interaction logic.

---

## classification

* **layer**: canvas
* **role**: interaction anchor (spatial marker)
* **rendering context**: 3D (scene + interaction system)

Use it in the canvas layer to define navigable or interactive points.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`PointOfInterest` is a grouped scene node:

* `PointOfInterest` → root group
* children → attached scene content
* debug mesh → optional visual marker
* helper → optional directional indicator

### hierarchy relationships

* Wraps children inside a transformable group
* Registers its identity externally using a label
* Maintains a reference for interaction systems
* Debug elements are conditionally rendered

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: canvas

`PointOfInterest` is structure and behavior combined.

* You can attach any 3D content as children
* It augments that content with interaction and metadata
* No strict internal subcomponents are required

---

## behavior details

### registration

* Registers itself using a `label`
* Associates the label with its internal identifier
* Automatically unregisters on unmount

---

### transform control

* Accepts:

  * `position`
  * `rotation`
  * `scale`

* Applies these to the underlying group

---

### interaction behavior

* Handles double-click events in debug mode
* Aligns itself to face the camera on interaction
* Sends updates to an external system for persistence

---

### debug mode

When `debug` is enabled:

* Renders a semi-transparent box as a visual marker
* Displays a directional helper
* Enables interaction for editing (e.g., rotation updates)

---

### integration

* Connects with:

  * camera system (for orientation)
  * control system (for registration)
  * external messaging system (for updates)

* Stores metadata in `userData` for external access

---

## when to use

Use `PointOfInterest` when you need:

* Named locations in a 3D scene
* Camera navigation targets
* Interactive markers for editing or exploration
* Structured points for storytelling or guided flows

Avoid using it when:

* No interaction or navigation is required
* Static positioning is sufficient without labeling

---

## edge cases and considerations

* **duplicate labels**: May cause conflicts in registration
* **debug-only behavior**: Some features are only active in debug mode
* **interaction scope**: Ensure event handling does not conflict with other controls
* **metadata reliance**: External systems may depend on stored `userData`
* **visual clutter**: Debug helpers should be disabled in production

---

## summary

`PointOfInterest` is a composable canvas component that defines interactive, labeled anchors in a 3D scene. It accepts children, belongs in the canvas layer, and enables structured navigation, interaction, and editor integration around key spatial locations.
