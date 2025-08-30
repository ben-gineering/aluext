include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module plate114u2(u){
diff()
  cuboid([u,u,4*u], chamfer=cube_ch(u)) {
      up(3/2 * u) attach([FRONT,BACK]) screw_bore(u);
      down(3/2 * u) attach([FRONT,BACK]) screw_bore(u);
  }
}

plate114u2(20);
