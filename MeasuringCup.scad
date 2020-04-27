// description: A parametric measuring cup.
// author: Buck Clay  (clayb.rpi@gmail.com)
// date: 2010-11-17
// units: mm

/***********************
 * universal constants *
 ***********************/
MM3_PER_CUP = 236588.236;
PI = 3.14159265;

/**
 * @param cups the number of US cups this should hold
 * @param heightRatio the 'fatness' of this cup
 * @param thickness how thick (in mm) the cup should be
 */
module measuringCup(cups, heightRatio=1.5, thickness=2) {
  assign(r = pow((cups * MM3_PER_CUP) / (PI * heightRatio), 1/3)) {
    difference() {
      translate([0, 0, -thickness - 0.001])
          cylinder(r=r + thickness, h=r * heightRatio + thickness);
      cylinder(r=r, h=r * heightRatio);
    }
  }
}

$fn=100;
measuringCup(cups=1/8, heightRatio=1.95);
