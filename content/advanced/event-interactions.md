## event interactions

`Event interactions` allow components to respond to user input and trigger logic. You use them to connect user actions (clicks, typing, changes) with dynamic behavior in your application.

They are the primary way to execute logic through **dynamic values**.

---

## what it does

Event interactions trigger functions when user actions occur.

* Captures user input (click, typing, value changes)
* Executes logic using dynamic values
* Updates attributes or page state
* Enables interactive and reactive behavior

They connect user intent to system response.

---

## available events

Not all components support every event. Some support all, others only a subset.

---

### onclick()

Triggered when a component is clicked.

* Most commonly used interaction
* Works on buttons, containers, and interactive elements

**use cases**

* Toggle visibility
* Update state
* Trigger navigation or actions

---

### onmousedown()

Triggered when the mouse button is pressed down.

* Fires before `onclick`
* Useful for immediate feedback or press-based interactions

**use cases**

* Press animations
* Drag start logic
* Early interaction handling

---

### onvaluechange()

Triggered when a component’s value changes.

* Common in inputs and form elements
* Reacts to user input updates

**use cases**

* Form state updates
* Syncing values to `$pageState`
* Updating attributes dynamically

---

### onkeyup()

Triggered when a key is released.

* Captures typing input
* Useful for real-time updates

**use cases**

* Live search
* Input validation
* Dynamic filtering

---

## how it works

Each event accepts a **dynamic value function**.

### pattern

```id="r5wq8f"
function () {
  // logic here
}()
```

Inside this function, you can:

* Update page state
* Modify attributes
* Trigger other actions

---

## example: input to state sync

### goal

Update a page state variable as the user types.

---

### setup

* Use `onkeyup()` on an input
* Add dynamic value:

```id="k8m2x1"
function () {
  $pageState.setVariableValue("search", $event.target.value)
}()
```

---

### result

* Every key press updates the state
* Other components can react instantly

---

## when to use

Use event interactions when you need:

* User-driven behavior
* State updates from input
* Real-time UI reactions
* Component communication

Avoid using them when:

* No interaction is required
* Logic is static or predefined

---

## edge cases and considerations

* **event availability**: Not all components support all events

* **execution timing**:

  * `onmousedown` → earlier
  * `onclick` → after release

* **performance**: Frequent events (like `onkeyup`) should be lightweight

* **state consistency**: Ensure updates do not conflict

---

## summary

Event interactions allow components to respond to user input and execute logic through dynamic values. They form the foundation of interactivity, connecting user actions to state updates and system behavior across the Builder environment.
