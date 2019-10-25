FrontPanel(130, 180, 30, 3);

module FrontPanel(width, length, height, wall) {
    difference() {
        minkowski() {
            cube([width, length, height]);
            cylinder(r=2, h=height);
        }
        translate([wall, wall, wall]) cube([width - 2 * wall, length - 2 * wall, height * 2]);   
    }
}
