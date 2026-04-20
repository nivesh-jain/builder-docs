## advanced css panel

The `Advanced CSS Panel` gives you full control over component styling beyond the standard property controls. You use it when built-in styling options are not enough.

It allows you to write custom styles directly, while still working within the Builder system.

---

## what it does

The Advanced CSS Panel lets you override and extend component styles.

* Apply custom CSS rules to any component
* Use pseudo-selectors (e.g., `:hover`)
* Target internal elements (e.g., scrollbars)
* Override default styling behavior
* Extend design beyond predefined properties

It bridges the gap between structured design controls and full CSS flexibility.

---

## how it works

You write styles using a **JSON-like object syntax**.

### example: hover override

```json
{
  "border": "none",
  "&:hover": {
    "backgroundColor": "transparent"
  }
}
```

---

### example: hide scrollbar

```json
{
  "&::-webkit-scrollbar": {
    "display": "none"
  }
}
```

---

### example: text + scroll behavior

```json
{
  "whiteSpace": "nowrap",
  "scrollBehavior": "smooth"
}
```

---

## relationship with properties panel

The Builder provides a structured **properties panel** for common styling needs. The Advanced CSS Panel is used when:

* A property is not available
* You need conditional or pseudo styling
* You want finer control over rendering

---

## available styling controls (properties panel)

These are the built-in styling options available without using advanced CSS.

---

### display

* `block`
* `inline`
* `inline-block`
* `flex`
* `inline-flex`

---

### dimensions

All dimension values can be selected from **theme variables**.

* width
* height
* min width
* min height
* max width
* max height

---

### position

* position
* z-index

---

### spacing

All spacing values can use **theme variables**.

* margin top / right / bottom / left
* padding top / right / bottom / left

---

## when to use

Use the Advanced CSS Panel when you need:

* Hover, focus, or interaction states
* Custom scroll behavior
* Unsupported CSS properties
* Fine-grained visual control

Avoid using it when:

* The property exists in the standard panel
* Styles can be achieved using theme variables
* Simpler configuration is sufficient

---

## edge cases and considerations

* **overrides**: Advanced CSS can override theme consistency
* **readability**: Excessive custom styles can reduce maintainability
* **browser support**: Some selectors (e.g., scrollbars) are browser-specific
* **conflicts**: May conflict with component defaults or variants

---

## best practices

* Prefer **properties panel** for standard styling
* Use Advanced CSS for **exceptions, not defaults**
* Keep styles minimal and intentional
* Reuse theme variables where possible

---

## summary

The `Advanced CSS Panel` is a powerful styling escape hatch that allows full customization of components beyond predefined controls. It complements the properties panel by enabling pseudo-selectors, overrides, and fine-grained design control while still working within the Builder system.
