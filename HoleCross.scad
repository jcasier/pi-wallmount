//HoleCross(85, 113, 4);
HLongHoleCross(85, 113, 18, 4);


module HoleCross(vertical, horizontal, diameter=3, height=10) {
    translate([horizontal / 2, 0, 0]) Hole(diameter, height);
    translate([0, vertical / 2, 0]) Hole(diameter, height);
    translate([- horizontal / 2, 0,  0]) Hole(diameter, height);
    translate([0, - vertical / 2,  0]) Hole(diameter, height);
}

module HLongHoleCross(vertical, horizontal, length, diameter=3, height=10) {
    translate([horizontal / 2, 0, 0]) LongHole(diameter, height, length);
    translate([0, vertical / 2, 0]) Hole(diameter, height);
    translate([- horizontal / 2, 0,  0]) LongHole(diameter, height, length);
    translate([0, - vertical / 2,  0]) Hole(diameter, height);
}

module Hole(diameter, height) {
    cylinder(h=2*height, d=diameter, center=true, $fn = 20);
}

module LongHole(diameter, height, length) {
    translate([0, -length / 2, 0]) {
        Hole(diameter, height);
        translate([-diameter / 2, 0, -height]) cube([diameter, length, 2 * height]);
        translate([0, length, 0]) Hole(diameter, height);
    }
}