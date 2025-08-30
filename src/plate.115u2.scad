include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module plate115u2(u){
diff()
  cuboid([u,u,5*u], chamfer=cube_ch(u)) {
      up(2*u) attach([FRONT,BACK]) screw_bore(u);
      down(2*u) attach([FRONT,BACK]) screw_bore(u);
  }
}

plate115u2(20);
