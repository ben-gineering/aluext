include <BOSL2/std.scad>
include <BOSL2/screws.scad>
include <config.scad>

washer_thickness = 0;
washer_diameter = 0;

module block121215mm1(){
diff()
  cuboid([12,12,15], chamfer=cube_ch) {
    attach(TOP) 
      screw_bore();
  }
}

block121215mm1();
