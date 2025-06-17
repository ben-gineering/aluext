include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>

// Function to create the model
module plate113u3(){
diff()
  cuboid([u,u,3*u], chamfer=cube_ch) {
      up(u) attach(FRONT) screw_bore();
      up(u) attach(BACK) screw_bore();
      attach(FRONT) screw_bore();
      attach(BACK) screw_bore();
      down(u) attach(FRONT) screw_bore();
      down(u) attach(BACK) screw_bore();
  }
}

plate113u3();
