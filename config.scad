conf = "2020";

// Constants for 2020 profile
u_2020 = 20;
cube_ch_2020 = 1;
thread_engagement_2020 = 5;
screw_type_2020 = "M4,20";
washer_thickness_2020 = 1;
washer_diameter_2020 = 12.5;
bore_clearance_2020 = 3 * u_2020;

// Constants for 3030 profile
u_3030 = 30;
cube_ch_3030 = 1.5;
thread_engagement_3030 = 6;
screw_type_3030 = "M6,30";
washer_thickness_3030 = 1;
washer_diameter_3030 = 12.5;
bore_clearance_3030 = 3 * u_3030;

// Set the main variables based on configuration
u = conf == "2020" ? u_2020 : 
    conf == "3030" ? u_3030 : u_2020;

cube_ch = conf == "2020" ? cube_ch_2020 :
          conf == "3030" ? cube_ch_3030 : cube_ch_2020;

thread_engagement = conf == "2020" ? thread_engagement_2020 :
                    conf == "3030" ? thread_engagement_3030 : thread_engagement_2020;

screw_type = conf == "2020" ? screw_type_2020 :
             conf == "3030" ? screw_type_3030 : screw_type_2020;

// Washer properties per profile
washer_thickness = conf == "2020" ? washer_thickness_2020 :
                   conf == "3030" ? washer_thickness_3030 : washer_thickness_2020;

washer_diameter = conf == "2020" ? washer_diameter_2020 :
                  conf == "3030" ? washer_diameter_3030 : washer_diameter_2020;

bore_clearance = conf == "2020" ? bore_clearance_2020 :
                 conf == "3030" ? bore_clearance_3030 : bore_clearance_2020;


module screw_bore(){
down(u+thread_engagement)
  screw_hole(screw_type, head="socket", counterbore=bore_clearance, $fn=32, anchor=BOT)
    attach(TOP)
      down(bore_clearance + washer_thickness)
        cyl(d=washer_diameter, h=bore_clearance, anchor=BOT);
}
