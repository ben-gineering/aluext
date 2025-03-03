include <BOSL2/std.scad>


// Cube dimensions
cube_x= 20;   // Length in X direction
cube_y= 30;    // Width in Y direction
cube_z = 20;   // Height in Z direction

m4_diameter = 4.5;  // M4 hole diameter (slightly larger for clearance)
hole1_pos_x = 0;   // X position of first hole
hole1_pos_y = -5;   // Y position of first hole
hole1_pos_z = 0;   // Z position of first hole

hole2_pos_x = 0;   // X position of second hole
hole2_pos_y = 5;   // Y position of second hole
hole2_pos_z = 0;   // Z position of second hole



// Function to create the model
module coboid_with_holes() {
    difference() {
        // Main rectangular cube
        cuboid([cube_x,cube_y,cube_z], chamfer=2);
        
        // First hole (along X axis)
        rotate([0, 90, 0])
            translate([-(hole1_pos_z), hole1_pos_y, -cube_x/2])
                cylinder(h = cube_x, d = m4_diameter, $fn = 32);
        
        // Second hole (along Z axis - 90 degrees to the first hole)
        rotate([0, 0, 0])
            translate([hole2_pos_x, hole2_pos_y, -cube_z/2])
                cylinder(h = cube_z, d = m4_diameter, $fn = 32);
    }
}

// Create the model
coboid_with_holes();
