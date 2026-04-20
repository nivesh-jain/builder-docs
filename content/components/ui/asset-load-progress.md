## asset load progress

`AssetLoadProgress` is a composable UI component that provides loading state from a rendering pipeline to its children through context. You use it to expose real-time asset loading information only while loading is active.

It acts as a conditional data bridge between the rendering system and the UI.

---

## what it does

`AssetLoadProgress` conditionally provides loading progress to its subtree.

* Subscribes to asset loading state using a shared progress hook
* Exposes `active`, `progress`, and `total` through context
* Renders children only while loading is active
* Prevents unnecessary rendering when loading is complete

It ensures that loading data is available only when relevant.

---

## classification

* **layer**: UI
* **role**: conditional data provider
* **rendering context**: logical (state gating + context injection)

Use it in the UI layer to scope loading state to specific parts of the interface.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`AssetLoadProgress` has a minimal structure:

* `AssetLoadProgress` → root provider
* context provider → injects loading state
* children → rendered conditionally

### hierarchy relationships

* Acts as a **parent** that wraps dependent components
* Children are rendered only when loading is active
* When loading is inactive:

  * Nothing is rendered
  * Context is not provided

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: UI

`AssetLoadProgress` is context-driven.

* You wrap components that depend on loading state
* It injects data without requiring prop passing
* It conditionally enables its subtree

### provided context

When active, the following values are available:

* `active` → whether loading is in progress
* `progress` → percentage of completion
* `total` → total number of assets

---

## behavior details

### conditional rendering

* If `active` is `true`:

  * Provides context
  * Renders children

* If `active` is `false`:

  * Returns no output
  * Skips rendering entirely

---

### data flow

* Uses a shared progress source (e.g., asset loader)
* Passes the full progress object into context
* Ensures consistent access across all descendants

---

### lifecycle behavior

* Activates when asset loading begins
* Deactivates automatically when loading completes
* No manual state management required

---

## when to use

Use `AssetLoadProgress` when you need:

* Access to asset loading state within a subtree
* Conditional rendering tied to loading activity
* Context-based data flow without prop drilling

Avoid using it when:

* Loading state is not required
* You need persistent rendering regardless of loading
* Simpler state management is sufficient

---

## edge cases and considerations

* **inactive state**: Children will not render when loading is inactive
* **context dependency**: Descendants must rely on context, not props
* **partial loading**: Ensure consumers handle intermediate progress values
* **multiple providers**: Avoid overlapping providers unless intentional

---

## summary

`AssetLoadProgress` is a composable UI component that conditionally provides asset loading state to its children. It accepts children, belongs in the UI layer, and ensures that loading data is available only when active, enabling clean and efficient data flow during asset loading.
