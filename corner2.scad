include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

// Function to create the model
module corner2() {
  diff() {
    // Main rectangular cube
    cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
      // First hole in X direction (FRONT face)
      attach(FRONT) 
        move(DOWN(10))
        screw_hole("M4,20", head="socket", counterbore=true, $fn=32);
      
      // Second hole in Y direction (RIGHT face)
      attach(RIGHT)
        move(UP(10))
        screw_hole("M4,20", head="socket", counterbore=true, $fn=32);
    }
  }
}

// Create the model
corner2();
