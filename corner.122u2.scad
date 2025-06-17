include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>


// Function to create the model
module corner122u2(){
diff()
  cuboid([u,2*u,2*u], chamfer=cube_ch) {
      // Top face screw (centered in X, front offset in Y)
      attach(TOP) fwd(u/2) screw_bore();
      // Front face screw (centered in X, top offset in Z)
      attach(FRONT) up(u/2) rotate([90,0,0]) screw_bore();
  }
}

corner122u2();
