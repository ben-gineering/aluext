include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>

// Function to create the model
module plate112u2(){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch) {
      up(u/2) attach(FRONT) screw_bore();
      down(u/2) attach(FRONT) screw_bore();
      up(u/2) attach(BACK) screw_bore();
      down(u/2) attach(BACK) screw_bore();
  }
}

plate112u2();
