include <BOSL2/std.scad>
include <BOSL2/screws.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 20;    // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer
thread_engagement = 5;
washer_thickness = 1;
washer_diameter = 10;

// Function to create the model
module corner2(){
diff()
  cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
    down(10) 
      attach(FRONT) 
        down(20+thread_engagement)
          screw_hole("M4,20", head="socket", counterbore=10, $fn=32, anchor=BOT);
    up(10)
      attach(RIGHT) 
        down(20+thread_engagement)
          screw_hole("M4,20", head="socket", counterbore=10, $fn=32, anchor=BOT);
  }
}

//corner2();

screw_hole("M4,20", head="socket", counterbore=10, $fn=32, anchor=BOT)
  attach(TOP)
    down(10 + washer_thickness)
      cyl(d=washer_diameter, h=10, anchor=BOT);
