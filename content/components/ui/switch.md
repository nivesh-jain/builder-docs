## switch

`Switch` is a UI component that allows users to toggle between two states, typically **on** and **off**. You use it for immediate, binary actions where the change takes effect instantly.

It represents a direct, real-time state change.

---

## what it does

`Switch` controls a binary state with a sliding interaction.

* Toggles between checked (on) and unchecked (off)
* Updates state immediately on interaction
* Displays a moving thumb to indicate state
* Reflects state through color and position

It provides a clear and intuitive way to control settings.

---

## classification

* **layer**: UI
* **role**: input control (binary toggle)
* **rendering context**: interactive

Use it in the UI layer for settings and immediate toggles.

---

## hierarchy behavior

* **can be a parent**: yes (limited)
* **can be a child**: yes

### structure rules

`Switch` has a simple internal structure:

* `Switch` → root container (track)
* `SwitchThumb` → movable indicator

### hierarchy relationships

* `Switch` is the **parent** managing state
* `SwitchThumb` is a **child** that reflects the current state

The thumb position updates based on the checked state.

---

## composability

* **type**: semi-composable

The component exposes its internal parts:

* Use `Switch` as the main control
* Use `SwitchThumb` for visual customization if needed

In most cases, they are used together as a single unit.

---

## behavior details

* **interaction**

  * Click or tap toggles state
  * State changes immediately

* **visual feedback**

  * Background color changes between states
  * Thumb slides horizontally to indicate state

* **animation**

  * Smooth transition for thumb movement
  * Subtle background color transition

* **variants**

  * `size` → controls overall dimensions (`sm`, `md`, `lg`)
  * `round` → enables fully rounded (pill-shaped) appearance

---

## when to use

Use `Switch` when you need:

* Immediate on/off controls
* Settings toggles (notifications, preferences)
* Binary states with instant effect

Avoid using it when:

* User must confirm the action (use checkbox or dialog)
* Multiple selections are required

---

## edge cases and considerations

* **state clarity**: Ensure clear distinction between on and off states
* **labeling**: Always pair with descriptive labels
* **accessibility**: Ensure keyboard and screen reader support
* **misuse**: Avoid using for actions that are not reversible

---

## summary

`Switch` is a compact, interactive control for binary state changes. It combines clear visual feedback with smooth transitions, making it ideal for immediate, user-driven toggles in the interface.
