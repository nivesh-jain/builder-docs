## collapsible

`Collapsible` is a composable UI component that shows or hides content within the same layout. You use it to toggle visibility of a section without creating a separate container like a modal or overlay.

It is designed for inline expansion and collapse of content.

---

## what it does

`Collapsible` manages the visibility of a content block.

* Expands content when triggered
* Collapses content to reduce space usage
* Animates height transitions smoothly
* Keeps content within the normal document flow

It allows users to reveal details progressively without leaving context.

---

## classification

* **layer**: UI
* **role**: interactive content container
* **rendering context**: inline (does not use overlay or portal)

Use it in the UI layer when content should expand within the layout.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Collapsible` follows a simple structure:

* `Collapsible` → root container
* `CollapsibleTrigger` → toggles visibility
* `CollapsibleContent` → expandable content

### hierarchy relationships

* `Collapsible` is the **parent** managing state
* `CollapsibleTrigger` is a **child** that controls open/close
* `CollapsibleContent` is a **child** that shows or hides

The trigger and content are tightly linked through state.

---

## composability

* **type**: composable (compound component)

`Collapsible` is built from coordinated subcomponents:

* Use `CollapsibleTrigger` to define the toggle control
* Use `CollapsibleContent` to define what expands

This separation allows flexible layouts while maintaining consistent behavior.

---

## behavior details

* **interaction**

  * Clicking the trigger toggles open/closed state

* **animation**

  * Expands from height `0` to full content height
  * Collapses back smoothly

* **visual cues**

  * Optional chevron icon rotates when open
  * Helps indicate state change

* **layout**

  * Content remains part of the document flow
  * Surrounding elements adjust dynamically

---

## when to use

Use `Collapsible` when you need:

* Expandable sections within a page
* Progressive disclosure of content
* Space-saving layouts

Avoid using it when:

* Multiple sections need coordinated behavior (use accordion instead)
* Content should appear as an overlay (use popover or dialog)

---

## edge cases and considerations

* **content height**: Ensure dynamic content does not break animation
* **nested collapsibles**: Can become complex to manage
* **state clarity**: Provide clear visual indicators (icons or labels)
* **performance**: Large content blocks may affect animation smoothness

---

## summary

`Collapsible` is a composable UI component for inline show and hide behavior. It enables smooth, space-efficient content expansion while keeping users within the current context.
