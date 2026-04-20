## tabler icon

`TablerIcon` is a composable UI component that renders an SVG icon from the Tabler Icons library using a dynamic URL. You use it to display scalable, consistent icons without bundling them locally.

It provides a lightweight, on-demand icon rendering mechanism.

---

## what it does

`TablerIcon` fetches and renders an SVG icon by name.

* Constructs a URL based on icon name, version, and style
* Loads the SVG from a remote source
* Renders the SVG using a base `Svg` component
* Updates automatically when inputs change

It enables flexible and dynamic icon usage.

---

## classification

* **layer**: UI
* **role**: icon renderer (external SVG source)
* **rendering context**: inline

Use it in the UI layer to display icons.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** within buttons, labels, or layouts
* Does not render or manage children

It is a leaf visual component.

---

## composability

* **type**: non-composable (data-driven component)
* **accepts children**: no
* **belongs in**: UI

`TablerIcon` is configured through props.

* `name` → icon identifier
* `version` → library version
* `style` → icon style (e.g., outline, filled)

---

## behavior details

### url construction

* Builds a URL using:

  * icon `name`
  * library `version`
  * optional `style`

* Example pattern:

  * `/@tabler/icons@{version}/icons/{style}/{name}.svg`

---

### rendering

* Passes the generated URL to the `Svg` component
* `Svg` handles fetching and rendering
* Updates reactively when dependencies change

---

### dynamic updates

* Uses memoization to avoid unnecessary recalculation
* Recomputes URL only when inputs change

---

## when to use

Use `TablerIcon` when you need:

* Lightweight icon rendering without bundling assets
* Access to a large icon library dynamically
* Consistent SVG-based icons across the UI

Avoid using it when:

* Offline access is required
* Performance constraints limit external requests
* Icons must be bundled or customized locally

---

## edge cases and considerations

* **invalid name**: May result in a failed request or empty render
* **network dependency**: Requires internet access to load icons
* **style mismatch**: Incorrect style may break the URL
* **version changes**: Different versions may alter icon availability
* **loading state**: Rendering depends on SVG fetch timing

---

## summary

`TablerIcon` is a composable UI component that dynamically loads and renders SVG icons from the Tabler Icons library. It belongs in the UI layer and provides a flexible, scalable way to use icons without local asset management.
