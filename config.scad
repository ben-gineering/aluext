conf = "2020";

// Constants for 2020 profile
u_2020 = 20;
cube_ch_2020 = 1;
thread_engagement_2020 = 5;
screw_type_2020 = "M4,20";

// Constants for 3030 profile
u_3030 = 30;
cube_ch_3030 = 1.5;
thread_engagement_3030 = 6;
screw_type_3030 = "M6,30";

// Set the main variables based on configuration
u = conf == "2020" ? u_2020 : 
    conf == "3030" ? u_3030 : u_2020;

cube_ch = conf == "2020" ? cube_ch_2020 :
          conf == "3030" ? cube_ch_3030 : cube_ch_2020;

thread_engagement = conf == "2020" ? thread_engagement_2020 :
                    conf == "3030" ? thread_engagement_3030 : thread_engagement_2020;

screw_type = conf == "2020" ? screw_type_2020 :
             conf == "3030" ? screw_type_3030 : screw_type_2020;

// Washer properties remain constant
washer_thickness = 1;
washer_diameter = 12.5;
bore_clearance = 3 * u;


module screw_bore(){
down(u+thread_engagement)
  screw_hole(screw_type, head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT)
    attach(TOP)
      down(bore_clearance + washer_thickness)
        cyl(d=washer_diameter, h=bore_clearance, anchor=BOT);
}
