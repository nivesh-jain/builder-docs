## accumulative shadows

`AccumulativeShadows` is a composable canvas component that renders soft, realistic shadows by accumulating multiple lighting samples over time. You use it to achieve high-quality contact shadows without relying on expensive real-time shadow maps.

It trades time (frames) for visual fidelity.

---

## what it does

`AccumulativeShadows` builds soft shadows through progressive accumulation.

* Renders shadows onto a receiving surface (typically a plane)
* Accumulates lighting over multiple frames
* Blends results into a smooth, noise-free shadow
* Supports dynamic or static accumulation modes
* Allows lights to contribute incrementally

It produces high-quality soft shadows with controlled performance.

---

## classification

* **layer**: canvas
* **role**: shadow renderer (accumulative)
* **rendering context**: 3D (lighting + shadow pipeline)

Use it in the canvas layer for advanced shadow rendering.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`AccumulativeShadows` defines a coordinated structure:

* `AccumulativeShadows` → root shadow system
* shadow plane → receiving surface
* light contributors → child components

### hierarchy relationships

* Provides a shadow-receiving surface internally
* Children (typically lights) register as contributors
* Each child participates in the accumulation process
* The system manages updates and blending

---

## composability

* **type**: composable (compound system)
* **accepts children**: yes
* **belongs in**: canvas

`AccumulativeShadows` coordinates multiple parts.

* You wrap light components inside it
* It manages how those lights contribute to shadows
* It exposes internal control through context

---

## behavior details

### accumulation model

* Shadows are built over multiple frames
* Each frame contributes partial lighting information
* Results are blended into a final shadow texture

---

### update control

Provides internal control methods:

* `reset()` → clears accumulated shadow data
* `update(frames?)` → accumulates shadows over a number of frames

This allows manual or programmatic control.

---

### light integration

* Children register as light contributors
* Each light can update the accumulation
* Supports dynamic or animated lighting

---

### shadow surface

* Uses an internal plane geometry
* Receives and displays accumulated shadows
* Can be accessed via context (`getMesh`)

---

### performance behavior

* Initial frames may show noise or incomplete shadows
* Quality improves as accumulation progresses
* Can be limited to a fixed number of frames for performance

---

## when to use

Use `AccumulativeShadows` when you need:

* Soft, realistic contact shadows
* High-quality shadow rendering without heavy real-time cost
* Controlled shadow accumulation over time

Avoid using it when:

* Immediate, fully-resolved shadows are required
* Scene is highly dynamic with constant changes
* Simpler shadow techniques are sufficient

---

## edge cases and considerations

* **initial noise**: Shadows appear noisy before accumulation completes
* **dynamic scenes**: Moving objects may require frequent resets
* **performance tradeoff**: More frames = better quality but slower convergence
* **light setup**: Requires proper light configuration for best results
* **surface dependency**: Shadows only appear on the receiving plane

---

## summary

`AccumulativeShadows` is a composable canvas component that generates soft shadows by accumulating lighting over multiple frames. It accepts children, belongs in the canvas layer, and provides a powerful, performance-aware approach to realistic shadow rendering in 3D scenes.
