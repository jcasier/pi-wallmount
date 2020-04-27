
WireTube(100, 5, 6, 9);

module WireTube(length, inner, outer, top) {

    difference() {
        $fn=30;
        union() {
            cylinder(h=length, d=outer, center=true);
            translate([0 ,0, length/2 - 1]) cylinder(h=2, d=top, center=true);
        }
        cylinder(h=length, d=inner, center=true);
    }
    
}
