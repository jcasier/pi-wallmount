use <dotscad/pie.scad>;

total_height = 425;

HottubCorner(50, 30, total_height/4, 2);
//ConnectorFemale(50, 100, 10, 10, 1);

$fn=360;

module HottubCorner(radius, side_width, height, thickness, hole=true) {    
    Corner(radius, height, thickness);
    rotate(45) translate([radius -thickness - 10, 0, 0]) {
        ConnectorFemale(radius - thickness, height, 10, 20, 2);
    }
    translate([0,  radius - thickness, 0]) rotate(90) Side(side_width, height, thickness, hole);
    translate([radius - thickness, -side_width, 0]) Side(side_width, height, thickness, hole);
}

module Corner(radius, height, thickness) {
    difference() {
        pie(radius, 90, height);
        pie(radius-thickness, 90, height);
    }
}

module Side(width, height, thickness, hole) {
    difference() {
        cube([thickness, width, height]);
        if (hole) {
            translate([0, width/2, height/2]) rotate([0, 90, 0]) {
                cylinder(r=2, h=thickness*2);
            }
        }
    }
}

module ConnectorFemale(radius, height, box_depth, box_width, box_wall) {
    ConnectorBase(radius, height);
    translate([-box_depth/2, 0 , height/2]) difference() {
        cube([box_depth, box_width, height], center=true);
        cube([box_depth - 2*box_wall, box_width - 2*box_wall, height], center=true);
    }
}

module ConnectorBase(radius, height) {
    translate([-radius + 10, 0, 0]) difference() {
        rotate(-45/2) pie(radius, 45, height);
        translate([0, -50, -1]) cube([radius - 10, 100, height * 2]);
    }
}