// Simple Robot Arm Model

// Define dimensions
base_height = 20;
shoulder_radius = 25;
upper_arm_length = 80;
lower_arm_length = 70;
gripper_length = 15;
gripper_width = 10;
gripper_height = 8;

// Base plate
translate([0, 0, base_height/2])
    cylinder(h=base_height, r=shoulder_radius + 10, $fn=64);

// Shoulder joint
translate([0, 0, base_height])
    cylinder(h=shoulder_radius, r=shoulder_radius, $fn=64);

// Upper arm
translate([0, 0, base_height + shoulder_radius])
    rotate([0, 90, 0])
        cylinder(h=upper_arm_length, r=10, $fn=32);

// Lower arm  
translate([0, 0, base_height + shoulder_radius + upper_arm_length/2])
    rotate([0, 90, 0])
        cylinder(h=lower_arm_length, r=8, $fn=32);

// Gripper base
translate([0, 0, base_height + shoulder_radius + upper_arm_length + lower_arm_length/2 - gripper_length/2])
    cube([gripper_width, gripper_length, gripper_height], center=true);

// Left gripper finger
translate([0, -gripper_width/2, base_height + shoulder_radius + upper_arm_length + lower_arm_length/2 - gripper_length/2])
    rotate([0, 90, 0])
        cylinder(h=gripper_length, r=3, $fn=16);

// Right gripper finger
translate([0, gripper_width/2, base_height + shoulder_radius + upper_arm_length + lower_arm_length/2 - gripper_length/2])
    rotate([0, 90, 0])
        cylinder(h=gripper_length, r=3, $fn=16);

// Joint connections
translate([0, 0, base_height + shoulder_radius/2])
    sphere(r=shoulder_radius/4, $fn=32);
    
translate([0, 0, base_height + shoulder_radius + upper_arm_length/2])
    sphere(r=8/4, $fn=32);

translate([0, 0, base_height + shoulder_radius + upper_arm_length + lower_arm_length/2])
    sphere(r=8/4, $fn=32);
