## widget

`Widget` is the runtime application that renders and delivers published Builder projects. You use it to display finalized experiences, integrate with external platforms, and enable end-user interaction.

It is independent of Builder, but powered by it.

---

## what it does

`Widget` runs published projects as a standalone application.

* Loads and renders published Builder content
* Reflects only **published state**, not in-progress edits
* Handles runtime interaction and data flow
* Integrates with external platforms (e-commerce, etc.)
* Executes attributes and dynamic values in production

It is the delivery layer of the Builder system.

---

## relationship with builder

Builder and Widget serve different roles:

### builder

* Authoring environment
* Allows unlimited edits and experimentation
* Supports asset uploads, structure changes, and logic updates

---

### widget

* Runtime environment
* Reflects only **published changes**
* Stable and production-ready
* Used by end users

---

### key difference

Changes made in Builder:

* **Do not appear in Widget until published**

This ensures:

* Stability in production
* Safe iteration during development

---

## classification

* **layer**: runtime (execution layer)
* **role**: application renderer + integration layer
* **rendering context**: UI + canvas (combined runtime)

---

## integration capabilities

`Widget` connects Builder projects to external systems.

### supported platforms

* Shopify
* WooCommerce
* PrestaShop

---

### what it enables

* Product customization experiences
* Dynamic pricing and configuration
* Real-time interaction with store data

---

## data flow

`Widget` executes:

* **attributes** → external + integration-driven
* **page state** → internal UI logic
* **dynamic values** → runtime logic execution

It acts as the bridge between:

* Builder-defined structure
* Real-world user interaction

---

## behavior details

### publishing model

* Builder → edit and configure
* Publish → freeze current state
* Widget → loads published version

---

### runtime execution

* Runs UI and canvas components together
* Applies materials, assets, and logic
* Handles user interaction and updates

---

### integration layer

* Connects with external APIs and platforms
* Syncs data such as:

  * products
  * pricing
  * configurations

---

## when to use

Use `Widget` when you need:

* To deploy Builder projects
* To integrate with e-commerce platforms
* To deliver interactive experiences to users

Avoid using it when:

* Editing or designing (use Builder instead)

---

## edge cases and considerations

* **unpublished changes**: Not visible in Widget
* **integration dependency**: Requires correct external setup
* **state differences**: Builder preview may differ from live Widget
* **performance**: Depends on asset optimization and structure

---

## summary

`Widget` is the runtime application that renders published Builder projects and enables real-world interaction and integration. It separates development from production, ensuring stability while connecting your experience to external platforms like Shopify, WooCommerce, and PrestaShop.
