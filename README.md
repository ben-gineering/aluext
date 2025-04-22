# AluExt

A collection of OpenSCAD models for aluminum extrusion-based projects and components.

## Overview

This repository contains parametric 3D models for various components that can be used with aluminum extrusion profiles. These models can be customized and 3D printed to create mounts, connectors, and other accessories for your DIY projects.

## Motivation

The main motivation behind the AluExt framework is that by adhering to a few set defaults, nothing else needs to be exact, and therefore iteration and adjustments can happen much faster. Following the principle: "If you can't make it perfect, make it adjustable."

The components are designed to be parametric to accommodate different hardware combinations, while providing sensible defaults for quick prototyping.

## Default Parameters

- **Extrusion Profile**: 20x20mm
- **T-Slot Width**: 6mm
- **Screws**: M4 x 20mm
- **Standard Extrusion Lengths**: 0.2m, 0.3m, 0.5m, 1m

## Components

Components are organized into tiers based on their usage frequency and importance:

### Tier 0 - Essential Components
Components needed for virtually every project:
- **corner2.scad**: A 2-way corner connector with M4 screw holes for mounting to aluminum extrusion

### Tier 1 - Extended Functionality
Components that extend basic functionality for many projects:
- **corner3.scad**: A 3-way corner connector with M4 screw holes and counterbores
- **corner2.clip.scad**: A clip-on version of the 2-way corner connector that doesn't require screws

### Tier 2 - Project-Specific Components
Specialized components likely needed by only a few projects:
- **bearing_housing.scad**: Housing for 22mm bearings with mounting holes
- **rod_mount.scad**: Mount for 8mm rods with M4 mounting holes

## Parameters

Most models include customizable parameters:
- Dimensions (length, width, height)
- Chamfer size
- Hole positions and sizes
- Bearing dimensions

## Requirements

- [OpenSCAD](https://www.openscad.org/)
- [BOSL2 Library](https://github.com/revarbat/BOSL2) for OpenSCAD

## Usage

1. Install OpenSCAD and the BOSL2 library
2. Open the desired .scad file with OpenSCAD
3. Adjust parameters as needed for your specific application
4. Render and export as STL for 3D printing
