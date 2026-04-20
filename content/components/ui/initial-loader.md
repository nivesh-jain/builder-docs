## initial loader

`InitialLoader` is a composable UI component that displays a full-screen loading overlay during the initial loading phase of an application. You use it to block interaction and communicate progress while required resources are being prepared.

It ensures a controlled and predictable entry into the interface.

---

## what it does

`InitialLoader` manages the visibility of an application-wide loading state.

* Displays a full-screen overlay above all UI
* Tracks loading progress using a shared progress source
* Animates a horizontal progress indicator
* Accepts custom content (e.g., branding, messages)
* Automatically hides itself when loading completes

It prevents incomplete or unstable UI from being shown to users.

---

## classification

* **layer**: UI
* **role**: loading overlay
* **rendering context**: global (viewport-level)

Use it in the UI layer to manage initial application loading.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`InitialLoader` follows a simple overlay structure:

* `InitialLoader` → root overlay container
* content container → centers layout
* children → optional custom content
* progress indicator → visual feedback

### hierarchy relationships

* The root container spans the entire viewport
* Children are rendered inside a centered layout
* The progress indicator is displayed below the children
* The component removes itself once loading completes

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: UI

`InitialLoader` is content-driven and flexible.

* You provide any content as children
* It wraps that content with loading behavior
* No strict internal subcomponents are required

---

## behavior details

### loading lifecycle

* Starts in a visible state
* Monitors loading progress (`loaded` vs `total`)
* When all items are loaded:

  * Transitions to a non-visible state
  * Stops rendering entirely

---

### progress handling

* Progress is derived from a shared progress source
* Visual updates are smoothed over time for stability
* The progress bar scales horizontally from left to right

---

### layout and positioning

* Uses fixed positioning to cover the viewport
* Centers content using flex layout
* Applies a high stacking order to remain above all UI

---

### customization

* **children** → inject custom content (logo, text, animation)
* **color** → controls progress bar color
* **css** → overrides layout styling

---

## when to use

Use `InitialLoader` when you need:

* A blocking loading experience during app startup
* Visual feedback for asset or data loading
* A branded or controlled entry state

Avoid using it when:

* Content can load progressively without blocking
* Only small, localized loading indicators are needed

---

## edge cases and considerations

* **zero total**: If no total is reported, the loader may remain visible
* **fast completion**: May appear briefly; consider delaying display if needed
* **progress accuracy**: Depends on the underlying progress source
* **overlay conflicts**: High stacking order may overlap other global layers

---

## summary

`InitialLoader` is a composable UI component that provides a full-screen loading overlay with progress feedback. It accepts children, belongs in the UI layer, and manages its own visibility to ensure a smooth and controlled application startup experience.
