include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>

washer_thickness_2020 = 0;
washer_diameter_2020 = 0;

// Function to create the model
module corner111u3() {
  diff()
    cuboid([u,u,u], chamfer=cube_ch) {
        ymove(u/4) attach(TOP) screw_bore();
        zmove(-u/4) attach(RIGHT) screw_bore();
        xmove(-u/4) attach(FRONT) screw_bore();
    }
}

// Create the model
corner111u3();
