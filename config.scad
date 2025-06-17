conf = "2020";

if (conf == "2020") {
  u = 20;
  cube_ch = 1;
  thread_engagement = 5;
  washer_thickness = 1;
  washer_diameter = 12.5;
  bore_clearance = 3 * u;
  screw_type = "M4,20";
}

if (conf == "3030") {
  u = 30;
  cube_ch = 1.5;
  thread_engagement = 6;
  washer_thickness = 1;
  washer_diameter = 12.5;
  bore_clearance = 3 * u;
  screw_type = "M6,30";
}


assert (conf != undef);

module screw_bore(){
down(u+thread_engagement)
  screw_hole(screw_type, head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT)
    attach(TOP)
      down(bore_clearance + washer_thickness)
        cyl(d=washer_diameter, h=bore_clearance, anchor=BOT);
}
