use <./HoleCross.scad>
use <./PiHolderSlot.scad>

BackPanel(140, 180, 12, 1);

module BackPanel(width, length, height, wall) {
    slot_height = 43;
    translate([-length/2, width/2, -0.5]){
        cube([length, wall, height]);
    }
    translate([-length/2, -width/2, -0.5]){
        cube([wall, width, height]);
    }
    translate([-length/2, -width/2, -0.5]){
        cube([length, wall, height]);
    }
    translate([length/2 - wall, -width/2, -0.5]){
        cube([wall, width, height]);
    }
    difference() {
        difference() {
            union() {
                cube([length, width, wall], center=true);
                translate([45 , (width / 2) - slot_height , 0]) {
                    rotate([0, 0, 90]) PiHolderSlot(80, slot_height);
                }
            }
            HLongHoleCross(85, 113, 16, 5);
        }
        cube([45, 45, 10], center=true);
    }
    
    
}