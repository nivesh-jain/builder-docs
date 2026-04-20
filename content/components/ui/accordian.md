## accordion

`Accordion` is a composable UI component that organizes content into expandable and collapsible sections. You use it to present dense information in a structured, space-efficient way.

Each section can be opened or closed by the user, revealing or hiding its content.

---

## what it does

`Accordion` manages visibility of grouped content.

* Displays content in stacked sections
* Allows users to expand or collapse sections
* Animates transitions between open and closed states
* Supports one or multiple open items (based on configuration)

It improves readability by showing only what is relevant at a given time.

---

## classification

* **layer**: UI
* **role**: interactive container
* **rendering context**: controls visibility and interaction, not spatial layout

Use it in the UI layer to manage content density and user interaction.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`Accordion` defines a strict internal hierarchy:

* `Accordion` → root container
* `AccordionItem` → section container
* `AccordionHeader` → structural wrapper
* `AccordionTrigger` → interactive control
* `AccordionContent` → collapsible content

### hierarchy relationships

* `Accordion` is the **parent** of multiple `AccordionItem`
* Each `AccordionItem` is both:

  * a **child** of `Accordion`
  * a **parent** of its header and content
* `AccordionTrigger` controls its sibling `AccordionContent`

This structure ensures predictable interaction and state management.

---

## composability

* **type**: composable (compound component)

`Accordion` is built as a set of coordinated subcomponents. You must use them together in a defined structure.

### required composition

* `Accordion`

  * `AccordionItem`

    * `AccordionHeader`

      * `AccordionTrigger`
    * `AccordionContent`

Each part has a specific responsibility:

* **Trigger** → handles user interaction
* **Content** → shows or hides information
* **Item** → groups related trigger and content

This separation allows flexible layout while maintaining consistent behavior.

---

## behavior details

* Opening a trigger expands its associated content
* Closing it collapses the content with animation
* Visual indicators (such as chevrons) can rotate based on state
* Height transitions are handled automatically for smooth expansion

---

## when to use

Use `Accordion` when you need:

* To organize large amounts of content
* Progressive disclosure of information
* Clean, scannable layouts with optional detail

Avoid using it when:

* All content must remain visible
* Users need to compare multiple sections simultaneously

---

## edge cases and considerations

* **nested accordions**: Can become hard to navigate; use carefully
* **content overflow**: Ensure content adapts to dynamic height
* **interaction clarity**: Make triggers clearly distinguishable
* **state control**: Ensure only intended sections can be open (single vs multiple mode)

---

## summary

`Accordion` is a composable UI component that structures content into interactive, collapsible sections. It enforces a clear parent-child hierarchy and separates interaction from content, making complex information easier to navigate and control.
