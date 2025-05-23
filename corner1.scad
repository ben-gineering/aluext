include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 12;   // Length in X direction
cube_y= 12;    // Width in Y direction
cube_z = 11+5;   // Height in Z direction
cube_ch = 1;    // Chamfer
thread_engagement = 5;
washer_thickness = 1;
washer_diameter = 12.5;
bore_clearance = max(cube_x, cube_y, cube_z);


module screw_bore(){
down(cube_z+thread_engagement+3) // 3mm panels
  screw_hole("M4,20", head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT);
}

// Function to create the model
module corner2(){
diff()
  cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
    attach(TOP) 
      #screw_bore();
  }
}

corner2();
