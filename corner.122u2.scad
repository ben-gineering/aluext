include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>


// Function to create the model
module corner122u2(){
diff()
  cuboid([u,2*u,2*u], chamfer=cube_ch) {
    fwd(u/2) down(u) attach(TOP) screw_bore();
    up(u/2) back(u) attach(FRONT) screw_bore();
  }
}

corner122u2();
