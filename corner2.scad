include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

// Hole positions
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
    
    // First hole in X direction
    translate([hole1_pos_x, hole1_pos_y, hole1_pos_z])
      xrot(90)
      zrot(90)
      screw_hole("M4,20", head="socket", counterbore=true, $fn=32);
    
    // Second hole in Y direction
    translate([hole2_pos_x, hole2_pos_y, hole2_pos_z])
      xrot(0)
      zrot(0)
      screw_hole("M4,20", head="socket", counterbore=true, $fn=32);
  }
}

// Create the model
corner2();
