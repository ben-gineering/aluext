include <BOSL2/std.scad>
include <aluext.config.scad>

// Visualization of all components across profiles
use <block.111u1.scad>
use <block.112u1.scad>
use <block.121215mm1.scad>
use <block.122u2.scad>

use <corner.111u3.scad>
use <corner.112u2.scad>
use <corner.122u2.scad>

use <corner45.113u2.scad>
use <corner45.113u3.scad>
use <corner45.114u2.scad>

use <plate.112u2.scad>
use <plate.113u3.scad>
use <plate.114u2.scad>
use <plate.115u2.scad>

$vpr = [45, 0, 40]; // rotation
//$vpt = [0, 0, 0]; // translation
$vpd = 3000; // distance

ydistribute(sizes=[for (k=[0:2]) 20], spacing=70) {
  xdistribute(sizes=[for (k=[0:12]) 20], spacing=50) {
    // Block Components
    rotate([$t * 360, 0, 0]) block111u1(20);
    rotate([0, $t * 360, 0]) block112u1(20);
    rotate([0, 0, $t * 360]) block122u2(20);
    // block121215mm1(20);
    // Corner Components
    corner111u3(20);
    corner112u2(20);
    corner122u2(20);
    corner45113u2(20);
    corner45113u3(20);
    corner45114u2(20);
    // Plate Components
    plate112u2(20);
    plate113u3(20);
    plate114u2(20);
    plate115u2(20);
  }

  xdistribute(sizes=[for (k=[0:12]) 30], spacing=50) {
    // Block Components
    block111u1(30);
    block112u1(30);
    block122u2(30);
    // block121215mm1(30);
    // Corner Components
    corner111u3(30);
    corner112u2(30);
    corner122u2(30);
    corner45113u2(30);
    corner45113u3(30);
    corner45114u2(30);
    // Plate Components
    plate112u2(30);
    plate113u3(30);
    plate114u2(30);
    plate115u2(30);
  }

  xdistribute(sizes=[for (k=[0:12]) 40], spacing=50) {
    // Block Components
    block111u1(40);
    block112u1(40);
    block122u2(40);
    //block121215mm1(40);
    // Corner Components
    corner111u3(40);
    corner112u2(40);
    corner122u2(40);
    corner45113u2(40);
    corner45113u3(40);
    corner45114u2(40);
    // Plate Components
    plate112u2(40);
    plate113u3(40);
    plate114u2(40);
    plate115u2(40);
  }
}
