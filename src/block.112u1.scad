include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module block112u1(u){
diff()
  cuboid([u, u, 2*u], chamfer=cube_ch(u)) {
    attach(TOP) down(u) screw_bore(u);
  }
}

block112u1(20);
