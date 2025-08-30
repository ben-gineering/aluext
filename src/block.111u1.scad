include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module block111u1(u){
diff()
  cuboid([u,u,u], chamfer=cube_ch(u)) {
    attach(TOP) 
      screw_bore(u);
  }
}

block111u1(u);
