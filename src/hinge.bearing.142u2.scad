include <BOSL2/std.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 20;   // Height in Z direction
cube_ch = 1;    // Chamfer

m4_diameter = 4.5;  // M4 hole diameter (slightly larger for clearance)
m4_length = 14;
m4_counterbore_dia = 12.5;
m4_counterbore_depth = 12;

hole1_pos_x = 0;   // X position of first hole
hole1_pos_y = -20;   // Y position of first hole
hole1_pos_z = 10;   // Z position of first hole

hole2_pos_x = 0;   // X position of second hole
hole2_pos_y = 40;   // Y position of second hole
hole2_pos_z = 10;   // Z position of second hole

bearing_dia = 22;
bearing_depth = 7;
bearing_shoulder = 2;


// Function to create the model
module hinge() {
  difference() {
    // Main rectangular cube
    union() {
        translate([0,30,10])cuboid([cube_x,40,cube_z], chamfer=cube_ch);
        translate([0,-10,10])cuboid([cube_x,40,20], chamfer=cube_ch);

        translate([0,10,20])cuboid([20,40,40], chamfer=cube_ch);
      }
    // hole1
    translate([hole1_pos_x, hole1_pos_y, hole1_pos_z])
      zcyl(l = cube_z+1, r = m4_diameter/2, $fn = 32);
    translate([hole1_pos_x, hole1_pos_y, hole1_pos_z  + cube_z/2 - m4_counterbore_depth/2])
      zcyl(l = m4_counterbore_depth+1, r = m4_counterbore_dia/2, $fn = 32);
    
    // hole2
    translate([hole2_pos_x, hole2_pos_y, hole2_pos_z])
      zcyl(l = cube_z+1, r = m4_diameter/2, $fn = 32);
    translate([hole2_pos_x, hole2_pos_y, hole2_pos_z  + cube_z/2 - m4_counterbore_depth/2])
      zcyl(l = m4_counterbore_depth+1, r = m4_counterbore_dia/2, $fn = 32);

    // bearing
    translate([cube_x/2 - bearing_depth/2,10,20]) xcyl(l = bearing_depth, r = bearing_dia/2, $fn = 32);
    translate([-cube_x/2 + bearing_depth/2,10,20]) xcyl(l = bearing_depth, r = bearing_dia/2, $fn = 32);
    translate([0,10,20]) xcyl(l = cube_x+1, r = bearing_dia/2 - bearing_shoulder, $fn = 32);
  }
}

// Create the model
hinge();
