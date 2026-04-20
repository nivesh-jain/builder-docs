---
title: Builder Architecture
date: 2026-02-18
tags: [platform, concept]
description: Higher-level architecture of core Builder concepts—attributes, components, assets, themes, and materials.
---

# Higher Level Architecture Documentation in Thob Studio's Builder

## Introduction to Core Components

Thob Studio's Builder tool supports a comprehensive set of core components that enable users to create versatile digital experiences, including configurators and interactive applications for customizing products like heels or other items. This documentation focuses on the essential components used within these environments: Attributes & Options, Components, Assets, Themes, and Materials.

### 1. Attributes

Attributes are customizable data fields that offer users the ability to define supplementary information for objects or components within a system or application. These user-defined properties can be stored in various formats, including textual, numeric, boolean, and structured data types. The primary function of attributes is to establish dynamic linkages between these properties and specific UI elements or backend services, enabling real-time updates and context-aware interactions without altering the core structure of a component.

#### Key Highlights

- **User-defined data**: Attributes are defined by users to provide additional descriptive data for objects or components.
- **Flexible storage**: Supports different data formats including text, numbers, booleans, and complex structures like JSON.
- **Dynamic linkage**: Facilitates connections between attributes and other system elements, allowing for dynamic updates based on attribute changes.
- **Enhanced interactivity**: Improves the responsiveness of applications by enabling real-time adjustments to user interfaces or backend processes in response to data modifications.

##### Key Characteristics

- **Type**: There are several types of attributes including select-based (with options), text-based, true/false-based, and number-based. Select-based attributes have predefined options that users can choose from, while the others do not have specific options.
- **Linking to UI elements**: Attributes can be linked directly to user interface elements like sliders or dropdown menus, allowing for dynamic visual feedback as users make selections.

For a broader conceptual overview, see [[attributes-overview]]

### 2. Components

Components are the basic building blocks of any project in Builder. They include `Flex` containers for layout organization and `Canvas` components for rendering content such as images or interactive models. The hierarchical structure within components allows for nested configurations, enabling complex layouts and interactions. For a broader conceptual overview of how components behave in 2D and 3D contexts, see [[components-overview]].

#### Key Characteristics

- **Hierarchical structure**: Components can contain other components, facilitating the creation of layered interfaces that adapt based on user inputs.
- **Dynamic logic**: Components support conditional rendering where parts only appear under specific conditions related to attribute values, enhancing relevance and interactivity.

### 3. Assets

Assets encompass all resources used within a project, including models (e.g., 3D representations of heels), textures, and media files. Proper asset management is crucial for maintaining high-quality visuals in dynamic environments like configurators.

#### Key Characteristics

- **Management**: Users can upload and categorize assets through folders to ensure they are easily accessible when needed during the customization process.

For a broader conceptual overview, see [[assets-overview]]

### 4. Themes

Themes provide a way to apply consistent visual styles across projects, ensuring brand identity is maintained regardless of user interactions or configurations. This includes font families, colors, and other design elements specified in a theme file.

#### Key Characteristics

- **Visual consistency**: Themes ensure that configurator interfaces maintain a unified look and feel, even as users make selections and interact with the product customization options.

For a broader conceptual overview, see [[theme-overview]]

### 5. Materials

Materials define how surfaces or materials on models reflect light based on attribute values such as color. These materials are dynamically linked to attributes like color, ensuring real-time updates that visually represent user selections effectively.

#### Key Characteristics

- **Dynamic linkage**: As users select different attribute options (e.g., choosing a color), the corresponding material properties are updated in real-time on the model or interface elements, enhancing visual feedback and customization capabilities.

For a broader conceptual overview, see [[material-overview]]

## Conclusion

Thob Studio's Builder tool leverages these core components to create dynamic configurators that respond to user interactions while maintaining visual consistency across projects through theming and material management. The hierarchical relationships between attributes, options, components, assets, themes, and materials empower users to build versatile digital experiences that adapt dynamically based on personalization choices. This architectural framework not only supports the creation of engaging user interfaces but also enables efficient project management through role-based access controls.

## Related notes

- [[Builder Overview]]
- [[Builder Use Cases]]
- [[Getting Started with Builder]]
