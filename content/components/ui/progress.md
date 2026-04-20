## progress

`Progress` is a UI component that visually represents the completion state of a task. You use it to communicate progress over time, such as loading, processing, or step completion.

It provides immediate feedback without requiring user interaction.

---

## what it does

`Progress` displays how much of a task is complete.

* Renders a track (background) and an indicator (fill)
* Updates visually as progress changes
* Animates transitions smoothly
* Supports different sizes for visual emphasis

It helps users understand status at a glance.

---

## classification

* **layer**: UI
* **role**: feedback indicator
* **rendering context**: visual (non-interactive)

Use it in the UI layer to communicate system status or task progression.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### structure rules

`Progress` has a simple internal structure:

* `Progress` → container (track)
* `ProgressIndicator` → fill element

### hierarchy relationships

* `Progress` is the **parent**
* `ProgressIndicator` is a **child** that reflects progress

The indicator’s position updates based on the current value.

---

## composability

* **type**: semi-composable

The component exposes both parts:

* Use `Progress` as the container
* Use `ProgressIndicator` to represent the current state

In most cases, they are used together as a single unit.

---

## behavior details

* **progress representation**

  * Indicator moves horizontally to reflect completion
  * Uses transform-based animation for smooth updates

* **animation**

  * Transitions are eased for visual clarity
  * Updates do not cause layout shifts

* **sizes**

  * Multiple height variants (`1`, `2`, `3`)
  * Allows subtle or prominent progress display

---

## when to use

Use `Progress` when you need:

* Loading indicators
* Task completion feedback
* Visual representation of ongoing processes

Avoid using it when:

* Exact values are required without visual context (use text or metrics)
* Progress is instantaneous (no need for feedback)

---

## edge cases and considerations

* **indeterminate state**: Consider handling cases where progress is unknown
* **long durations**: Ensure animation remains smooth over time
* **contrast**: Ensure sufficient visibility between track and indicator
* **accuracy**: Keep visual progress aligned with actual task state

---

## summary

`Progress` is a visual feedback component that communicates task completion. It uses a simple parent-child structure to represent progress clearly and smoothly, improving user awareness during ongoing operations.
