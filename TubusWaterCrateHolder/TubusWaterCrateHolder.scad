
tubusTubeRadius = 10.1 / 2;
tubusTubesDelta = 57;

whaterCrateFrame = 20;
noseHeight = 20;

thick = 8;


tubusOuterRadius = tubusTubeRadius + thick;

tubusOffset = tubusTubeRadius + thick / 2;
difference() {
    union() {
        cylinder(h=thick, r=tubusOuterRadius, center=true, $fn=64);
        rotate(a=-45)
        translate([tubusTubeRadius*3 ,-tubusTubeRadius - thick / 2, 0])
        cube([noseHeight * 1.5, thick, thick], true);;
    }
    
    cylinder(h=thick + .2, r=tubusTubeRadius, center=true, $fn=64);
    translate([- tubusOuterRadius / 2, 0, 0])
    #cube([tubusOuterRadius, tubusTubeRadius*2, thick], true);
    
    rotate(a=-45)
    translate([- tubusOuterRadius / 2, 0, 0])
    #cube([tubusOuterRadius, tubusTubeRadius*2, thick], true);

}

translate([tubusOffset, 0, 0])
cube([thick, whaterCrateFrame, thick], true);

translate([tubusOffset, -tubusTubeRadius -whaterCrateFrame/2, 0])
cube([thick, whaterCrateFrame, thick], true);

translate([(noseHeight - thick) / 2 + tubusOffset , - tubusTubeRadius - whaterCrateFrame - thick/2, 0])
cube([noseHeight, thick, thick], true);


difference() {
    union() {
        translate([tubusOffset, tubusTubesDelta / 2, 0])
        cube([thick, tubusTubesDelta, thick], true);
        translate([0, tubusTubesDelta, 0])
        cylinder(h=thick, r=tubusOuterRadius, center=true, $fn=64);
    }
    translate([0, tubusTubesDelta, 0])
    cylinder(h=thick + .2, r=tubusTubeRadius, center=true, $fn=64);

    translate([0, tubusTubesDelta, 0])
    rotate(a=-45)
    translate([0, tubusOuterRadius / 2, 0])
    cube([tubusTubeRadius*2, tubusOuterRadius, thick], true);
}


