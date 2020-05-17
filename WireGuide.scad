


WireGuide(3, 2, 45, 8, 1);


module WireGuide(outerRadius, innerRadius, height, topRadius, topHeight) {
        cylinder(h = topHeight, r = topRadius);
        Guide(outerRadius, innerRadius, height);
    
}

module Guide(outerRadius, innerRadius, height) {
    difference() {
        cylinder(h = height, r = outerRadius);
        cylinder(h = height, r = innerRadius);
    }
}



