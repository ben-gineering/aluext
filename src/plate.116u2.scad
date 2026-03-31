include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module plate116u2(u){
diff()
  cuboid([u,u,6*u], chamfer=cube_ch(u)) {
      up(2.5*u) attach([FRONT,BACK]) screw_bore(u);
      down(2.5*u) attach([FRONT,BACK]) screw_bore(u);
  }
}

plate116u2(20);
