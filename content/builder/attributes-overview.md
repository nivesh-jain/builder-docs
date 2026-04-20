---
title: Attributes Overview
date: 2026-03-31
tags: [platform, concept]
description: What attributes are in Builder, how they work, and why they matter.
---

## attributes

Attributes are user-defined data fields that **control components in Builder and remain usable after deployment through the Widget**.

When you publish a project, it runs inside a Widget installed on platforms like Shopify, PrestaShop, or WordPress.
**Attributes are exposed to this Widget. Page state variables are not.**

This is the key distinction:

* **Attributes** → control components *and* are consumable outside Builder via the Widget
* **Page state variables** → control internal logic *only within Builder*

Use attributes when data must influence both the experience and its external integration.

---

## what attributes are

Attributes are flexible data fields you define to control behavior, appearance, and integration.

They allow you to:

* Drive component behavior inside Builder
* Expose data to the Widget after publishing
* Sync experience state with the host platform

An attribute can store:

* Text (`"Blue"`)
* Numbers (`1499`)
* Boolean values (`true`, `false`)
* Structured data (JSON)

---

## how attributes work

Attributes operate across two layers: **Builder** and **Widget**.

### inside Builder

* You bind attributes to components (3D models, UI elements, logic)
* Changes update the experience immediately

### after publishing (inside the Widget)

* The same attributes are accessible to the host platform
* External systems (like product pages or scripts) can read or react to them

This makes attributes a **shared contract between your experience and the outside system**.

---

## attributes vs page state variables

| capability           | attributes                  | page state variables      |
| -------------------- | --------------------------- | ------------------------- |
| control components   | yes                         | yes                       |
| consumable by Widget | yes                         | no                        |
| scope                | Builder + external platform | Builder only              |
| purpose              | UI control + integration    | internal state management |
| data exposure        | exposed                     | private                   |

Use attributes when state must leave Builder.
Use page state variables when state should stay internal.

---

## example

In a product configurator:

```json
{
  "selected_color": "black",
  "price": 1999,
  "is_available": true
}
```

### inside Builder

* `selected_color` → updates 3D material
* `price` → updates pricing component
* `is_available` → toggles availability state

### inside the Widget (on Shopify / WordPress / PrestaShop)

* `selected_color` → syncs with product variant
* `price` → updates external pricing display
* `is_available` → controls add-to-cart behavior

A single attribute change updates both the experience and the host platform.

---

## when to use attributes

Use attributes when you need:

* Component-level control inside Builder
* Data to be accessible after publishing
* Integration with e-commerce platforms
* Consistent state between experience and host page

Avoid using attributes for:

* Temporary calculations
* Internal logic that does not need exposure

---

## edge cases and considerations

* **Separation of concerns**: Keep internal logic in page state variables, and exposed data in attributes
* **Naming clarity**: Use integration-friendly names (`selected_variant`, not `var1`)
* **Data contracts**: Ensure attribute structure matches what the Widget or platform expects
* **Overexposure**: Only expose what is necessary to avoid complexity

---

## summary

Attributes are the bridge between Builder and the outside world.

They control components inside your experience and remain accessible after deployment through the Widget. This makes them essential for any feature that must interact with the host platform.

If data needs to be seen, used, or synced outside Builder, define it as an attribute.


Attributes are user-defined data fields that serve as metadata for various elements in a system or application. They can be used to store information such as IDs, descriptions, properties, settings, and more, which can then be linked to specific components or modules. This linkage allows for dynamic and context-aware interactions within the application ecosystem.

## Key Attribute Concepts

### Definition and Purpose

- **Attribute definition**: An attribute is a named property associated with an object or component. It encapsulates data that describes, defines, or characterizes the object or component.
- **Purpose**: Attributes enable users to define custom data for objects (like products, user profiles, events) which can be used for various purposes such as filtering, sorting, mapping to UI elements, and establishing relationships with other components or services.

### Data Formats

Attributes can store a variety of data formats:

- **Textual data**: Strings that describe the object (e.g., names, descriptions).
- **Numeric data**: Integers or floating-point numbers for quantitative attributes (e.g., price, quantity).
- **Boolean data**: True/False values for toggles and switches (e.g., active status).
- **Structured data**: JSON objects or arrays that can represent complex data structures (e.g., settings, configuration parameters).

### Usage in Systems

- **Mapping to components**: Attributes are mapped to specific components or modules where they provide context-specific information. For example, a product attribute might be linked to its display component.
- **Dynamic linkage**: By linking attributes to components, systems can dynamically update based on these data changes (for example, updating UI elements in real time).

### Benefits and Applications

- **Flexibility**: Attributes provide flexibility by allowing users to define new properties or modify existing ones without changing the core structure of a component or system.
- **Data consistency**: Ensures that data is consistently applied across various parts of an application, reducing redundancy and enhancing maintainability.
- **Extensibility**: Facilitates adding new attributes as requirements evolve or specific scenarios arise.

## Example Scenario

Consider a scenario where you are building software for managing e-commerce products:

- A product might have several attributes such as `product_id`, `name`, `price`, `description`, and `is_active`.
- These attributes can be dynamically linked to the product display page, search results, or administrative tools.
- Changes in attribute values (for example, price updates) will automatically reflect across all linked components.

## Conclusion

Attributes are powerful user-defined data structures that play a crucial role in enhancing the interactivity and flexibility of systems and applications. By defining and managing attributes effectively, developers can achieve greater control over how data is represented and utilized within their platforms, enabling more dynamic and responsive user experiences.

