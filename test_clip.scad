include <BOSL2/std.scad>
include <BOSL2/screws.scad>

// Cube dimensions (same as corner2.scad)
cube_x = 20;   // Length in X direction
cube_y = 20;   // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

// T-slot clip dimensions
t_slot_width = 6;     // Width of the t-slot opening
t_slot_depth = 5;     // Depth of the t-slot
clip_length = 20;     // Length of the clip part
clip_thickness = 2;   // Thickness of the clip part
clip_head_width = 10; // Width of the t-slot head

// Function to create the model
module test_clip() {
  union() {
    // Main rectangular cube (same as corner2)
    cuboid([cube_x, cube_y, cube_z], chamfer=cube_ch);
    
    // T-slot clip part
    attach(BOTTOM) {
      // Stem of the clip
      cuboid([t_slot_width-0.5, clip_length, t_slot_depth], anchor=TOP);
      
      // Head of the clip (the part that goes inside the t-slot)
      down(t_slot_depth)
        cuboid([clip_head_width, clip_length, clip_thickness], anchor=TOP);
    }
  }
}

// Create the model
test_clip();
