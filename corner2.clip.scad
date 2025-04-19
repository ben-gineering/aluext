include <BOSL2/std.scad>
include <BOSL2/screws.scad>

// Cube dimensions (same as corner2.scad)
cube_x = 20;   // Length in X direction
cube_y = 20;   // Width in Y direction
cube_z = 40;   // Height in Z direction
cube_ch = 1;    // Chamfer

// T-slot clip dimensions
t_slot_width = 6;     // Width of the t-slot opening
t_slot_depth = 4.5;     // Depth of the t-slot
clip_length = 20;     // Length of the clip part
clip_thickness = 2;   // Thickness of the clip part
clip_head_width = 10; // Width of the t-slot head

module clip() {
  cyl(l=2, d=t_slot_width, $fn=32, anchor=BOT)
    attach(TOP)
      cyl(l=t_slot_depth, d1=t_slot_width + 2, d2=t_slot_width - 2, rounding=1, $fn=32, anchor=BOT);
}

// Function to create the model
module corner2_clip() {
  cuboid([cube_x,cube_y,cube_z], chamfer=cube_ch) {
    down(10) 
      attach(FRONT) 
        clip();
    up(10)
      attach(RIGHT) 
        clip();
  }
}

// Create the model
corner2_clip();
