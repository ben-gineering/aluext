include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// this is a custom block not part of the core set

// Function to create the model
module mount122u2(u){
  difference(){
    diff() cuboid([u,2*u,2*u], chamfer=cube_ch(u)) {
      down(u/2) ymove(u/2) attach([RIGHT,LEFT]) screw_bore(u);
      down(u/2) ymove(-u/2) attach([RIGHT,LEFT]) screw_bore(u);
    }
    up(u/2) ycyl(d=10, h=3*u, $fn=32);
  }
}


mount122u2(20);
