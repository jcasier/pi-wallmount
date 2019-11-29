// Length of the rail
length = 90; //[50 : 150]

// Height/Width of the rail
height = 10; //[4 : 20]

// Height/Depth of the gap in the rail
gap = 4; //[2: 20]

PiHolderRail(length, height, gap);

module PiHolderRail(length, height, gap) {
    difference() {
        color("yellow") cube([length, height, height]);
        translate([0, height - gap, (height - gap)/2]) {
            cube([length, height, gap]);
        } 
    }
    
}