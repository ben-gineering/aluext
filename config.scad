conf = "2020";

// Define configuration using ternary expressions
u = conf == "2020" ? 20 : 
    conf == "3030" ? 30 : 20;

cube_ch = conf == "2020" ? 1 :
          conf == "3030" ? 1.5 : 1;

thread_engagement = conf == "2020" ? 5 :
                    conf == "3030" ? 6 : 5;

// Washer properties remain constant
washer_thickness = 1;
washer_diameter = 12.5;
bore_clearance = 3 * u;

screw_type = conf == "2020" ? "M4,20" :
             conf == "3030" ? "M6,30" : "M4,20";


module screw_bore(){
down(u+thread_engagement)
  screw_hole(screw_type, head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT)
    attach(TOP)
      down(bore_clearance + washer_thickness)
        cyl(d=washer_diameter, h=bore_clearance, anchor=BOT);
}
