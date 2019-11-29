use <./PiHolderRail.scad>

PiHolderSlot(80, 80);

module PiHolderSlot(width, length) {
    cube([length, width + 12, 1]);
    translate([0, 0, 1]) {
        PiHolderRail(length, 10, 4);
        translate([0, width + 12, 0]){
            mirror([0,1,0]) PiHolderRail(length, 10, 4);
        }
    }
    
}