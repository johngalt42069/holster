include <util/rounded_cube.scad>

$fn = 128;

difference() {
	union() {
		rounded_cube(96, 90, 20, 30);
		translate([0, -80, 1]) rotate([5, 0, 0]) {
			rounded_cube(50, 120, 6, 20);
			translate([0, 16, 4]) rounded_cube(50, 38, 4, 8);
			translate([0, -48, 4]) rounded_cube(32, 22, 4, 6);
			translate([0, -14, 4]) cube([20, 60, 4], center = true);
		}
	}
	translate([-34, 0, 0]) rotate([0, -60, 0]) rounded_cube(10, 52, 20, 3);
	translate([34, 0, 0]) rotate([0, 60, 0]) rounded_cube(10, 52, 20, 3);

	hull() {
		translate([0, 0, -10])cube([100, 90, 0.01], center = true);
		translate([0, 0, 1])cube([50, 90, 0.01], center = true);
	}

	difference() {
		translate([0, 0, 3.5])cube([96, 90, 13], center = true);
		hull() {
			translate([0, 0, -3]) cube([96, 90, 0.01], center = true);
			translate([0, 0, 7]) cube([50, 90, 0.01], center = true);
		}

	}
	translate([0, -80, 0]) rotate([5, 0, 0]) {
		translate([16, 30-14, 0]) rounded_cube(6.4, 16, 20, 3.2);
		translate([-16, 30-14, 0]) rounded_cube(6.4, 16, 20, 3.2);
		translate([0, -34-14, 0]) rounded_cube(16, 6.4, 20, 3.2);

		translate([0, 16, -4]) fully_rounded_cube(50, 30, 12, 6);
		translate([0, -48, -4]) fully_rounded_cube(32, 22, 12, 6);
		translate([0, -14, -4]) fully_rounded_cube(18, 74, 12, 6);
	}
}