include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <../aluext.config.scad>

pipe_d = 10;
slot_width = 2;

// Function to create the model
module pipext(u){
diff()
  cuboid([u,u,2*u], chamfer=cube_ch(u)) {
    tag("remove") up(u/2) attach(RIGHT) cyl(h=4*u,d=pipe_d,$fn=50);
    tag("remove") up(u/2) back(pipe_d/2) right(u/4) rot([0,-90,0]) wedge([pipe_d, pipe_d, pipe_d], center=true);
    tag("remove") up(u/2) fwd(pipe_d/2) left(u/4) rot([0,90,-90]) wedge([pipe_d, pipe_d, pipe_d], center=true);
    
    tag("remove") down(u/2) attach(FRONT) cyl(h=4*u,d=pipe_d,$fn=50);
    tag("remove") down(u/2) fwd(pipe_d/2) left(u/4) rot([0,-90,0]) wedge([pipe_d, pipe_d, pipe_d], center=true);
    tag("remove") down(u/2) back(pipe_d/2) right(u/4) rot([0,90,-90]) wedge([pipe_d, pipe_d, pipe_d], center=true);
 
    tag("remove") zrot(45) cuboid([3*u,slot_width,3*u]);
    
    tag("remove") zrot(45) attach([FRONT,BACK]) screw_bore(u);
  }
}

pipext(20);
