include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module corner112u2(u){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch(u)) {
    up(u/2) attach(RIGHT) screw_bore(u);
    up(u/2) attach(LEFT) screw_bore(u);
    down(u/2) attach(FRONT) screw_bore(u);
    down(u/2) attach(BACK) screw_bore(u);
  }
}

corner112u2(20);
