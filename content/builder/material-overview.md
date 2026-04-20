---
title: Materials Overview
date: 2026-03-31
tags: [platform, concept]
description: How Builder Materials behave.
---

### Material System Overview

The material system is designed to provide flexibility in how materials are assigned, reused, and dynamically replaced across 3D assets within a digital asset management framework. It operates based on two main concepts:

1. **Project-Level Materials (Templates)**
2. **Asset-Level Materials (Overrides / Variants)**

These concepts are interconnected and managed through the Material Variant component, which facilitates material replacement at runtime or configuration time.

### Project-Level Material

A project-level material acts as a base template:
- Defined in the Material Panel
- Assigned directly to meshes in a 3D model
- Contains complete material properties (maps, textures, shaders, etc.)
- Used as the default material for a mesh

**Key Idea:** It establishes a consistent starting point across your project.

**Example:** You create a material called "Fabric" and assign it to a shirt mesh. This becomes the base material for that mesh.

### Asset-Level Material

An asset-level material is used to replace or override a project-level material:
- Created in the Asset Panel
- Contains full material definitions (textures, maps, properties)
- Designed for variations and customization

**Key Idea:** It allows you to swap materials dynamically without modifying the base setup.

**Example:** You create multiple fabric variations:
- Cotton (light texture)
- Denim (rough texture)
- Silk (smooth + shiny)

These are all asset-level materials that can replace the base "Fabric" material.

### Material Variant Component

The Material Variant component is responsible for connecting everything:
- **Targets a mesh**
- **Detects the assigned project-level material**
- **Replaces it with a selected asset-level material**

**Workflow:**
1. Assign project material to mesh (e.g., Fabric)
2. Create asset materials (e.g., Cotton, Denim, Silk)
3. Use Material Variant component to:
   - Target the mesh
   - Replace "Fabric" with one of the asset materials

### Clarification on Project-Level and Asset-Level Materials

While they are not fundamentally different types, both are fully defined materials inside the project:
- **Project Material** is used as a default / template.
- **Asset Material** serves as a replacement / variant.

You can build an entire project using only project-level materials. Asset-level materials become useful when you need switching, customization, or multiple variations.

### Material Types & Optimization

Materials can use different shading models depending on the specific needs:
- **Physical**: Realistic rendering (PBR), lighting that is accurate and reflects real-world properties.
- **Standard**: Balanced performance and quality, providing a good balance between realism and computational efficiency.
- **Phong / Lambert**: These are simpler shading models that offer lightweight solutions with less computational overhead but may not capture as much detail or realism compared to Physical or Standard materials.
- **Basic**: No lighting applied, which is the fastest option due to its simplicity in rendering.

**Best Practice:**
Choose the material type based on your use case:
- For realistic products, choose **Physical**.
- For general scenes, opt for **Standard**.
- In performance-critical applications, consider using **Lambert / Basic** for faster rendering without sacrificing quality.

By understanding these concepts and guidelines, you can effectively manage and optimize the material system within your digital asset management framework to suit various project requirements.