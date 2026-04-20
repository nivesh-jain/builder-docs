## context menu

`ContextMenu` is a composable UI component that displays a menu of actions when users perform a contextual interaction, such as a right-click or long press.

You use it to provide secondary actions that are relevant to a specific element without cluttering the primary interface.

---

## what it does

`ContextMenu` reveals a list of actions tied to a specific context.

* Opens on right-click or equivalent interaction
* Displays a floating menu near the trigger element
* Supports nested menus (submenus)
* Groups, labels, and separates actions for clarity

It keeps the interface clean while making advanced actions accessible.

---

## classification

* **layer**: UI
* **role**: contextual interaction container
* **rendering context**: overlays content above the interface

Use it in the UI layer for secondary or contextual actions.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`ContextMenu` defines a structured hierarchy:

* `ContextMenu` → root container
* `ContextMenuTrigger` → element that opens the menu
* `ContextMenuContent` → menu container
* `ContextMenuItem` → actionable item
* `ContextMenuSub` → nested menu container
* `ContextMenuSubTrigger` → opens submenu
* `ContextMenuSubContent` → submenu content
* `ContextMenuGroup` → groups related items
* `ContextMenuLabel` → labels a group
* `ContextMenuSeparator` → visual divider
* `ContextMenuArrow` → visual pointer
* `ContextMenuPortal` → renders menu outside normal DOM flow

### hierarchy relationships

* `ContextMenu` is the **parent** of trigger and content
* `ContextMenuTrigger` is a **child** that defines the interaction area
* `ContextMenuContent` contains items, groups, and submenus
* `ContextMenuItem` is a **leaf node** (action)
* `ContextMenuSub` creates a nested parent-child structure for deeper menus

This hierarchy ensures clear separation between trigger, structure, and actions.

---

## composability

* **type**: composable (compound component)

`ContextMenu` is built from multiple coordinated parts. You assemble these parts to define structure and behavior.

### composition flexibility

* Add simple action lists using `ContextMenuItem`
* Group items with `ContextMenuGroup` and `ContextMenuLabel`
* Create nested menus using `ContextMenuSub`
* Add visual structure using `ContextMenuSeparator`

Each subcomponent has a focused responsibility, enabling flexible layouts without breaking behavior.

---

## behavior details

* Opens relative to the trigger position
* Renders in a portal to avoid layout constraints
* Supports keyboard and pointer interactions
* Handles nested submenu positioning automatically
* Provides visual cues such as arrows and alignment

---

## when to use

Use `ContextMenu` when you need:

* Secondary or advanced actions
* Actions tied to a specific element or region
* Clean interfaces with minimal visible controls

Avoid using it when:

* Actions must always be visible
* Primary actions are critical to the user flow

---

## edge cases and considerations

* **discoverability**: Not all users expect right-click interactions; provide alternatives if needed
* **nested menus**: Deep hierarchies can reduce usability
* **placement**: Ensure menus do not overflow viewport boundaries
* **action clarity**: Keep labels concise and unambiguous

---

## summary

`ContextMenu` is a composable UI component that surfaces contextual actions on demand. It combines a structured hierarchy with flexible composition, allowing you to present complex action sets without overwhelming the interface.
