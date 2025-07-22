module chamfer_cube(x, y, z, r) {
	difference() {
		cube([x, y, z], center = true);

		translate([x / 2, y / 2, 0]) rotate([0, 0, 45]) cube([r, r, z], center = true);
		translate([-x / 2, -y / 2, 0]) rotate([0, 0, 45]) cube([r, r, z], center = true);
		translate([x / 2, -y / 2, 0]) rotate([0, 0, 45]) cube([r, r, z], center = true);
		translate([-x / 2, y / 2, 0]) rotate([0, 0, 45]) cube([r, r, z], center = true);

		translate([0, -y / 2, z / 2]) rotate([45, 0, 0]) cube([x, r, r], center = true);
		translate([0, y / 2, z / 2]) rotate([45, 0, 0]) cube([x, r, r], center = true);
		translate([x / 2, 0, z / 2]) rotate([0, 45, 0]) cube([r, y, r], center = true);
		translate([-x / 2, 0, z / 2]) rotate([0, 45, 0]) cube([r, y, r], center = true);

		translate([0, -y / 2, -z / 2]) rotate([45, 0, 0]) cube([x, r, r], center = true);
		translate([0, y / 2, -z / 2]) rotate([45, 0, 0]) cube([x, r, r], center = true);
		translate([x / 2, 0, -z / 2]) rotate([0, 45, 0]) cube([r, y, r], center = true);
		translate([-x / 2, 0, -z / 2]) rotate([0, 45, 0]) cube([r, y, r], center = true);
	}
}