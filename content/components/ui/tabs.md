## tabs

`Tabs` is a composable UI component that organizes content into multiple sections, where only one section is visible at a time. You use it to switch between related views without navigating away from the current page.

It provides a structured and space-efficient way to manage grouped content.

---

## what it does

`Tabs` controls visibility across multiple content panels.

* Displays a list of selectable triggers (tabs)
* Shows the content associated with the active tab
* Hides all other content panels
* Updates view instantly on selection

It allows users to navigate between related content quickly.

---

## classification

* **layer**: UI
* **role**: navigation + content container
* **rendering context**: inline (within document flow)

Use it in the UI layer for organizing related sections of content.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Tabs` follows a structured hierarchy:

* `Tabs` → root container
* `TabsList` → container for triggers
* `TabsTrigger` → selectable tab
* `TabsContent` → associated content panel

### hierarchy relationships

* `Tabs` is the **parent** managing active state
* `TabsList` groups all triggers
* `TabsTrigger` controls which content is visible
* Each `TabsTrigger` maps to a `TabsContent`
* Only one `TabsContent` is visible at a time

This ensures a clear link between navigation and content.

---

## composability

* **type**: composable (compound component)

`Tabs` is built from coordinated subcomponents:

* Use `TabsList` to group navigation
* Use `TabsTrigger` for each tab
* Use `TabsContent` for corresponding panels

This structure allows flexible layouts while maintaining strict behavior.

---

## behavior details

* **interaction**

  * Clicking a trigger activates its content
  * Updates state at the root level

* **content switching**

  * Only the active panel is rendered or visible
  * Switching is immediate

* **layout**

  * Triggers are arranged inline by default
  * Content appears below or alongside triggers

* **variants**

  * `solid` → filled background with active highlight
  * `outline` → minimal style with emphasis on active tab

---

## when to use

Use `Tabs` when you need:

* To organize related content into sections
* Quick switching between views
* Space-efficient navigation within a page

Avoid using it when:

* Content must be visible simultaneously
* Navigation is unrelated or deeply hierarchical

---

## edge cases and considerations

* **content size**: Ensure consistent layout across tabs
* **label clarity**: Use clear, concise tab labels
* **overflow**: Handle large numbers of tabs gracefully
* **state persistence**: Maintain selected tab when needed

---

## summary

`Tabs` is a composable UI component for organizing and navigating related content. It links triggers to content panels through a clear hierarchy, enabling efficient and intuitive switching between views.
