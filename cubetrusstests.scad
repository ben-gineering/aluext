include <BOSL2/std.scad>
include <BOSL2/cubetruss.scad>


// cubetruss_support(extents=[2,2,3]);
// cubetruss_segment(size=20);
cubetruss(size=20, extents=3, clips=[FRONT,BACK]);
