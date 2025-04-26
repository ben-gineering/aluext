include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer
thread_engagement = 5;
washer_thickness = 1;
washer_diameter = 12.5;
bore_clearance = max(cube_x, cube_y, cube_z);


module screw_bore(){
down(20+thread_engagement)
  screw_hole("M4,20", head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT)
    attach(TOP)
      down(bore_clearance + washer_thickness)
        cyl(d=washer_diameter, h=bore_clearance, anchor=BOT);
}

// Function to create the model
module corner2(){
diff()
  cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
    down(10) 
      attach(FRONT) 
        screw_bore();
    up(10)
      attach(RIGHT) 
        screw_bore();
    down(10) 
      attach(BACK) 
        screw_bore();
    up(10)
      attach(LEFT) 
        screw_bore();
  }
}

corner2();
