use <./HoleCross.scad>

BackPanel(140, 180, 5, 2);

module BackPanel(width, length, height, wall) {
    difference() {
        cube([width, length, wall], center=true);
        HoleCross(85, 113, 4);
    }
    
    
}