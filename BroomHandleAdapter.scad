BroomHandleAdapter(23, 14.5, 80, 6);

$fn=60;

module BroomHandleAdapter(female_diameter, male_diameter, length, thickness) {
    connector_height = 10;
    FemaleHalf(female_diameter, length / 2, thickness, 3);
    rotate([0, 180, 0]) {
        Connector(female_diameter + thickness, male_diameter, connector_height);
        translate([0, 0, connector_height]) { 
            MaleHalf(male_diameter, length / 2);
        } 
    }         
}

module FemaleHalf(diameter, length, thickness, hole_diameter) {
    difference() {
        difference() {
            cylinder(d = diameter + thickness, h = length);
            translate([0, 0, thickness]) {
                cylinder(d = diameter, h = length);
            }
        }
        translate([-diameter/2 - 5, 0, length / 2]) rotate([0, 90, 0]) cylinder(d = hole_diameter, h = diameter + 10);
    }   
}

module MaleHalf(diameter, length) {
    cylinder(d = diameter, h = length);
}

module Connector(from_diameter, to_diameter, height) {
    cylinder(h = height, d1 = from_diameter, d2 = to_diameter);
}