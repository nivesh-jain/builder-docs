## slider

`Slider` is a composable UI component that allows users to select a value from a continuous or discrete range. You use it for inputs such as volume, price ranges, or intensity controls.

It provides a direct, visual way to adjust values.

---

## what it does

`Slider` enables value selection through dragging.

* Lets users move a thumb along a track
* Represents the selected value visually
* Updates continuously as the thumb moves
* Supports single or range-based selection

It makes numeric input intuitive and interactive.

---

## classification

* **layer**: UI
* **role**: input control (range selection)
* **rendering context**: interactive

Use it in the UI layer for adjusting values within a defined range.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Slider` follows a structured hierarchy:

* `Slider` → root container
* `SliderTrack` → base track
* `SliderRange` → filled portion of the track
* `SliderThumb` → draggable control

### hierarchy relationships

* `Slider` is the **parent** managing value and interaction
* `SliderTrack` defines the full range
* `SliderRange` reflects the selected portion
* `SliderThumb` is the **interactive element** that controls value

This structure separates interaction from visual representation.

---

## composability

* **type**: composable (compound component)

`Slider` is built from coordinated subcomponents:

* Use `SliderTrack` to define the range
* Use `SliderRange` to visualize selection
* Use `SliderThumb` to control interaction

This allows flexible customization while maintaining consistent behavior.

---

## behavior details

* **interaction**

  * Drag the thumb to adjust value
  * Supports mouse and touch input

* **visual feedback**

  * Range fills based on selected value
  * Thumb position reflects current state

* **focus and accessibility**

  * Focus styles indicate active interaction
  * Keyboard interaction is supported

* **layout**

  * Horizontal by default
  * Can be adapted for different sizes

---

## when to use

Use `Slider` when you need:

* Continuous value selection
* Quick adjustments with visual feedback
* Compact controls for numeric ranges

Avoid using it when:

* Exact values must be entered precisely (use input fields)
* Options are discrete and limited (use select or radio group)

---

## edge cases and considerations

* **precision**: Sliders may not be ideal for fine-grained values
* **range clarity**: Clearly indicate min and max values
* **thumb size**: Ensure usability on touch devices
* **multiple thumbs**: Consider complexity when supporting ranges

---

## summary

`Slider` is a composable input component for selecting values within a range. It combines visual feedback with direct manipulation, making it ideal for intuitive and continuous input control.
