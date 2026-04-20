## positional audio

`PositionalAudio` is a composable canvas component that attaches spatial audio to a position in a 3D scene. You use it to simulate sound that changes based on distance and orientation relative to the camera.

It brings realistic, location-based audio into the scene. 

---

## what it does

`PositionalAudio` plays sound from a specific point in 3D space.

* Attaches audio to a scene object or group
* Adjusts volume based on distance from the camera
* Supports different attenuation models
* Updates audio behavior as the camera moves
* Optionally renders a debug helper for visualization
* Exposes playback controls through an internal API

It makes sound behave like a physical element in the scene.

---

## classification

* **layer**: canvas
* **role**: spatial audio source
* **rendering context**: 3D (audio system)

Use it in the canvas layer for location-based sound.

---

## hierarchy behavior

* **can be a parent**: yes (via group wrapper)
* **can be a child**: yes

### structure rules

`PositionalAudio` is attached within the scene graph:

* `PositionalAudio` → group container
* audio node → spatial audio source
* helper (optional) → debug visualization

### hierarchy relationships

* Inherits position, rotation, and scale from its parent
* Moves with the object it is attached to
* Audio output depends on camera position and orientation

---

## composability

* **type**: non-composable (behavioral component with optional helper)
* **accepts children**: no
* **belongs in**: canvas

`PositionalAudio` is driven by spatial configuration.

* It does not render UI or accept children
* It integrates directly into the scene graph

---

## behavior details

### spatial audio model

* Uses distance-based attenuation
* Supports:

  * `refDistance` → distance with full volume
  * `rolloffFactor` → rate of volume decrease
  * `distanceModel` → attenuation curve (`linear`, `inverse`, `exponential`)
  * `maxDistance` → maximum audible range

---

### playback behavior

* Supports:

  * play
  * pause
  * stop
  * volume control

* Can autoplay when conditions allow

* Respects browser audio policies

---

### buffer loading

* Loads audio using a shared loader
* Caches and reuses decoded buffers
* Updates audio when the source changes

---

### debug helper

When enabled:

* Renders visual guides for:

  * reference distance
  * attenuation falloff
  * maximum range

* Helps with tuning spatial audio behavior

---

### lifecycle behavior

* Initializes when a valid audio source is provided
* Updates when props change
* Cleans up safely without affecting the scene

---

## when to use

Use `PositionalAudio` when you need:

* Sound tied to objects or locations
* Immersive audio in 3D environments
* Distance-based audio effects

Avoid using it when:

* Audio should be global (use global audio instead)
* Spatial positioning is not required

---

## edge cases and considerations

* **no listener**: Requires an existing audio listener in the scene
* **autoplay restrictions**: May require user interaction to start playback
* **performance**: Multiple audio sources can impact performance
* **distance tuning**: Incorrect parameters may produce unrealistic sound
* **debug usage**: Helpers should be disabled in production

---

## summary

`PositionalAudio` is a composable canvas component that provides spatial, distance-based audio in a 3D scene. It belongs in the canvas layer and enables realistic sound behavior by tying audio to position and movement within the scene.
