include <dimmensions.scad>;
height = kEdgeBaseLayerHeight;
difference() {
    // the whole blob
    cylinder(h=height, r=kEdgeDiameter / 2, $fn=96);
    cylinder(h=height, r=wahooNodgeDiameter / 2, $fn=96);

    translate([kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, -kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
    translate([-kEdgeScrewY / 2, kEdgeScrewX / 2, 0]) cylinder(h=kEdgeHeight, d=kEdgeSrewHoleDiameter, $fn=96);
}
