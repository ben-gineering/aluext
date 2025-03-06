include <BOSL2/std.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

m4_diameter = 4.5;  // M4 hole diameter (slightly larger for clearance)
m4_length = 14;
m4_counterbore_dia = 12.5;
m4_counterbore_depth = 12;

hole1_pos_x = 0;   // X position of first hole
hole1_pos_y = 0;   // Y position of first hole
hole1_pos_z = -10;   // Z position of first hole

hole2_pos_x = 0;   // X position of second hole
hole2_pos_y = 0;   // Y position of second hole
hole2_pos_z = 10;   // Z position of second hole



// Function to create the model
module corner2() {
  difference() {
    // Main rectangular cube
    cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch);
      translate([hole1_pos_x, hole1_pos_y, hole1_pos_z])
        xcyl(l = cube_x+1, r = m4_diameter/2, $fn = 32);
      translate([hole1_pos_x + cube_x/2 - m4_counterbore_depth/2, hole1_pos_y, hole1_pos_z])
        xcyl(l = m4_counterbore_depth+1, r = m4_counterbore_dia/2, $fn = 32);
      
      translate([hole2_pos_x, hole2_pos_y, hole2_pos_z])
        ycyl(l = cube_y+1, r = m4_diameter/2, $fn = 32);
      translate([hole2_pos_x, hole2_pos_y + cube_y/2 - m4_counterbore_depth/2, hole2_pos_z])
        ycyl(l = m4_counterbore_depth+1, r = m4_counterbore_dia/2, $fn = 32);

      zrot(45) xmove(15)
        cuboid([cube_x,cube_y,cube_z+1]);
  }
}

// Create the model
corner2();
