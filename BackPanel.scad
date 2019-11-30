use <./HoleCross.scad>

BackPanel(140, 180, 5, 1);

module BackPanel(width, length, height, wall) {
    difference() {
        cube([width, length, wall], center=true);
        HoleCross(113, 85, 4);
    }
    
    
}