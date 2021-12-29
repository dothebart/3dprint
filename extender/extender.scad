
move_rod =  70;
thick = 8; // left side   should  be thicker. 
// thick = 2.5;
rod_diameter  = 16;

outer_rod_diameter = 26;

plate_width = rod_diameter * 2;

old_thick = 42 / 2; // this thick is the original holder. 



difference() {
  translate([- rod_diameter * 1.5, - rod_diameter * 1.5, 0]){
    translate([rod_diameter * 1.5, rod_diameter * 1.5, 0]) {
      cylinder(h=thick, d = plate_width, center=true, $fn=64);
      
      rotate(a = [0, 0, 45]) {
        translate([outer_rod_diameter, 0, old_thick / 2 - thick / 2]) {
          cube(size = [rod_diameter, rod_diameter, old_thick], center = true);
          translate([0, 0, thick / 2]) {
            cylinder(h = old_thick, d = rod_diameter / 4, center = true, $fn=64);
          }
        }
      }
    }
    translate([move_rod / 2 + rod_diameter * 1.5, rod_diameter * 1.5, 0]) {
      cube(size = [move_rod, plate_width, thick], center = true);
    }
    translate([rod_diameter * 1.5 + move_rod, rod_diameter * 1.5, old_thick / 2 - thick / 2]) {
      cylinder(h=old_thick, d = plate_width, center=true, $fn=64);
    }
  }
  translate([- rod_diameter * 1.5, - rod_diameter * 1.5, 0]){
    translate([rod_diameter * 1.5, rod_diameter * 1.5, old_thick / 2]) {
      # cylinder(h=old_thick * 2, d = rod_diameter, center=true, $fn=64);
    }
    translate([rod_diameter * 1.5 + move_rod, rod_diameter * 1.5, old_thick / 2]) {
      #cylinder(h=old_thick * 2, d = rod_diameter, center=true, $fn=64);
    }
  }
}
