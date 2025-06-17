include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>


// Function to create the model
module block122u2(){
diff()
  cuboid([u,2*u,2*u], chamfer=cube_ch) {
    attach(TOP) fwd(u/2) down(u) screw_bore();
    up(u/2) back(u/2) attach(RIGHT) screw_bore();
    up(u/2) back(u/2) attach(LEFT) screw_bore();
  }
}

block122u2();
