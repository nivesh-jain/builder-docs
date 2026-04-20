## for

`For` is a composable UI component that renders a collection by repeating its child and injecting scoped data for each iteration. You use it to declaratively display lists without manually passing data through props.

It separates iteration logic from presentation.

---

## what it does

`For` renders its child once for each item in a collection.

* Supports arrays and objects as input
* Repeats a single child element per item
* Injects contextual data using `DataProvider`
* Provides index, key, and item for each iteration
* Keeps children focused on rendering, not data wiring

It creates a structured, repeatable rendering pattern.

---

## classification

* **layer**: UI
* **role**: data-driven renderer
* **rendering context**: logical (non-visual control)

Use it in the UI layer to manage repeated rendering with scoped data.

---

## hierarchy behavior

* **can be a parent**: yes
* **can be a child**: yes

### structure rules

`For` has a controlled and minimal structure:

* `For` → root iterator
* `DataProvider` → internal data injection layers
* child → rendered per item

### hierarchy relationships

* `For` expects a single valid child element
* For each item:

  * A new render instance is created
  * Context is injected through nested providers
* The child accesses data implicitly via the provided context

---

## composability

* **type**: composable
* **accepts children**: yes
* **belongs in**: UI

`For` is behavior-driven and flexible.

* You pass one child component
* That component is repeated for each item
* Data is injected per iteration using a scoped prefix

### required inputs

* **items** → collection (array or object)
* **prefix** → namespace for injected data

### provided context

Each iteration exposes:

* `${prefix}_currentIndex` → numeric index
* `${prefix}_currentKey` → index or object key
* `${prefix}_currentItem` → current item value

---

## behavior details

### array handling

* Iterates using array order
* Uses index as both key and identifier
* Injects index and item into context

---

### object handling

* Iterates using key-value pairs
* Provides both index and object key
* Injects key and value into context

---

### rendering conditions

`For` renders only when:

* `items` is defined
* `children` is a valid element

Otherwise, it returns no output.

---

## when to use

Use `For` when you need:

* Declarative list rendering
* Context-based data access
* Consistent iteration patterns across components

Avoid using it when:

* Explicit data flow via props is clearer
* Stable keys are required for dynamic lists
* Performance is critical with large collections

---

## edge cases and considerations

* **single child requirement**: Only one valid child is supported
* **key strategy**: Uses index; not ideal for reordered data
* **prefix collisions**: Use unique prefixes to avoid data conflicts
* **performance**: Multiple nested providers can increase render cost
* **object order**: Depends on entry iteration order

---

## summary

`For` is a composable UI component that renders collections by repeating a child and injecting scoped data. It accepts children, belongs in the UI layer, and provides a structured alternative to manual iteration.
