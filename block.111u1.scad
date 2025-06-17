include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>

// Function to create the model
module block111u1(){
diff()
  cuboid([u,u,u], chamfer=cube_ch) {
    attach(TOP) 
      screw_bore();
  }
}

block111u1();
