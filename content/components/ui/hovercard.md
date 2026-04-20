## hover card

`HoverCard` is a composable UI component that reveals additional information when a user hovers over or focuses on a trigger element. You use it to provide contextual details without interrupting the user’s flow.

It is designed for lightweight, non-blocking information display.

---

## what it does

`HoverCard` shows supplementary content on interaction.

* Opens on hover or focus
* Displays a floating content panel near the trigger
* Closes automatically when the interaction ends
* Animates entry based on direction

It allows users to explore details without committing to an action.

---

## classification

* **layer**: UI
* **role**: contextual information container
* **rendering context**: overlay (renders above content using a portal)

Use it in the UI layer to surface additional information on demand.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`HoverCard` follows a clear structure:

* `HoverCardRoot` → state container
* `HoverCardTrigger` → interaction element
* `HoverCardContent` → floating panel
* `HoverCardArrow` → visual pointer
* `HoverCardPortal` → renders content outside normal DOM flow

### hierarchy relationships

* `HoverCardRoot` is the **parent** managing visibility
* `HoverCardTrigger` is a **child** that activates the card
* `HoverCardContent` is rendered in a **portal**
* `HoverCardArrow` is a **child** of the content

This structure separates interaction, positioning, and presentation.

---

## composability

* **type**: composable (compound component)

`HoverCard` is built from coordinated subcomponents that you assemble:

* Use `HoverCardTrigger` to define the hover target
* Use `HoverCardContent` to define what appears
* Optionally include `HoverCardArrow` for visual alignment

This modular structure allows flexible layouts while preserving consistent behavior.

---

## behavior details

* **interaction**

  * Opens on hover or keyboard focus
  * Closes when the pointer leaves or focus shifts

* **positioning**

  * Automatically aligns relative to the trigger
  * Adjusts based on available space

* **animation**

  * Fades and slides into view
  * Direction depends on placement (top, bottom, left, right)

* **styling**

  * Supports multiple color variants (neutral, primary, etc.)
  * Arrow inherits background color for visual continuity

---

## when to use

Use `HoverCard` when you need:

* Contextual previews (user profiles, product snippets)
* Additional details without navigation
* Non-blocking information display

Avoid using it when:

* Content requires user action (use dialog instead)
* Information is critical and must always be visible

---

## edge cases and considerations

* **hover dependency**: Not all devices support hover (consider fallback for touch)
* **content size**: Keep content concise to avoid overwhelming users
* **timing sensitivity**: Avoid flickering by ensuring stable hover targets
* **accessibility**: Ensure content is reachable via keyboard focus

---

## summary

`HoverCard` is a composable UI component for lightweight, contextual information. It enhances discoverability by revealing details on hover, without interrupting the primary user experience.
