## avatar

`Avatar` is a UI component that represents a user or entity through an image, with a built-in fallback when the image is unavailable. You use it to provide a consistent visual identity across your interface.

It ensures that a visual representation is always shown—either an image or a fallback state.

---

## what it does

`Avatar` displays a profile image and gracefully handles failure cases.

* Renders an image when available
* Falls back to alternate content (such as initials or icons)
* Maintains consistent size and shape
* Supports responsive sizing and layout variants

This guarantees a stable and predictable UI, even when image data is missing.

---

## classification

* **layer**: UI
* **role**: visual identity component
* **rendering context**: displays media content with fallback handling

Use it in the UI layer wherever identity or representation is needed.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Avatar` defines a simple internal hierarchy:

* `Avatar` → root container
* `AvatarImage` → primary visual content
* `AvatarFallback` → fallback content

### hierarchy relationships

* `Avatar` is the **parent** container
* `AvatarImage` and `AvatarFallback` are **children**
* Only one is visible at a time:

  * Image loads → `AvatarImage` is shown
  * Image fails or is absent → `AvatarFallback` is shown

You can place `Avatar` inside other components (lists, cards, headers) or use it as a container for its internal elements.

---

## composability

* **type**: composable (compound component)

`Avatar` is composed of coordinated subcomponents that work together:

* **Avatar** → defines layout, size, and shape
* **AvatarImage** → renders the image
* **AvatarFallback** → ensures a visible state when the image is not available

You control behavior by composing these parts.

---

## behavior details

* Image fills the container and respects its shape (including rounded variants)
* Fallback content inherits the same dimensions and alignment
* Supports square or fully rounded (circular) presentation
* Can be positioned using layout variants (for example, absolute or relative)

---

## when to use

Use `Avatar` when you need:

* User or entity representation
* Profile images in lists, headers, or cards
* A consistent fallback for missing media

Avoid using it for:

* Decorative images without identity meaning
* Large, content-heavy media displays

---

## edge cases and considerations

* **missing image source**: Ensure fallback content is meaningful (initials or icon)
* **image loading delays**: Fallback may briefly appear before the image loads
* **shape consistency**: Use the `round` variant carefully to match design expectations
* **content fit**: Ensure images work well with `object-fit: cover`

---

## summary

`Avatar` is a composable UI component that provides a reliable way to display identity. It combines image rendering with a built-in fallback, ensuring your interface remains complete and visually consistent in all states.
