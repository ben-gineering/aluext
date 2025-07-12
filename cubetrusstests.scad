include <BOSL2/std.scad>
include <BOSL2/cubetruss.scad>


// cubetruss_support(extents=[2,2,3]);
// cubetruss_segment(size=20);
// frame_map(x=[1,0,0], y=[1,1,0]) cubetruss(size=20, extents=3, clips=[FRONT,BACK]);


//chain_hull() {
//    cube(5, center=true);
//    translate([30, 0, 0]) cube(10, center=true);
//    translate([60, 30, 0]) cube(15, center=true);
//    translate([60, 60, 0]) cube(20, center=true);
//}
//
//vnfobj = cyl(r=60,h=60,$fn=5);
//vnf_wireframe(vnfobj,width=5);

diag_weave_vnf = [
   [[0.2, 0, 0], [0.8, 0, 0], [1, 0.2, 0.5], [1, 0.8, 0.5], [0.7, 0.5, 0.5],
    [0.5, 0.3, 0], [0.2, 0, 0.5], [0.8, 0, 0.5], [1, 0.2, 1], [1, 0.8, 1],
    [0.7, 0.5, 1], [0.5, 0.3, 0.5], [1, 0.2, 0], [1, 0.8, 0], [0.8, 1, 0.5],
     [0.2, 1, 0.5], [0.5, 0.7, 0.5], [0.7, 0.5, 0], [0.8, 1, 1], [0.2, 1, 1],
     [0.5, 0.7, 1], [0.8, 1, 0], [0.2, 1, 0], [0, 0.8, 0.5], [0, 0.2, 0.5],
     [0.3, 0.5, 0.5], [0.5, 0.7, 0], [0, 0.8, 1], [0, 0.2, 1], [0.3, 0.5, 1],
     [0, 0.8, 0], [0, 0.2, 0], [0.3, 0.5, 0], [0.2, 0, 1], [0.8, 0, 1], [0.5, 0.3, 1]],
    [[0, 1, 5], [1, 2, 4, 5], [7, 11, 10, 8], [8, 10, 9], [7, 8, 2, 1], [9, 10, 4, 3],
     [10, 11, 5, 4], [0, 5, 11, 6], [12, 13, 17], [13, 14, 16, 17], [3, 4, 20, 18],
     [18, 20, 19], [3, 18, 14, 13], [19, 20, 16, 15], [20, 4, 17, 16], [12, 17, 4, 2],
     [21, 22, 26], [22, 23, 25, 26], [15, 16, 29, 27], [27, 29, 28], [15, 27, 23, 22],
     [28, 29, 25, 24], [29, 16, 26, 25], [21, 26, 16, 14], [30, 31, 32], [31, 6, 11, 32],
     [24, 25, 35, 33], [33, 35, 34], [24, 33, 6, 31], [34, 35, 11, 7],
     [35, 25, 32, 11], [30, 32, 25, 23]]
];
// linear_sweep(circle(d=12,$fn=100), h=12, scale=1, texture=diag_weave_vnf,
//               tex_size=[5,5], convexity=12);



function f(x) = 3 - 2.5 * x;
function r(x) = 0.5 * 360 * x * x * x;
pathstep = 1;
height = 100;
shape_points = subdivide_path(square(10),40,closed=true);
path_transforms = [for (i=[0:pathstep:height]) let(t=i/height) up(i) * scale([f(t),f(t),i]) * zrot(r(t))];
sweep(shape_points, path_transforms, texture=diag_weave_vnf, tex_size=[40,50], tex_depth=5, tex_samples=20);
