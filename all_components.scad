include <BOSL2/std.scad>
//include <aluext.constants.scad>
include <aluext.config.scad>

// Visualization of all components across profiles
//use <block.111u1.scad>
//use <block.122u2.scad>
//use <block.121215mm1.scad>
//
//use <corner.111u3.scad>
use <corner.112u2.scad>
//use <corner.122u2.scad>
//
//use <plate.112u2.scad>
//use <plate.113u3.scad>

setconf("3030");
corner112u2();

//xdistribute(sizes=[u,u,u,u,u,u,u,u], spacing=u) {
//  // Block Components
//  block111u1();
//  block122u2();
//  block121215mm1();
//  // Corner Components
//  corner111u3();
//  corner112u2();
//  corner122u2();
//  // Plate Components
//  plate112u2();
//  plate113u3();
//}

