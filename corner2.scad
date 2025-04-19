include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

// Function to create the model
module corner2(){
diff()
  cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
    down(10) 
      attach(FRONT) 
        screw_hole("M4,20", head="socket", counterbore=true, $fn=32, anchor=TOP);
    up(10)
      attach(RIGHT) 
        screw_hole("M4,20", head="socket", counterbore=true, $fn=32, anchor=TOP);
  }
}


corner2();
