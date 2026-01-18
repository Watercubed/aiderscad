# P Orbital Visualization

This project creates a 3D visualization of p orbitals using OpenSCAD. The visualization shows the three main orientations of p orbitals (px, py, and pz) with different colors for clarity.

[Screencast From 2026-01-18 16-23-51.webm](https://github.com/user-attachments/assets/5fcff867-4e2c-4600-9072-7cd39e9115fe)

## Overview

The script generates a 3D model representing p orbitals in their standard orientations:
- **PX Orbital**: Red colored orbital along the X-axis
- **PY Orbital**: Green colored orbital along the Y-axis  
- **PZ Orbital**: Blue colored orbital along the Z-axis

Each orbital consists of two lobes connected by a central cylinder, with small spheres at each lobe position.

## Parameters

The visualization uses these adjustable parameters:
- `orbital_radius`: Controls the size of the central node (default: 10)
- `lobes_distance`: Determines how far apart the orbital lobes are positioned (default: 15)
- `sphere_size`: Size of the lobe spheres (default: 2)
- `cylinder_radius`: Thickness of the connecting cylinders (default: 0.8)

## Usage

To use this visualization:
1. Open the `.scad` file in OpenSCAD
2. Adjust parameters as needed for different scales or styles
3. Render the model to see the p orbital representation

## File Structure

- `openscad_file.scad`: Main OpenSCAD script containing the orbital visualization code
- `README.md`: This documentation file

## Notes

This is a simplified 3D representation of atomic orbitals for educational purposes. The actual quantum mechanical description of p orbitals involves complex mathematical functions, but this visualization provides an intuitive understanding of their spatial orientation and nodal structure.
