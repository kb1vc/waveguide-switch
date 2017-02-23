/*
	TCRT5000_Mount

	Author: radiogeek381@gmail.com

	A slab with holes arranged to fit the
	TCRT5000 optical sensor from Vishay.
	http://www.vishay.com/docs/83760/tcrt5000.pdf
*/

// dimensions in mm -- use TCRT5000_Mount_in() for designs
// that scale to mm at the last stage.
//
// Or use TCRT5000_Mount_mm() to get a scaled to mm version.

TCRT5000_Z = 1.55;
TCRT5000_Y = 5.8;


BaseX = 10.2;
BaseY = TCRT5000_Y;
BaseZ = TCRT5000_Z;

CenterX = 4.65;
CenterY = 2.45;

MountHolePos = [ [ CenterX, CenterY + 1.9, 0], [ CenterX, CenterY - 1.9, 0 ] ];
    

LeadHoleLX = CenterX - 2.75;
LeadHoleRX = CenterX + 2.75; 
LeadHoleLY = CenterY - 1.27;
LeadHoleUY = CenterY + 1.27; 
LeadHolePos = [ [LeadHoleLX, LeadHoleLY, 0], [LeadHoleLX, LeadHoleUY, 0], [LeadHoleRX, LeadHoleLY, 0], [LeadHoleRX, LeadHoleUY, 0] ];
SlabOffsetX = 1.5;
SlabOffsetY = 1.5; 

HoleDepth = BaseZ * 4; 


function TCRT5000_Z_mm() = TCRT5000_Z; 
function TCRT5000_Z_in() = TCRT5000_Z / 25.4;
function TCRT5000_Y_mm() = TCRT5000_Y;
function TCRT5000_Y_in() = (TCRT5000_Y + 1.5*SlabOffsetY) / 25.4;

$fn=32;
module TCRT5000_Mount_mm() {

    translate([SlabOffsetX, SlabOffsetY, -BaseZ]) difference() {
        translate([-SlabOffsetX, -SlabOffsetY, 0])
            cube([BaseX + SlabOffsetX, BaseY + 1.5*SlabOffsetY, BaseZ]);
	// datum hole
        translate([0, 0, -0.1]) {
   	    cylinder(d1 = 1.5, h = HoleDepth, center=true);
	    for(p = LeadHolePos) {
	        translate(p) cylinder(d1 = 1.5, h = HoleDepth, center=true);
	    }
	    for(p = MountHolePos) {
	        translate(p) cylinder(d1 = 2.5, h = HoleDepth, center=true);
	    }
	}
    }
}


module TCRT5000_Mount_in() {
    sf = 1.0 / 25.4;
    scale([sf, sf, sf]) TCRT5000_Mount_mm();
}

// test

TCRT5000_Mount_mm();
