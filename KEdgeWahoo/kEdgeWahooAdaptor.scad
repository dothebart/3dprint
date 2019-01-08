include <dimmensions.scad>;
difference() {
    // the whole blob
    cylinder(h=wahooSocketHeight, r=kEdgeDiameter / 2, $fn=96);

    // the socket from the wahoo
    difference() {
        cylinder(h=wahooSocketHeight, r=wahooNodgeDiameter / 2, $fn=96);

        translate([0, 0, wahooNodgeHeight / 2])
        difference() {
            cylinder(h=wahooNodgeHeight, r=wahooNodgeDiameter / 2, $fn=96, center=true );
            cylinder(h=wahooNodgeHeight, r=wahooSocketDiameter / 2, $fn=96, center=true);
            cube([wahooNodgeWidth, wahooNodgeDiameter, wahooNodgeHeight], center=true);
        }
        translate([0, 0, wahooNodgeHeight])
        difference() {
            cylinder(h=wahooNodgeHeight, r=wahooNodgeDiameter / 2, $fn=96);
            cylinder(h=wahooNodgeHeight, r=wahooSocketDiameter / 2, $fn=96);
        }
    }

    // Another ring for the lower tube
    translate([0, 0, wahooNodgeHeight])
    difference() {
        cylinder(h=wahooNodgeHeight, r=wahooNodgeDiameter / 2, $fn=96);
        cylinder(h=wahooNodgeHeight, r=wahooSocketDiameter / 2, $fn=96);
    }


    translate([kEdgeScrewY / 2, kEdgeScrewX / 2, .3])  #cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter, $fn=96);
    translate([kEdgeScrewY / 2, -kEdgeScrewX / 2, .3]) #cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, -kEdgeScrewX / 2, .3]) #cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, kEdgeScrewX / 2, .3]) #cylinder(h=kEdgeHeight, d=kEdgeSrewDiameter, $fn=96);




}
