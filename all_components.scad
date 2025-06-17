// Visualization of all components across profiles
include <BOSL2/std.scad>
use <config.scad>
$fn=32;

// Define component spacing based on max profile size
spacing = 100;

// Create grid of components organized by profile
for (i = [0:2]) {
    profile = ["2020", "3030", "4040"][i];
    translate([0, i * spacing, 0]) 
    group() {
        conf = profile;
        
        // Corner Components
        translate([0, 0, 0]) corner111u3();
        translate([1*u, 0, 0]) corner112u2();
        translate([2*u, 0, 0]) corner122u2();

        // Block Components
        translate([3*u, 0, 0]) block111u1();
        translate([4*u, 0, 0]) block122u2();
        translate([5*u, 0, 0]) block121215mm1();

        // Plate Components
        translate([6*u, 0, 0]) plate112u2();

        // Hinge Components
        translate([7*u, 0, 0]) hingebearing142u2();
        translate([8*u, 0, 0]) hingerod142u2();
    }
}
