ScrewMount(10, 5, 3);

module ScrewMount(height, radius_out, radius_in) {
    difference() {
        cylinder(h=height, r=radius_out, center=false);
        cylinder(h=height, r=radius_in, center=false);
    }
}