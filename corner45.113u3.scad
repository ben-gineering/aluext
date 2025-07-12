include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// Function to create the model
module corner45113u3(u){
  difference() {
    union() {
      diff(){
        cuboid([u,u,2*u], chamfer=cube_ch(u)) {
          down(u/2) attach(FRONT) screw_bore(u);
          down(u/2) attach(BACK) screw_bore(u);
        }
      }
      move([0,u/2,u]) xrot(45) cuboid([u,u,u], chamfer=cube_ch(u), anchor=BOTTOM+BACK) {}
    }
    move([0,u/2,u]) xrot(45) move([0,-u,u/2]) xrot(90) screw_bore(u);
    move([0,-u/2,u/2]) xrot(90) screw_bore(u);
  }
}

corner45113u3(20);
