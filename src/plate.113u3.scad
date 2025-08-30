include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module plate113u3(u){
diff()
  cuboid([u,u,3*u], chamfer=cube_ch(u)) {
      up(u) attach(FRONT) screw_bore(u);
      up(u) attach(BACK) screw_bore(u);
      attach(FRONT) screw_bore(u);
      attach(BACK) screw_bore(u);
      down(u) attach(FRONT) screw_bore(u);
      down(u) attach(BACK) screw_bore(u);
  }
}

plate113u3(u);
