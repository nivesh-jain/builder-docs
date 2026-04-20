---
title: Assets Overview
date: 2026-02-18
tags: [platform, concept]
description: Entry point into the builder platform asset management.
---

 # Assets Overview Document

## Introduction
This document outlines the best practices for managing and organizing digital assets such as models, images, audio, and environment maps when developing applications that run primarily on browsers using WebGL or WebGPU for rendering. Given the constraints of browser-based applications, it is crucial to keep asset sizes low to ensure optimal performance and user experience.

## Asset Types
The primary types of digital assets used in this context include:
1. **Models**: Typically in GLB (glTF Binary) format due to their compact size and support for complex 3D data.
2. **Images**: Images should ideally be under 2048 pixels in width or height, unless necessary for high-quality visual details.
3. **Audio**: Audio files are best kept as MP3s to maintain reasonable file sizes without compromising quality.
4. **Environment Maps (HDR/EXR)**: These are used for realistic lighting and reflections; size should be under 1024x1024 pixels unless required for high-fidelity environmental representation.

## Asset Size Guidelines
To optimize performance in a browser environment:
- **Model Size**: GLB models should aim to be as compact as possible, ideally keeping their file sizes under 5MB per model. This includes textures and other embedded resources if applicable.
- **Image Size**: Images such as character or object textures should not exceed 2048 pixels in any dimension unless absolutely necessary for visual quality. Thumbnails or icons can be much smaller (e.g., below 1024 pixels).
- **Audio Size**: MP3 audio files should ideally stay under 5MB each to ensure minimal load time and efficient use of bandwidth.
- **Environment Map Size**: HDR/EXR maps should not exceed 1 MB in file size, with a typical maximum resolution of 1024x1024 pixels for maintaining visual fidelity without excessive data usage.

## Asset Organization
To manage assets effectively:
- **Folder Structure**: Create hierarchical folders to categorize models by type (characters, props, environments) and images by function (backgrounds, icons).
- **Descriptive Naming Conventions**: Use clear and concise names that describe the contents of each asset file. This helps in identifying and locating specific assets quickly during development or when scaling the project.
- **Version Control**: Regularly update versions of models as they are refined or modified to avoid using outdated files which can bloat the repository size unnecessarily.

## Best Practices for Use
- **Optimize at Source**: Utilize tools that compress and optimize images (e.g., JPEG, PNG optimization) before importing into the project.
- **Preload Assets Efficiently**: Use JavaScript or appropriate HTML attributes to preload assets based on expected user interactions; avoid loading unnecessary resources all at once.
- **Monitor Performance**: Regularly check browser performance metrics such as FPS and memory usage during runtime to ensure that asset loads are not adversely affecting overall performance.

## Conclusion
Efficient management of digital assets is crucial for maintaining optimal performance in web-based applications using 3D graphics and real-time rendering. By adhering to these guidelines, you can ensure that models, images, audio, and environment maps contribute positively to the user experience without placing undue strain on system resources or network bandwidth.