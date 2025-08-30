include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module corner45114u2(u){
  union() {
    diff(){
      cuboid([u,u,2*u], chamfer=cube_ch(u)) {
        down(u/2) attach([FRONT,BACK]) screw_bore(u);
      }
    }
    diff(){
      move([0,u/2,u]) xrot(45) cuboid([u,u,2*u], chamfer=cube_ch(u), anchor=BOTTOM+BACK) {
        up(u/2) attach([FRONT,BACK]) screw_bore(u);
      }
    }
  }
}

corner45114u2(20);
