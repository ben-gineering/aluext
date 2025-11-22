include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <../aluext.config.scad>

hole_d = 3;
cantilever_h = 3;

// Function to create the model
// should probably be done adding the cantilever rather than substracting from a 1 by 2 block
module mountscrewpara112u1(u){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch(u)) {
    down(u/2) attach(FRONT) screw_bore(u);
    down(u/2) attach(BACK) screw_bore(u);
    tag("remove") up(u/2) attach(RIGHT) cyl(h=2*u, d=hole_d, $fn=25);
    tag("remove") up(u) left(u/2 + cantilever_h) cuboid([2*u,2*u,2*u], chamfer=5);
    tag("remove") up(u) fwd(u+4) cuboid([2*u,2*u,2*u], chamfer=5);
    tag("remove") up(u) back(u+4) cuboid([2*u,2*u,2*u], chamfer=5);
    tag("remove") up(u + 4) xrot(90) cuboid([u,u,10], chamfer=-3);
  }
}

mountscrewpara112u1(20);
