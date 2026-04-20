## global audio

`GlobalAudio` is a composable canvas component that provides non-spatial audio playback across a 3D scene. You use it to play background music, ambient sound, or UI audio that is not tied to any position in space.

It integrates audio into the scene without affecting spatial rendering. 

---

## what it does

`GlobalAudio` manages scene-wide audio playback.

* Loads and decodes audio from a given source
* Attaches a single audio listener to the active camera
* Plays audio globally (non-positional)
* Supports looping, volume control, and autoplay
* Exposes playback controls through an internal API
* Safely handles browser autoplay restrictions

It ensures consistent and reliable audio behavior across the scene.

---

## classification

* **layer**: canvas
* **role**: global audio source (non-spatial)
* **rendering context**: 3D (audio system)

Use it in the canvas layer to add ambient or background sound.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within a 3D scene
* Does not render visible output
* Does not accept or manage children

It operates as a scene-level service component.

---

## composability

* **type**: non-composable (behavioral component)
* **accepts children**: no
* **belongs in**: canvas

`GlobalAudio` is driven entirely by configuration and state.

* It does not render UI or visual elements
* It exposes behavior through props and an imperative API

---

## behavior details

### audio loading and caching

* Loads audio using a shared loader
* Caches decoded buffers to avoid duplicate work
* Reuses buffers across instances

---

### listener management

* Ensures only one audio listener per camera
* Attaches the listener automatically
* Cleans up when no longer needed

---

### playback control

* Supports:

  * play
  * pause
  * stop
  * volume adjustment

* Provides an internal API for external control

---

### autoplay handling

* Attempts autoplay when enabled
* Respects browser restrictions
* Resumes playback after user interaction if needed

---

### lifecycle behavior

* Initializes audio when a valid source is available
* Updates playback when props change
* Cleans up audio resources on unmount

---

## when to use

Use `GlobalAudio` when you need:

* Background music for a scene
* Ambient sound layers
* UI or non-spatial audio feedback

Avoid using it when:

* Audio needs a position in 3D space (use positional audio)
* Complex audio graphs or effects are required

---

## edge cases and considerations

* **autoplay restrictions**: Browsers may block playback until user interaction
* **missing source**: No audio plays if no valid URL is provided
* **multiple instances**: Listener is shared, but overlapping audio may occur
* **performance**: Large audio files may increase load time
* **silent failure**: Errors are handled gracefully and do not break the scene

---

## summary

`GlobalAudio` is a composable canvas component that provides global, non-spatial audio playback for a 3D scene. It belongs in the canvas layer and manages loading, playback, and lifecycle of audio while ensuring stable and predictable behavior.
