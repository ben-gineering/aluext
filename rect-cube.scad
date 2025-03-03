// Parametric Rectangular Cube with Two M4 Through Holes
// One hole is 90 degrees to the other

// Cube dimensions
cube_length = 20;   // Length in X direction
cube_width = 30;    // Width in Y direction
cube_height = 20;   // Height in Z direction

// Screw hole parameters
m4_diameter = 4.5;  // M4 hole diameter (slightly larger for clearance)
hole1_pos_x = 0;   // X position of first hole
hole1_pos_y = -5;   // Y position of first hole
hole1_pos_z = 0;   // Z position of first hole

hole2_pos_x = 0;   // X position of second hole
hole2_pos_y = 5;   // Y position of second hole
hole2_pos_z = 0;   // Z position of second hole

// Function to create the model
module rectangular_cube_with_holes() {
    difference() {
        // Main rectangular cube
        cube([cube_length, cube_width, cube_height], center = true);
        
        // First hole (along X axis)
        rotate([0, 90, 0])
            translate([-(hole1_pos_z), hole1_pos_y, -cube_length/2])
                cylinder(h = cube_length, d = m4_diameter, $fn = 32);
        
        // Second hole (along Z axis - 90 degrees to the first hole)
        rotate([0, 0, 0])
            translate([hole2_pos_x, hole2_pos_y, -cube_height/2])
                cylinder(h = cube_height, d = m4_diameter, $fn = 32);
    }
}

// Create the model
rectangular_cube_with_holes();
