include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <../aluext.config.scad>

pipe_d = 10;
slot_width = 1.5;

// Function to create the model
module mountpipe112u1(u){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch(u)) {
    tag("remove") down(u/2) attach([FRONT,BACK]) screw_bore(u);
    tag("remove") up(u/2) attach(RIGHT) cyl(h=4*u,d=pipe_d,$fn=50);
    tag("remove") down(u/2) cuboid([2*u,slot_width,2*u]);
  }
}

mountpipe112u1(20);
