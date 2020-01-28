// Precious pin protector - dummy plug to put over pins so they don't bend. 

// 20 pin raspii connector:
// layout of the pins:
xPins = 20;
xPins2 = 0;
xPinsDist = 0;

yPins = 2;
// how long are the pins:
height = 10;
// how thick are the pins:
pinDiameter = 1.25;


// 8+8 pins arduino:
// layout of the pins:
xPins = 8;
xPins2 = 8;
xPinsDist = 4;
yPins = 1;
// how long are the pins:
height = 10;
// how thick are the pins:
pinDiameter = 1.25;


// 8+8 pins arduino:
// layout of the pins:
xPins = 6;
xPins2 = 6;
xPinsDist = 4.75;
yPins = 1;
// how long are the pins:
height = 10;
// how thick are the pins:
pinDiameter = 1.25;

rm = 2.54; // pitch
xuWidth = xPins * rm + xPins2 * rm + xPinsDist; // dimmension x of the plug
yuWidth = yPins * rm; // dimmension y of the plug


difference() {
  translate([xuWidth / 2,
             yuWidth / 2,
             height / 2], true)
    cube([xuWidth, yuWidth, height], true); // Plug outer cube
  for(x = [0:xPins - 1]) {
    for (y = [0:yPins - 1]) {
      translate([x * rm + rm / 2,
                 y * rm + rm / 2,
                 0]) union () {
        translate([0, 0, height / 2]) 
          cube([pinDiameter, pinDiameter, height * 2], true); // cut out the pins
        // aid the pin to slide in properly:
        translate([-pinDiameter * 1.5, 0, -0.5])
          rotate([45, 45, 0])
          #cube([pinDiameter * 2, pinDiameter * 2, pinDiameter * 2]);
        }
    }
  }

  xPins2Offset = xPins * rm + xPinsDist;
  for(x = [0:xPins - 1]) {
    for (y = [0:yPins - 1]) {
      translate([xPins2Offset + x * rm + rm / 2,
                 y * rm + rm / 2,
                 0]) union () {
        translate([0, 0, height / 2]) 
          cube([pinDiameter, pinDiameter, height * 2], true); // cut out the pins
        // aid the pin to slide in properly:
        translate([-pinDiameter * 1.5, 0, -0.5])
          rotate([45, 45, 0])
          #cube([pinDiameter * 2, pinDiameter * 2, pinDiameter * 2]);
          }
    }
  }
}
