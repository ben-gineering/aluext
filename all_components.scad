include <BOSL2/std.scad>
include <aluext.config.scad>

// Visualization of all components across profiles
use <block.111u1.scad>
use <block.112u1.scad>
use <block.122u2.scad>
use <block.121215mm1.scad>

use <corner.111u3.scad>
use <corner.112u2.scad>
use <corner.122u2.scad>

use <plate.112u2.scad>
use <plate.113u3.scad>

ydistribute(sizes=[for (k=[0:2]) 20], spacing=70) {
  xdistribute(sizes=[for (k=[0:6]) 20], spacing=50) {
    // Block Components
    block111u1(20);
    block112u1(20);
    block122u2(20);
    // block121215mm1(20);
    // Corner Components
    corner111u3(20);
    corner112u2(20);
    corner122u2(20);
    // Plate Components
    plate112u2(20);
    plate113u3(20);
  }

  xdistribute(sizes=[for (k=[0:6]) 30], spacing=50) {
    // Block Components
    block111u1(30);
    block112u1(30);
    block122u2(30);
    // block121215mm1(30);
    // Corner Components
    corner111u3(30);
    corner112u2(30);
    corner122u2(30);
    // Plate Components
    plate112u2(30);
    plate113u3(30);
  }

  xdistribute(sizes=[for (k=[0:6]) 40], spacing=50) {
    // Block Components
    block111u1(40);
    block112u1(40);
    block122u2(40);
    //block121215mm1(40);
    // Corner Components
    corner111u3(40);
    corner112u2(40);
    corner122u2(40);
    // Plate Components
    plate112u2(40);
    plate113u3(40);
  }
}
