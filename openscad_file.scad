// P Orbital Visualization
// This file creates a 3D visualization of a p orbital

// Define parameters
orbital_radius = 10;
lobes_distance = 15;
sphere_size = 2;

// Create the p orbital shape
union() {
    // Main lobes (dumbbell shape)
    translate([0, 0, lobes_distance])
        sphere(r=sphere_size);
    
    translate([0, 0, -lobes_distance])
        sphere(r=sphere_size);
    
    // Connecting cylinder
    cylinder(h=2*lobes_distance, r=sphere_size/2, center=true);
    
    // Additional visualization elements to show the orbital structure
    // Nodal plane (invisible in this representation but implied)
    // We'll add a transparent disk at the center to represent the node
    
    translate([0, 0, 0])
        cylinder(h=0.1, r=orbital_radius, center=true, $fn=50);
}
