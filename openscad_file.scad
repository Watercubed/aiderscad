// Simple Box Model

// Define box dimensions
box_length = 100;
box_width = 80;
box_height = 60;

// Create the box
cube([box_length, box_width, box_height], center=true);

// Optional: Add some styling with a hole in the center
translate([0, 0, box_height/2 - 5])
    cylinder(h=10, r=20, $fn=32);

// Add symmetrical wheels on bottom
wheel_radius = 10;
wheel_thickness = 5;

// Front left wheel
translate([-box_length/2 + 20, box_width/2 - 15, -box_height/2])
    rotate([90, 0, 0])
        cylinder(h=wheel_thickness, r=wheel_radius, $fn=32);

// Front right wheel  
translate([box_length/2 - 20, box_width/2 - 15, -box_height/2])
    rotate([90, 0, 0])
        cylinder(h=wheel_thickness, r=wheel_radius, $fn=32);

// Back left wheel
translate([-box_length/2 + 20, -box_width/2 + 15, -box_height/2])
    rotate([90, 0, 0])
        cylinder(h=wheel_thickness, r=wheel_radius, $fn=32);

// Back right wheel
translate([box_length/2 - 20, -box_width/2 + 15, -box_height/2])
    rotate([90, 0, 0])
        cylinder(h=wheel_thickness, r=wheel_radius, $fn=32);
