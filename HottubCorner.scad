HottubCorner(100, 50, 100, 2);
$fn=360;

module HottubCorner(radius, side_width, height, thickness) {
    Corner(radius, height, thickness);
    translate([-radius, 0, 0]) Side(side_width, height, thickness);
    translate([radius, 0, 0]) Side(side_width, height, thickness);
}

module Corner(radius, height, thickness) {
    difference() {
        cylinder(r=radius, h=height);
        cylinder(r=radius-thickness, h=height);
    }
}

module Side(width, height, thickness) {
}