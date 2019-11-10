FrontPanel(140, 180, 10, 3);

module FrontPanel(width, length, height, wall) {
    difference() {
        difference() {
            minkowski() {
                cube([width, length, height]);
                cylinder(r=2, h=height);
            }
            translate([wall, wall, wall]) cube([width - 2 * wall,length - 2 * wall, height * 2]);   
        }
        sw = 101;
        sl = 165;
        translate([(width - sw) / 2,(length-sl) / 2, 0]) ScreenHole(sw, sl);
    }
}

module ScreenHole(width, length) {
    cube([width, length, 10]);
}

