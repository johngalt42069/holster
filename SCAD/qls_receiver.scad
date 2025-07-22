include <util/rounded_cube.scad>

$fn = 128;

difference() {
	union() {
		translate([0, 0, -3.2]) rounded_cube(46, 100, 6.4, 6);
		translate([0, 8, 2.3]) rotate([90, 0, 0]) rounded_cube(78, 17.4, 84, 4);

		translate([-26.1, 52, -1]) rounded_cube(9.4, 10, 2, 2);
		translate([-8.7, 52, -1]) rounded_cube(9.4, 10, 2, 2);
		translate([8.7, 52, -1]) rounded_cube(9.4, 10, 2, 2);
		translate([26.1, 52, -1]) rounded_cube(9.4, 10, 2, 2);

		translate([0, -45.75, 3]) rotate([90, 0, 0]) rounded_cube(32, 16, 8.5, 2);
	}
	translate([0, 8, 3.5]) cube([70, 84, 7], center = true);
	translate([0, 8, 9]) cube([50, 84, 4], center = true);
	translate([0, -29, 9]) cube([70, 10, 4], center = true);

	translate([39, -30 - 14, 2.3]) rounded_cube(32, 40, 17.4, 10);
	translate([-39, -30 - 14, 2.3]) rounded_cube(32, 40, 17.4, 10);

	translate([0, -45.75, -1]) rotate([90, 0, 0]) rounded_cube(23, 16, 8.5, 2);

	translate([0, 32, 0]) screw_cut();
	translate([-16, 32, 0]) screw_cut();
	translate([16, 32, 0]) screw_cut();
	translate([0, -6, 0]) screw_cut();
	translate([0, -32, 0]) screw_cut();
}

module screw_cut() {
	translate([0, 0, -2]) cylinder(2, 7.7, 7.7);
	translate([0, 0, -8]) cylinder(16, 3, 3);
	translate([0, 5.5, -8]) rounded_cube(2.5, 3.5, 16, 0.5);
	rotate([0, 0, -120]) translate([0, 5.5, -8]) rounded_cube(2.5, 3.5, 16, 0.5);
	rotate([0, 0, 120]) translate([0, 5.5, -8]) rounded_cube(2.5, 3.5, 16, 0.5);
}