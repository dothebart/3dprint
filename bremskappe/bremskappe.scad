
twidth=3.7;
tlength=12;
theight=9;

toffset = tlength / 2 - twidth / 2;
// M6
translate([+toffset,0,0]) cylinder(d=twidth, h=theight, $fn=64);
translate([-toffset,0,0]) cylinder(d=twidth, h=theight, $fn=64);
//#cube([0, offset*2, height], true);


translate([-toffset,- twidth / 2,0]) cube([toffset*2,twidth,theight]);
