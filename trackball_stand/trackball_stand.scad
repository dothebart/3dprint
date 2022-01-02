
hole_diameter = 5;
screw_head_diameter = 3;

  
y_width = 76;
x_width = 67;
diagonale = sqrt(x_width * x_width + y_width * y_width) - hole_diameter / 2;
height = 1;
// 24
thick = 0.5;
// 2
module pillar(xoffset, yoffset) {
  translate(xoffset, yoffset, 0) {
    difference() {
      cylinder(d=hole_diameter, h = height + 2, $fn=64);
      cylinder(d=screw_head_diameter, h = height + 4, $fn=64);
    }
  }
}


cube(size = [x_width, y_width, thick]);
rotate(a = [0, 0, 48.5]) {
  translate([hole_diameter / 4, - hole_diameter / 2, 0]) {
      #cube(size = [diagonale, hole_diameter, height]);
  }
}
translate([x_width, 0, 0]) {
  rotate(a = [0, 0, 41.5 + 90]) {
    translate([hole_diameter / 4, - hole_diameter / 2, 0]) {
      cube(size = [diagonale, hole_diameter, height]);
    }
  }
}

pillar([0, 0]);
pillar([0, y_width]);
pillar([x_width, y_width]);
pillar([x_width, 0]);
