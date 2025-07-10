include <BOSL2/std.scad>
include <BOSL2/cubetruss.scad>


// cubetruss_support(extents=[2,2,3]);
// cubetruss_segment(size=20);
// frame_map(x=[1,0,0], y=[1,1,0]) cubetruss(size=20, extents=3, clips=[FRONT,BACK]);


chain_hull() {
    cube(5, center=true);
    translate([30, 0, 0]) cube(10, center=true);
    translate([60, 30, 0]) cube(15, center=true);
    translate([60, 60, 0]) cube(20, center=true);
}

vnfobj = cyl(r=60,h=60,$fn=5);
vnf_wireframe(vnfobj,width=5);
