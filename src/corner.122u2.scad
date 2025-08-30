include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>


// Function to create the model
module corner122u2(u){
diff()
  cuboid([u,2*u,2*u], chamfer=cube_ch(u)) {
    fwd(u/2) down(u) attach(TOP) screw_bore(u);
    up(u/2) back(u) attach(FRONT) screw_bore(u);
  }
}

corner122u2(20);
