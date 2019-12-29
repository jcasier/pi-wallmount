SpaSidePanelTemplate(20, 78, 6);

module SpaSidePanelTemplate(width, length, radius) {
    difference() {
        cube([width, length, 1], center=true);
        translate([0, 0, -5]) cylinder(r=radius, h=10);
    }
    
}