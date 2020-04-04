

JuicerPusher(74, 100, 15);
$fn = 200;

module JuicerPusher(diameter, length, notch_diameter) {
    difference() {
        cylinder(d = diameter, h = length, center = true);
        translate([diameter / 2, 0, 0]) Notch(notch_diameter, length);
    }
}

module Notch(diameter, length) {
    cylinder(d = diameter, h=length, center = true);
}