include <BOSL2/std.scad>


// Cube dimensions
cube_x= 24;   // Length in X direction
cube_y= 24;    // Width in Y direction
cube_z = 24;   // Height in Z direction
cube_ch = 2;    // Chamfer

m4_diameter = 4.5;  // M4 hole diameter (slightly larger for clearance)

hole1_pos_x = 0;   // X position of first hole
hole1_pos_y = 5;   // Y position of first hole
hole1_pos_z = -2;   // Z position of first hole

hole2_pos_x = -2;   // X position of second hole
hole2_pos_y = 0;   // Y position of second hole
hole2_pos_z = 5;   // Z position of second hole

hole3_pos_x = 5;   // X position of second hole
hole3_pos_y = -2;   // Y position of second hole
hole3_pos_z = 0;   // Z position of second hole


// Function to create the model
module coboid_with_holes() {
  difference() {
    // Main rectangular cube
    cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch);
      translate([hole1_pos_x, hole1_pos_y, hole1_pos_z])
        xcyl(l = cube_x+1, r = m4_diameter/2, $fn = 32);
      translate([hole2_pos_x, hole2_pos_y, hole2_pos_z])
        ycyl(l = cube_y+1, r = m4_diameter/2, $fn = 32);
      translate([hole3_pos_x, hole3_pos_y, hole3_pos_z])
        zcyl(l = cube_z+1, r = m4_diameter/2, $fn = 32);
  }
}

// Create the model
coboid_with_holes();
