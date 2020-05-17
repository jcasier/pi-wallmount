//FrontPanel(140, 200, 10, 2);
FrontPanel(160, 220, 10, 2);

module FrontPanel(width, length, height, wall) {
    difference() {
        difference() {
            minkowski() {
                cube([width, length, height]);
                cylinder(r=wall, h=height);
            }
            translate([wall, wall, wall]) cube([width - 2 * wall,length - 2 * wall, height * 2]);   
        }
        sw = 102;
        sl = 166;
        inner_sw = 86;
        inner_sl = 154;
        translate([(width - inner_sw) / 2,(length - inner_sl) / 2, 0]) {
            ScreenHole(inner_sw, inner_sl);
            translate([-2, -2, 1]) ScreenHole(sw, sl);
        }
    }
}

module ScreenHole(width, length) {
    cube([width, length, 10]);
}

