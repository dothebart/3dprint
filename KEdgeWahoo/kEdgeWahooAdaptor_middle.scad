include <dimmensions.scad>;
height = kEdgeSnapLayerHeight;
difference() {
    // the whole blob
    cylinder(h=height, r=kEdgeDiameter / 2, $fn=96);

    // Cut out the latch to secure the wahoo
    rotate(a=-90) translate([0, 0, height / 2]) #difference() {

        intersection() {
            cube([wahooNodgeWidth, wahooNodgeDiameter, height], center=true);
            cylinder(h=height, r=wahooNodgeDiameter / 2, $fn=96, center=true);
            
        }
        intersection() {
            cube([wahooNodgeWidth -2, wahooNodgeDiameter, height], center=true);
            cylinder(h=height, r=wahooNodgeDiameter / 2 - 2, $fn=96, center=true);
            
        }
    }

    translate([kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
}
translate([0, 0, height / 2])
cube([wahooNodgeWidth, wahooNodgeDiameter, height], center=true);

translate([  pawlOffset, 0, 1]) hull() {
    translate([  + 1, 0, 0]) sphere(d=wahooPawlWidth, $fn=64);
    translate([  - 1, 0, 0]) sphere(d=wahooPawlWidth, $fn=64);
}
translate([- pawlOffset, 0, 1]) hull() {
    translate([  + 1, 0, 0]) sphere(d=wahooPawlWidth, $fn=64);
    translate([  - 1, 0, 0]) sphere(d=wahooPawlWidth, $fn=64);
}