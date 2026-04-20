## dropdown

`Dropdown` is a composable UI component that displays a list of actions or options when triggered. You use it to present selectable items in a compact, contextual menu.

It allows users to access multiple actions without occupying permanent space in the interface.

---

## what it does

`Dropdown` reveals a menu anchored to a trigger element.

* Opens on click or interaction
* Displays a list of actions or selectable items
* Supports nested menus, groups, and separators
* Handles selection states (checkbox and radio items)

It helps organize actions while keeping the interface clean.

---

## classification

* **layer**: UI
* **role**: interactive menu
* **rendering context**: overlay (renders above other content using a portal)

Use it in the UI layer for action menus and option selection.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Dropdown` follows a structured hierarchy:

* `Dropdown` → root container
* `DropdownTrigger` → opens the menu
* `DropdownContent` → menu container
* `DropdownItem` → action item
* `DropdownSub` → nested menu container
* `DropdownSubTrigger` → opens submenu
* `DropdownSubContent` → submenu content
* `DropdownGroup` → groups related items
* `DropdownLabel` → labels a group
* `DropdownSeparator` → visual divider
* `DropdownCheckboxItem` → multi-select option
* `DropdownRadioGroup` → single-select group
* `DropdownRadioItem` → selectable option
* `DropdownItemIndicator` → selection indicator
* `DropdownArrow` → visual pointer
* `DropdownPortal` → renders menu outside normal DOM flow

### hierarchy relationships

* `Dropdown` is the **parent** managing state
* `DropdownTrigger` is a **child** that controls visibility
* `DropdownContent` contains all menu elements
* `DropdownItem` is a **leaf node** (action)
* `DropdownSub` introduces nested parent-child relationships

This hierarchy separates trigger, structure, and selection logic.

---

## composability

* **type**: composable (compound component)

`Dropdown` is built from multiple coordinated subcomponents. You compose these to define behavior and structure.

### composition capabilities

* Simple menus with `DropdownItem`
* Grouped menus with `DropdownGroup` and `DropdownLabel`
* Nested menus using `DropdownSub`
* Selectable menus using:

  * `DropdownCheckboxItem` (multi-select)
  * `DropdownRadioItem` (single-select)

Each part has a focused role, enabling flexible configurations.

---

## behavior details

* **trigger interaction**

  * Opens and closes the menu
  * Anchors menu position

* **overlay behavior**

  * Renders in a portal to avoid layout constraints
  * Positions automatically relative to trigger

* **selection handling**

  * Checkbox items allow multiple selections
  * Radio groups enforce a single selection
  * Indicators reflect current state

* **nested menus**

  * Submenus open adjacent to parent items
  * Positioning is handled automatically

---

## when to use

Use `Dropdown` when you need:

* A compact list of actions
* Optional or secondary controls
* Selectable options in limited space

Avoid using it when:

* Actions must always be visible
* The number of options is very small (use direct buttons instead)

---

## edge cases and considerations

* **deep nesting**: Too many submenu levels reduce usability
* **discoverability**: Ensure triggers clearly indicate a menu
* **selection clarity**: Clearly distinguish selected vs unselected states
* **overflow handling**: Ensure menus remain within viewport

---

## summary

`Dropdown` is a composable UI menu that organizes actions and selections into a compact overlay. It supports flexible structures, including nested and selectable items, while maintaining a clean and efficient interface.
