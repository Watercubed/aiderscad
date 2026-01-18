// Simple Crab Model in OpenSCAD

// Define some parameters for the crab
body_length = 30;
body_width = 20;
body_height = 8;
claw_length = 15;
claw_width = 6;
leg_length = 12;
leg_width = 4;
leg_thickness = 2;

// Main body of the crab
module crab_body() {
    cube([body_length, body_width, body_height], center=true);
}

// Left claw
module left_claw() {
    translate([-body_length/2 - claw_length/2, 0, 0])
        rotate([0, 0, 90])
            cube([claw_length, claw_width, leg_thickness], center=true);
}

// Right claw
module right_claw() {
    translate([body_length/2 + claw_length/2, 0, 0])
        rotate([0, 0, -90])
            cube([claw_length, claw_width, leg_thickness], center=true);
}

// Leg module
module crab_leg(position) {
    translate(position)
        rotate([0, 0, 45])
            cube([leg_length, leg_width, leg_thickness], center=true);
}

// Create the complete crab
union() {
    // Body
    crab_body();
    
    // Claws
    left_claw();
    right_claw();
    
    // Legs (8 legs total)
    crab_leg([-body_length/3, -body_width/2 + 5, body_height/2]);
    crab_leg([body_length/3, -body_width/2 + 5, body_height/2]);
    crab_leg([-body_length/3, body_width/2 - 5, body_height/2]);
    crab_leg([body_length/3, body_width/2 - 5, body_height/2]);
    
    // Additional legs for better appearance
    crab_leg([-body_length/4, -body_width/2 + 10, body_height/2]);
    crab_leg([body_length/4, -body_width/2 + 10, body_height/2]);
    crab_leg([-body_length/4, body_width/2 - 10, body_height/2]);
    crab_leg([body_length/4, body_width/2 - 10, body_height/2]);
}
