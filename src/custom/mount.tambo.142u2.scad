include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <../aluext.config.scad>

// Function to create the model
module mountpipe112u1(u){
diff()
  cuboid([u,4*u,2*u], chamfer=cube_ch(u)) {
    // mounting screw holes
    tag("remove") attach(TOP) back(1.5*u) down(u) screw_bore(u);
    tag("remove") attach(TOP) fwd(1.5*u) down(u) screw_bore(u);
    
    // pin hole
    tag("remove") cyl(h=3*u,d=1.4,$fn=50);
    // tambourine shell slots
    tag("remove") up(u/3) cuboid([2*u,42,8]);
    tag("remove") down(u/3) cuboid([2*u,42,8]);
  }
}

mountpipe112u1(20);
