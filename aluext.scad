// // CLAUDE Corner Bracket Parameters
// width = 20;      // Width of the bracket
// length = 20;     // Length of each arm
// thickness = 6;   // Thickness of the bracket
// hole_d = 4.1;    // Diameter of mounting holes
// hole_margin = 10; // Distance from edges to holes
// 
// // Fillet radius for corners
// fillet_r = 2;
// 
// // Number of holes per arm
// holes_per_arm = 1;
// 
// module rounded_corner(size, radius) {
//     translate([radius, radius, 0])
//     minkowski() {
//         square([size[0]-2*radius, size[1]-2*radius]);
//         circle(r=radius, $fn=32);
//     }
// }
// 
// module bracket_arm() {
//     difference() {
//         // Main arm body
//         linear_extrude(height=thickness)
//         rounded_corner([width, length], fillet_r);
//         
//         // Holes
//         if (holes_per_arm >= 2) {
//             // Multiple holes along the arm
//             for(i = [0:holes_per_arm-1]) {
//                 translate([width/2, 
//                           hole_margin + i*(length-2*hole_margin)/(holes_per_arm-1), 
//                           -1])
//                 cylinder(d=hole_d, h=thickness+2, $fn=32);
//             }
//         } else {
//             // Single hole in the middle
//             translate([width/2, length/2, -1])
//             cylinder(d=hole_d, h=thickness+2, $fn=32);
//         }
//     }
// }
// 
// module corner_bracket() {
//     // First arm
//     bracket_arm();
//     
//     // Second arm (rotated 90 degrees)
//     translate([0, 0, width])
//     rotate([-90, 0, 0])
//     bracket_arm();
// }
// 
// // Generate the bracket
// corner_bracket();


use <OpenSCAD_connectors/corner_bracket.scad>
//corner_bracket(1, 0, 1);
corner_bracket(1,0,1, side_length=20, side_plate_th=4, th=4, bolt_diameter=4.3, bolt_hole_offset=4);  // offset can be very useful
    
