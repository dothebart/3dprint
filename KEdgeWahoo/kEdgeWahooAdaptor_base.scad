include <dimmensions.scad>;
height = kEdgeHeight - wahooSocketHeight;
difference() {
    // the whole blob
    cylinder(h=height, r=kEdgeDiameter / 2, $fn=96);

    // Cut out the latch to secure the wahoo
    rotate(a=-90) translate([0, 0, height / 2]) #difference() {

        intersection() {
            cube([wahooNodgeWidth, wahooNodgeDiameter, baseHeight], center=true);
            cylinder(h=baseHeight, r=wahooNodgeDiameter / 2, $fn=96, center=true);
            
        }
        intersection() {
            cube([wahooNodgeWidth -2, wahooNodgeDiameter, baseHeight], center=true);
            cylinder(h=baseHeight, r=wahooNodgeDiameter / 2 - 2, $fn=96, center=true);
            
        }
    }

    translate([kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter + 0.1, $fn=96);
    translate([kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter + 0.1, $fn=96);
    translate([-kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter + 0.1, $fn=96);
    translate([-kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter + 0.1, $fn=96);
}
translate([0, 0, height / 2])
cube([wahooNodgeWidth, wahooNodgeDiameter, baseHeight], center=true);

translate([  pawlOffset, 0, 0.5]) sphere(d=wahooPawlWidth, $fn=64);
translate([- pawlOffset, 0, 0.5]) sphere(d=wahooPawlWidth, $fn=64);
