// dimensions of the battery:
height=13;
width=32; // eventually choose a millimeter more than you measure
length=66;

// how thick should the frame holding the battery be?
thick=3;

// which dimensions should the strap to attach it to the stem have:
strapWidth=5.5;
strapThickness=1.5 * 1.4; // physical thickness * factor to be more easy
                          // able to push it through the tunnel

// thickness of the complete thing so the strap can nicely be fit inside:
shellWidth = strapWidth + 2;

// the hole to interconnect 2 pieces of this:
connectHoleRadius = 1.5;

// Diameter of the tube to attach to:
stemWidth = 34;
// how far away schould the battery be from the tube?
// you may need to have some distance so the handle bar mount screws can
// be passed by the battery when inserting it
stemDelta = 8;

// calculate the outer dimensions of the holder:
outerWidth = width + 2 * thick;
outerHeight = height + 2 * thick;

// calculate the center position of the stem:
stemCenter =  stemWidth / 2 + stemDelta - thick;

echo("stemCenter is: ");
echo(stemCenter);


difference() {
    union() {
        // Battery frame, upper line of the battery is the 0-line:
        translate ([0, - height / 2, 0]) difference () {
            cube([outerWidth, outerHeight, shellWidth], center=true);
            // whole to push the battery through:
            cube([width, height, shellWidth + 2], center=true);
        }
        // the triangle to the stem:
        linear_extrude(shellWidth, center=true) polygon([
                [  outerWidth / 2, thick ],
                [  stemWidth  / 3, stemCenter ],
                [- stemWidth  / 3, stemCenter ],
                [- outerWidth / 2, thick ]
            ]
        );
    }
    // punch of the stem:
    translate([0,  stemCenter, 0])
      cylinder(h=shellWidth + 2, r=stemWidth / 2, center=true, $fn=64);

    // the wholes to connect two items of this:
    translate([ width / 2, stemDelta / 2,  0])
      cylinder(h=shellWidth + 2, r=connectHoleRadius, center = true, $fn=16);
    translate([- width / 2, stemDelta / 2,  0])
      cylinder(h=shellWidth + 2, r=connectHoleRadius, center = true, $fn=16);
    
    // dig the tunnel for the ratbelt:
    difference() {
        tunnelRadius = stemWidth / 2  + strapThickness * 1.5;
        
        translate([0,  stemCenter, 0])
        # cylinder(h=shellWidth - 2, r=tunnelRadius, center=true, $fn=64);
        translate([0,  stemCenter, 0])
        # cylinder(h=shellWidth - 1, r=tunnelRadius - strapThickness, center=true, $fn=64);
    }
    
}
