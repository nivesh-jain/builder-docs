## toggle

`Toggle` is a UI component that allows users to switch a control between **active** and **inactive** states. You use it for actions that can be turned on or off, often representing a mode or selection state.

Unlike a switch, a toggle is typically used for **UI-level state or formatting**, not system settings.

---

## what it does

`Toggle` manages a binary, press-based state.

* Switches between active and inactive on click
* Reflects state visually through style changes
* Supports icon or content inside the control
* Maintains state until changed again

It is commonly used for features like bold text, filters, or view modes.

---

## classification

* **layer**: UI
* **role**: interactive control (state toggle)
* **rendering context**: inline

Use it in the UI layer for toggling modes or states within the interface.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### typical usage

* Acts primarily as a **child** within toolbars, panels, or groups
* Can act as a **parent** for:

  * Icons
  * Simple inline content

### constraints

* Should not contain complex or nested interactive components
* Keep content minimal and focused

---

## composability

* **type**: non-composable (variant-driven)

`Toggle` is a single component configured through variants rather than subcomponents.

You control behavior using:

* **variant** → `solid`, `outline`
* **size** → `xs`, `sm`, `md`, `lg`
* **color** → semantic options (`primary`, `error`, etc.)

This keeps the component simple and consistent.

---

## behavior details

* **interaction**

  * Click toggles between active and inactive
  * State persists until changed

* **visual feedback**

  * Active state changes background, border, or color
  * Inactive state returns to default styling

* **content handling**

  * Typically contains an icon
  * Automatically aligns and sizes content

---

## when to use

Use `Toggle` when you need:

* Mode switches (grid/list view)
* Formatting controls (bold, italic)
* On/off UI states that are reversible

Avoid using it when:

* Immediate system-level changes are required (use switch)
* Only one option should be selected (use radio group or tabs)

---

## edge cases and considerations

* **state clarity**: Ensure active vs inactive states are clearly visible
* **group behavior**: When used in groups, define whether multiple toggles can be active
* **icon meaning**: Use clear, recognizable icons
* **accessibility**: Provide labels for non-text toggles

---

## summary

`Toggle` is a compact, stateful UI control for switching modes or states. It provides clear visual feedback and is best suited for reversible, interface-level interactions.
