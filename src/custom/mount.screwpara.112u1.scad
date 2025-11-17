include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <../aluext.config.scad>

hole_d = 3;
cantilever_h = 5;

// Function to create the model
module mountscrewpara112u1(u){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch(u)) {
    down(u/2) attach(LEFT) screw_bore(u);
    down(u/2) attach(RIGHT) screw_bore(u);
    tag("remove") up(u* 4/5) attach(RIGHT) cyl(h=2*u, d=hole_d, $fn=25);
    tag("remove") up(u) left(u/2 + cantilever_h) cuboid([2*u,2*u,2*u], chamfer=10);
    tag("remove") up(u) fwd(u+4) cuboid([2*u,2*u,2*u], chamfer=10);
    tag("remove") up(u) back(u+4) cuboid([2*u,2*u,2*u], chamfer=10);
  }
}

mountscrewpara112u1(20);
