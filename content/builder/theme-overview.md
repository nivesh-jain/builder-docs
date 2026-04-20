---
title: Theme Overview
date: 2026-03-31
tags: [platform, concept]
description: How Builder design system functions.
---

 # Themes Overview Document

## Introduction
This document outlines the comprehensive approach to setting up a project's theme, focusing on how colors, fonts, space, sizes, font sizes, line heights, letter spacing, and global styles can be defined and managed through variables. These elements are integral in creating a consistent visual identity across all components within the application, enhancing user experience and brand recognition.

## Theme Definition
A theme in this context is an organized set of design properties that define the look and feel of your application. It includes:
- **Colors**: Primary, secondary, accent colors, backgrounds, shadows, etc.
- **Fonts**: Typefaces used throughout the app.
- **Space & Sizes**: Padding, margins, icon sizes, avatar dimensions, card sizes, etc.
- **Font Sizes & Line Heights**: Text size and line spacing for readability.
- **Letter Spacing**: Adjusts the space between characters in text.
- **Global Styles**: Advanced CSS panel settings that apply to the entire page or specific sections of it.

## Creating Variables
To create a theme, start by defining variables for each design property:
- **Color Palette**: Define base colors and their shades using HEX, RGB, or HSL values.
- **Font Families**: Select from available system fonts or import custom ones (e.g., via Google Fonts).
- **Spacing & Sizing**: Establish a baseline grid system for consistent spacing across elements.
- **Text Properties**: Define default font sizes and line heights that scale with the type hierarchy.
- **Letter Spacing**: Adjusts the appearance of text, useful for creating typographic effects.

## Implementing Themes in the Builder
To implement themes within your application:
1. **Define Variables**: Create a theme JSON object where each property is assigned its respective variable.
2. **Apply Variables**: Use CSS custom properties (variables) to apply these definitions across all components and pages using SCSS or similar preprocessor. This allows for easy modification of the entire theme without deep-diving into individual stylesheets.
3. **Theme Switching**: For applications that support multiple themes, consider implementing a system where users can switch between predefined color schemes.

## Advanced CSS Panel Usage
The advanced CSS panel is designed to provide granular control over page and component styling when standard properties are insufficient. It allows developers to write custom styles using the full power of CSS while ensuring they do not interfere with theme variables. This feature is particularly useful for:
- **Responsive Design**: Media queries adjust layout based on screen size.
- **Animation Effects**: Adds dynamic behavior without altering static theme definitions.
- **Specific Component Adjustments**: Overrides or additions to the global styles applied by the theme.

## Importing Custom Fonts
If you need to use fonts that are not available on Google Fonts, follow these steps:
1. **Host Font Files**: Ensure the font files (.woff, .woff2, .ttf) are hosted correctly in your project.
2. **Font Face Declaration**: Use CSS or SCSS @font-face rules to import and define custom fonts with their specific properties like weight and style (e.g., italic).
3. **Apply Fonts Globally**: Include font declarations within a global stylesheet or use CSS variables to apply them consistently across the application.

## Conclusion
A well-defined theme not only enhances visual consistency but also simplifies maintenance, scalability, and brand identity in digital products. By establishing clear guidelines for color usage, typography, spacing, and more through variable definitions, you empower designers and developers to create engaging user interfaces efficiently and effectively.