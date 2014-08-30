// rob@openpart.co.uk 20140522-14:02
// 13 hole 90 degree L joining plate for the OX CNC open end plates.
// Version for the spoiler board update.

angle = 90;
hole = 5.6 / 2;
plate_width1 = 56;
plate_width2 = 76;
plate_length1 = 76;
plate_length2 = 16;
plate_thickness = 4;
extend_past_thickness = 2;
corner_radius = 2;

color([silver])
difference() {
	hull () {
		rotate([0,0,angle]) {
			translate([-10, 0, 0])
				roundedRect ([plate_length1, plate_width1, plate_thickness], corner_radius);
		}

		translate([20, -30, 0])
				roundedRect ([plate_length2, plate_width2, plate_thickness], corner_radius);
		}

		translate([20,20,-1])
			cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([20,0,-1])
			cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([20,-20,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([20,-40,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([20,-60,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);

		translate([0,20,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([-20,20,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);	
		translate([0,0,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([-20,0,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);				translate([0,-20,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([-20,-20,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([0,-40,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);
		translate([-20,-40,-1])
				cylinder(h = (extend_past_thickness+plate_thickness+2), r = hole);


}

module roundedRect(size, radius) {
	x = size[0];
	y = size[1];
	z = size[2];
	linear_extrude(height=z)
	hull()
	{
		// place 4 circles in the corners, with the given radius
		translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
		circle(r=radius);
		translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
		circle(r=radius);
		translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
		translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
		circle(r=radius);
	}
}
