include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <aluext.config.scad>

washer_thickness = 0;
washer_diameter = 0;

module block121215mm1(u){
diff()
  cuboid([12,12,15], chamfer=cube_ch(u)) {
    attach(TOP) 
      screw_bore(u);
  }
}

block121215mm1(u);
