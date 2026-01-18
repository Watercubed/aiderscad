// P Orbital Visualization
// This file creates a 3D visualization of p orbitals in different orientations

// Define parameters
orbital_radius = 10;
lobes_distance = 15;
sphere_size = 2;
cylinder_radius = 0.8;

// Function to create a single p orbital lobe
module p_orbital_lobe(position, orientation) {
    // Create the main lobe sphere
    translate(position)
        sphere(r=sphere_size);
    
    // Create connecting cylinder
    if (orientation == "x") {
        rotate([0, 90, 0])
            cylinder(h=2*lobes_distance, r=cylinder_radius, center=true);
    } else if (orientation == "y") {
        rotate([90, 0, 0])
            cylinder(h=2*lobes_distance, r=cylinder_radius, center=true);
    } else { // z orientation
        cylinder(h=2*lobes_distance, r=cylinder_radius, center=true);
    }
}

// Create three p orbitals (px, py, pz) with different colors
// P orbital along X-axis (red)
color([1, 0, 0, 0.7])
union() {
    p_orbital_lobe([lobes_distance, 0, 0], "x");
    p_orbital_lobe([-lobes_distance, 0, 0], "x");
}

// P orbital along Y-axis (green)
color([0, 1, 0, 0.7])
union() {
    p_orbital_lobe([0, lobes_distance, 0], "y");
    p_orbital_lobe([0, -lobes_distance, 0], "y");
}

// P orbital along Z-axis (blue)
color([0, 0, 1, 0.7])
union() {
    p_orbital_lobe([0, 0, lobes_distance], "z");
    p_orbital_lobe([0, 0, -lobes_distance], "z");
}

// Add a central node representation
color([0.5, 0.5, 0.5, 0.3])
cylinder(h=0.2, r=orbital_radius*0.8, center=true, $fn=50);
