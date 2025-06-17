# AluExt

A collection of OpenSCAD models for aluminum extrusion-based projects and components.

## Overview

This repository contains parametric 3D models for various components that can be used with aluminum extrusion profiles. These models can be customized and 3D printed to create mounts, connectors, and other accessories for your DIY projects.

## Motivation

The main motivation behind the AluExt framework is that by adhering to a few set defaults, nothing else needs to be exact, and therefore iteration and adjustments can happen much faster. Following the principle: "If you can't make it perfect, make it adjustable."

The components are designed to be parametric to accommodate different hardware combinations, while providing sensible defaults for quick prototyping.

## Default Parameters

- **Supported Extrusion Profiles**: 2020 (20x20mm), 3030 (30x30mm), 4040 (40x40mm)
- **T-Slot Width**: 6mm
- **Screws**: Default M4 (2020), M6 (3030), M8 (4040)
- **Standard Extrusion Lengths**: 0.2m, 0.3m, 0.5m, 1m

## Components

All components are parametric and designed for use with 20x20mm aluminum extrusion (where 1 unit (u) = 20mm). The components in this repository use a naming convention to convey their type, dimensions, and screw count:

`[type].[dimensions]u[screw_count].scad`

Where:
- `[type]`: The component type (e.g., corner, block, plate, hinge.bearing, hinge.rod)
- `[dimensions]`: Three numbers representing the dimensions in units (u) in the order: **width (x)**, **height (z)**, **depth (y)**
- `[screw_count]`: The number of screws used by the component

### Current Components

- **Corner Connectors**:
  - `corner.111u3.scad`: Triple screw corner connector for 1u (20mm) in all dimensions
  - `corner.112u2.scad`: Corner connector for 1u (x), 1u (z), 2u (y) with two screws
  - `corner.122u2.scad`: Corner connector for 1u (x), 2u (z), 2u (y) with two screws

- **Blocks**:
  - `block.111u1.scad`: Block connector for 1u in all dimensions with one screw
  - `block.122u2.scad`: Block connector for 1u (x), 2u (z), 2u (y) with two screws
  - `block.121215mm1.scad`: Block connector with dimensions 12mm (x), 12mm (z), 15mm (y) and one screw (exception to unit-based naming)

- **Plates**:
  - `plate.112u2.scad`: Plate for 1u (x), 1u (z), 2u (y) with two screws

- **Hinges**:
  - `hinge.bearing.142u2.scad`: Bearing housing for hinge (1u x, 4u z, 2u y) with two screws
  - `hinge.rod.142u2.scad`: Rod mount for hinge (1u x, 4u z, 2u y) with two screws

### Deprecated Components

The `deprecated/` directory contains older versions of components that are no longer recommended for use.

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
