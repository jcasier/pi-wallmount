HottubRailSpacer(40, 21, 6);

module HottubRailSpacer(width, length, height) {
    difference() {
        cube([width, length, height], center=true);
        cylinder(r=4, h=2*height, center=true);
    }
    
}