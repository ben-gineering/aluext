include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

// V-groove parameters (override with -D, e.g. -D groove_angle=60)
groove_angle = 90;    // V-groove apex angle in degrees
groove_depth = 1;     // V-groove depth in mm

// V-grooves for one face (oriented for FRONT, replicated to all 4 sides via zrot_copies)
// Note: linear_extrude() is non-attachable in BOSL2, so tag("remove") won't propagate
// through diff(). Must use force_tag("remove") instead. See BOSL2 attachments.scad docs.
module v_grooves_face(u) {
  half_w = groove_depth * tan(groove_angle / 2);
  // Vertical groove: V cross-section in XY plane, extruded along Z
  force_tag("remove")
    linear_extrude(height = u + 2, center = true)
      polygon([[-half_w, -u/2], [half_w, -u/2], [0, -u/2 + groove_depth]]);
  // Horizontal groove: same triangle rotated to extrude along X
  force_tag("remove")
    yrot(90)
      linear_extrude(height = u + 2, center = true)
        polygon([[-half_w, -u/2], [half_w, -u/2], [0, -u/2 + groove_depth]]);
}

module block_grooved_111u1(u) {
  diff()
    cuboid([u, u, u], chamfer = cube_ch(u)) {
      attach(TOP) screw_bore(u);
      zrot_copies(n = 4) v_grooves_face(u);
    }
}

block_grooved_111u1(20);
