module rounded_cube(x, y, z, radius) {
	union() {
		translate([x / 2 - radius, y / 2 - radius, 0]) cylinder(z, radius, radius, center = true);
		translate([-x / 2 + radius, y / 2 - radius, 0]) cylinder(z, radius, radius, center = true);
		translate([x / 2 - radius, -y / 2 + radius, 0]) cylinder(z, radius, radius, center = true);
		translate([-x / 2 + radius, -y / 2 + radius, 0]) cylinder(z, radius, radius, center = true);
		cube([x, y - 2 * radius, z], center = true);
		cube([x - 2 * radius, y, z], center = true);
	}
}

module fully_rounded_cube(x, y, z, radius) {
	union() {
		translate([x / 2 - radius, y / 2 - radius, 0]) cylinder(z - 2 * radius, radius, radius, center = true);
		translate([-x / 2 + radius, y / 2 - radius, 0]) cylinder(z - 2 * radius, radius, radius, center = true);
		translate([x / 2 - radius, -y / 2 + radius, 0]) cylinder(z - 2 * radius, radius, radius, center = true);
		translate([-x / 2 + radius, -y / 2 + radius, 0]) cylinder(z - 2 * radius, radius, radius, center = true);
		translate([x / 2 - radius, 0, z / 2 - radius]) rotate([90, 0, 0]) cylinder(y - 2 * radius, radius,
		radius, center = true);
		translate([-x / 2 + radius, 0, z / 2 - radius]) rotate([90, 0, 0]) cylinder(y - 2 * radius, radius,
		radius, center = true);
		translate([0, -y / 2 + radius, z / 2 - radius]) rotate([0, 90, 0]) cylinder(x - 2 * radius, radius,
		radius, center = true);
		translate([0, y / 2 - radius, z / 2 - radius]) rotate([0, 90, 0]) cylinder(x - 2 * radius, radius, radius,
		center = true);
		translate([x / 2 - radius, 0, -z / 2 + radius]) rotate([90, 0, 0]) cylinder(y - 2 * radius, radius,
		radius, center = true);
		translate([-x / 2 + radius, 0, -z / 2 + radius]) rotate([90, 0, 0]) cylinder(y - 2 * radius, radius,
		radius, center = true);
		translate([0, -y / 2 + radius, -z / 2 + radius]) rotate([0, 90, 0]) cylinder(x - 2 * radius, radius,
		radius, center = true);
		translate([0, y / 2 - radius, -z / 2 + radius]) rotate([0, 90, 0]) cylinder(x - 2 * radius, radius, radius,
		center = true);
		translate([x / 2 - radius, y / 2 - radius, z / 2 - radius]) sphere(radius);
		translate([-x / 2 + radius, y / 2 - radius, z / 2 - radius]) sphere(radius);
		translate([x / 2 - radius, -y / 2 + radius, z / 2 - radius]) sphere(radius);
		translate([-x / 2 + radius, -y / 2 + radius, z / 2 - radius]) sphere(radius);
		translate([x / 2 - radius, y / 2 - radius, -z / 2 + radius]) sphere(radius);
		translate([-x / 2 + radius, y / 2 - radius, -z / 2 + radius]) sphere(radius);
		translate([x / 2 - radius, -y / 2 + radius, -z / 2 + radius]) sphere(radius);
		translate([-x / 2 + radius, -y / 2 + radius, -z / 2 + radius]) sphere(radius);
		cube([x, y - 2 * radius, z - 2 * radius], center = true);
		cube([x - 2 * radius, y, z - 2 * radius], center = true);
		cube([x - 2 * radius, y - 2 * radius, z], center = true);
	}
}

module mlok_slot() {
	rounded_cube(7, 32, 4, 2);
}

module mlok_bulge_solid() {
	rounded_cube(11.8, 6.8, 2, 3);
}

module mlok_bulge_with_hole() {
	difference() {
		mlok_bulge_solid();
		cube([8, 8, 2], center = true);
	}
}