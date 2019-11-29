HoleCross(85, 113, 4);

module HoleCross(vertical, horizontal, diameter=3, height=10) {
    translate([horizontal / 2, 0, 0]) Hole(diameter, height);
    translate([0, vertical / 2, 0]) Hole(diameter, height);
    translate([- horizontal / 2, 0,  0]) Hole(diameter, height);
    translate([0, - vertical / 2,  0]) Hole(diameter, height);
}

module Hole(diameter, height) {
    cylinder(h=2*height, d=diameter, center=true, $fn = 20);
}