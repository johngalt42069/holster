include <util/rounded_cube.scad>

$fn = 128;

difference() {
	union() {
		translate([0, 0, 5.35]) cube([78, 106, 10.7], center = true);

		translate([0, 30, 12.35]) rounded_cube(44, 20, 4, 8);
		translate([0, -34, 12.35]) rounded_cube(24, 12, 4, 6);
		translate([0, 0, 12.35]) cube([14, 60, 4], center = true);
	}
	translate([0, -3.2, 2.2]) cube([78, 99.7, 4.4], center = true);

	translate([8.7, 49.35, 6.35]) cube([10.4, 7.3, 8.7], center = true);
	translate([26.1, 49.35, 6.35]) cube([10.4, 7.3, 8.7], center = true);
	translate([-8.7, 49.35, 6.35]) cube([10.4, 7.3, 8.7], center = true);
	translate([-26.1, 49.35, 6.35]) cube([10.4, 7.3, 8.7], center = true);

	translate([0, 50, 7.7]) difference() {
		cube([78, 6, 6], center = true);
		translate([0, -3, -3]) rotate([0, 90, 0]) cylinder(78, 6, 6, center = true);
	}
	translate([37.7, 21.5, 5.35]) rounded_cube(6, 100, 10.7, 3);
	translate([-37.7, 21.5, 5.35]) rounded_cube(6, 100, 10.7, 3);

	translate([-21, -45, 5.35]) rounded_cube(8.6, 80, 10.7, 4.3);
	difference(){
		translate([-21, -2, 5.35]) rounded_cube(18, 12, 10.7, 4);
		translate([-21, -9, 5.35]) rounded_cube(12, 12, 10.7, 4);
	}
	translate([-28.5, -10, 5.35]) rounded_cube(3, 24, 10.7, 1.5);
	translate([-13.5, -15, 5.35]) rounded_cube(3, 30, 10.7, 1.5);
	translate([21, -45, 5.35]) rounded_cube(8.6, 80, 10.7, 4.3);
	difference(){
		translate([21, -2, 5.35]) rounded_cube(18, 12, 10.7, 4);
		translate([21, -9, 5.35]) rounded_cube(12, 12, 10.7, 4);
	}
	translate([28.5, -10, 5.35]) rounded_cube(3, 24, 10.7, 1.5);
	#translate([13.5, -15, 5.35]) rounded_cube(3, 30, 10.7, 1.5);

	translate([41, -42, 5.35]) rotate([0, 0, -15]) cube([8.6, 24, 10.7], center = true);
	translate([-41, -42, 5.35]) rotate([0, 0, 15]) cube([8.6, 24, 10.7], center = true);

	difference() {
		translate([0, -45, 5.35]) cube([78, 16, 10.7], center = true);
		hull() {
			translate([0, -53, 5.35]) cube([20, 0.01, 10.7], center = true);
			translate([0, -41, 5.35]) cube([24, 0.01, 10.7], center = true);
		}
		hull() {
			translate([0, -41, 5.35]) cube([24, 0.01, 10.7], center = true);
			translate([0, -37, 5.35]) cube([34, 0.01, 10.7], center = true);
		}
		translate([30, -43, 5.35]) cube([20, 12, 10.7], center = true);
		translate([-30, -43, 5.35]) cube([20, 12, 10.7], center = true);
	}

	translate([0,-53,10.7]) rotate([45,0,0]) cube([30,4,4], center = true);

	//screw holes
	translate([16, 30, 6.4]) rounded_cube(13.6, 21, 4, 6.8);
	translate([16, 30, 11]) rounded_cube(6.4, 14, 8, 3.2);
	translate([-16, 30, 6.4]) rounded_cube(13.6, 21, 4, 6.8);
	translate([-16, 30, 11]) rounded_cube(6.4, 14, 8, 3.2);
	translate([0, 4, 6.4]) rounded_cube(13.6, 16.6, 4, 6.8);
	translate([0, 4, 11]) rounded_cube(6.4, 9.4, 8, 3.2);
	translate([0, -34, 6.4]) rounded_cube(25, 13.6, 4, 6.8);
	translate([0, -34, 11]) rounded_cube(17.7, 6.4, 8, 3.2);
}