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
