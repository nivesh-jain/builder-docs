## randomized light

`RandomizedLight` is a composable canvas component that simulates soft, natural lighting by using multiple lights that are randomly offset over time. You use it to create realistic shadow softness and ambient variation, especially when paired with accumulative shadow systems.

It approximates complex lighting using controlled randomness. ([Drei Documentation][1])

---

## what it does

`RandomizedLight` generates soft lighting using multiple jittered light sources.

* Creates multiple directional lights internally
* Randomly offsets (“jitters”) light positions each frame
* Simulates soft shadows and ambient occlusion
* Works best with accumulation-based shadow systems
* Blends multiple light samples into a smoother result

It mimics the effect of area lights without heavy computation.

---

## classification

* **layer**: canvas
* **role**: light system (multi-light generator)
* **rendering context**: 3D (lighting + shadow pipeline)

Use it in the canvas layer to produce soft, realistic lighting.

---

## hierarchy behavior

* **can be a parent**: no
* **can be a child**: yes

### typical usage

* Used as a **child** of lighting or shadow systems (e.g., `AccumulativeShadows`)
* Does not render or manage children
* Internally manages multiple light nodes

It acts as a light generator rather than a container.

---

## composability

* **type**: non-composable (behavioral generator)
* **accepts children**: no
* **belongs in**: canvas

`RandomizedLight` is configuration-driven.

* You configure how many lights and how they behave
* It internally creates and manages multiple light instances

---

## behavior details

### multi-light system

* Generates a group of directional lights
* Each light contributes partial illumination
* Total intensity is distributed across all lights

---

### randomization (jitter)

* Light positions are slightly randomized each update

* Controlled via:

  * `radius` → spread of randomness
  * `amount` → number of lights

* Produces softer, more natural shadows

---

### accumulation behavior

* Designed to work with accumulation systems
* Each frame contributes a slightly different lighting sample
* Over time, results blend into smooth shadows

---

### ambient vs directional balance

* `ambient` controls how much randomness vs structured lighting is used
* Lower values → more directional
* Higher values → more diffuse / ambient effect

---

### shadow integration

* Lights can cast shadows
* Shadow quality improves with accumulation over frames
* Works best with progressive shadow techniques

---

## when to use

Use `RandomizedLight` when you need:

* Soft shadows without expensive area lights
* Realistic ambient lighting variation
* High-quality results with accumulative shadows

Avoid using it when:

* Immediate, stable lighting is required
* Scene must remain fully deterministic per frame
* Simpler lighting setups are sufficient

---

## edge cases and considerations

* **temporal buildup**: Visual quality improves over time, not instantly
* **performance tradeoff**: More lights = better quality but higher cost
* **randomness**: May introduce flicker without accumulation
* **dependency**: Best results require pairing with shadow accumulation systems
* **light tuning**: Requires balancing intensity, radius, and amount

---

## summary

`RandomizedLight` is a composable canvas component that generates soft, realistic lighting by jittering multiple light sources over time. It belongs in the canvas layer and is best used with accumulative shadow systems to produce high-quality, natural-looking shadows.

[1]: https://drei.docs.pmnd.rs/staging/randomized-light?utm_source=chatgpt.com "RandomizedLight - Drei"
