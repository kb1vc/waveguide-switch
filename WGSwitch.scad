/*
  WGSwitch.scad
 
  Author: radiogeek381@gmail.com

 A replacement for the electro-magnetic actuated servos on a
 WR90 waveguide switch.  This uses a standard model R/C servo
 to move the slug, and permanent magnets to hold the slug in place.
*/ 
/*
Copyright (c) 2016, Matthew H. Reilly (kb1vc)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

    Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in
    the documentation and/or other materials provided with the
    distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

// All dimensions are in inches -- scaling to mm is at the end.

$fn=32;

// the base plate that is screwed to the top
// of the waveguide switch
BaseX = 2.6;
BaseY = 2.1;
BaseZ = 0.1;

FrameRailWidth = 0.15;

MountX = 0.22;
MountY = 0.7;
MountZ = 0.950;
MountPos = [ [0.415, 0.5 * (BaseY - MountY), 0], [2.31, 0.5 * (BaseY - MountY), 0] ];

// My printer undersizes round Z axis holes by about this much.
HoleCorrection = 0.013;
// and it undersizes z axis pegs by about this much.
PegCorrection = 0.01; 

CenterHoleDia = 1.6; 
// the base is really a square with an extension off the end of the right edge.
CenterHolePos = [0.5*BaseY, 0.5*BaseY, 0]; 

ServoCenterOffsetX = 0.505; 
ServoCenterYSpace = 0.4;
ServoCenterXSpace = 1.9; 
ServoMountHoleDia = 0.08; 
ServoMountHoleZ = MountZ * 2;
ServoMountLLHole = CenterHolePos - [ServoCenterOffsetX, 0.5 * ServoCenterYSpace, 0];
ServoMountULHole = ServoMountLLHole + [0, ServoCenterYSpace, 0];
ServoMountURHole = ServoMountULHole + [ServoCenterXSpace, 0, 0];
ServoMountLRHole = ServoMountLLHole + [ServoCenterXSpace, 0, 0];
ServoMountHolesPos = [ServoMountLLHole, ServoMountULHole, ServoMountURHole, ServoMountLRHole ];

ScrewHoleDia = 0.135 + HoleCorrection; 
LocatorHoleDia = 0.135 + HoleCorrection;

ScrewSquareDim = 1.845;
ScrewHoleLLPos = [0.055 + 0.5*ScrewHoleDia, 0.055 + 0.5 * ScrewHoleDia, 0]; 
ScrewHoleULPos = ScrewHoleLLPos + [0, ScrewSquareDim, 0];
ScrewHoleURPos = ScrewHoleULPos + [ScrewSquareDim, 0, 0];
ScrewHoleLRPos = ScrewHoleLLPos + [ScrewSquareDim, 0, 0];
ScrewHolesPos = [ScrewHoleLLPos, ScrewHoleULPos, ScrewHoleURPos, ScrewHoleLRPos];


LocatorULPos = ScrewHoleULPos + [0.427, 0, 0];
LocatorLRPos = ScrewHoleLRPos + [0, 0.427, 0];
LocatorHolesPos = [LocatorULPos, LocatorLRPos];

StopBoxX = 0.75;
StopBoxY = 0.25;
StopBoxZ = 0.3 + BaseZ;
SlotX = 0.28; 
StopBoxOffsetX = 1.35;
StopBoxOffsetY = 0.5 * (BaseY - StopBoxY);
BoxWallWidth = 0.065;
// This is the amount of "slack" we want between stop faces
// 10 mils for now
BoxRelief = 0.01;

// this is the height of the cap above the bottom of the switch well. 
CapOffsetZ = 0.7; 

// Now the slug parts
SlugInnerDia = 0.75 + HoleCorrection;
SlugWallThickness = 0.065;
SlugOuterDia = SlugInnerDia + 2 * SlugWallThickness;
SlugTopDia = CenterHoleDia; // - 0.05;
SlugInnerDepth = 0.125;
SlugZ = CapOffsetZ + StopBoxZ; // SlugInnerDepth + SlugWallThickness; 
SlugKeyLength = 0.125;
SlugKeyDia = 0.18 + PegCorrection;

// This needs to accommodate a hole for the servo axis
BearingOuterDia = 0.5;
BearingInnerDia = 0.25;
BearingHoleDepth = 0.3;

// These are the dimensions for the servo puck
// that pushes the slug's wings
PuckDiameter = 0.82;
PuckHeight = 0.225;
PuckKeyHeight = 0.2;
PuckKeyAngle = 60;
PuckScrewHole = 0.125;
PuckSplineHole = 0.25;
PuckSplineHoleDepth = 0.15;


// given a list of positions, subtract each of the objects
// from the first object. 
module DrillZ() {
    difference() {
        children(0);
	    for(i = [1:$children-1]) {
	        // Make the hole a little bigger in the Z dim, then
	        // shift it down by half that amount
	        scale([1,1,2.01])
	            translate([0,0,-0.001])
  		        children(i);
	    }
    }
}

module ZPost(dia, depth, pos) {
    translate(pos)
        translate([0,0,0.01])
            rotate([0, 0, 90])
	        cylinder(d=dia, h=depth+0.02, center=true);
}

module WGBase() {
    union() {
        cube([BaseX,BaseY,BaseZ]);
        for(p = MountPos) {
            translate(p) 
                cube([MountX, MountY, MountZ]);
        }
    }
    
}

module CenterHole() {
    xd = MountPos[0].x;
    difference() {
        ZPost(dia=CenterHoleDia, depth=BaseZ, pos=CenterHolePos);
        translate([0,0,-0.05])
            cube([MountPos[0].x + MountX, BaseY, 1.4 * BaseZ]);
    }
}

module StopBox() {
    translate([StopBoxOffsetX, StopBoxOffsetY, 0])
        difference() {
            cube([StopBoxX, StopBoxY, StopBoxZ]);
	    translate([BoxWallWidth, BoxWallWidth, StopBoxZ - SlotX + 0.01])
	        cube([SlotX, StopBoxY - BoxWallWidth * 2, SlotX]);
	}
}

module FrameBoxHoles() {
  slot0x = MountPos[0].x - FrameRailWidth;
  slot0ypos = ScrewHoleLLPos.y * 2;
  slot0y = BaseY - 2 * slot0ypos; 
  translate([FrameRailWidth, slot0ypos,-0.01]) {
      cube([MountPos[0].x - FrameRailWidth, slot0y, 2 * BaseZ]);
  }
  translate([0,0,-0.01]) {
      triX = ScrewHoleLRPos.x + ScrewHoleDia;
      triY = 0.5 * (BaseY - MountY);
      linear_extrude(height=BaseZ*2) {
          polygon(points = [ [triX, -0.01], [BaseX + 0.01, 0], [BaseX + 0.01, triY] ] );
          polygon(points = [ [triX, BaseY + 0.01], [BaseX + 0.01, BaseY + 0.01], [BaseX + 0.01, BaseY - triY] ] );
      }

  }
}


module WGCap() {
    DrillZ() {
        WGBase();
        for(p = ScrewHolesPos) {
            ZPost(dia=ScrewHoleDia, depth=BaseZ, pos=p);
        }
        for(p = LocatorHolesPos) {
            ZPost(dia=LocatorHoleDia, depth=BaseZ, pos=p);
        }
	for(p = ServoMountHolesPos) {
	    ZPost(dia=ServoMountHoleDia, depth=ServoMountHoleZ, pos=p);
	}
	FrameBoxHoles();
        CenterHole();
    }
    StopBox();
}

module SlugBody() {
    cut_offset_z = SlugInnerDepth + SlugWallThickness;
    difference() {
        translate([0, 0, 0.5 * SlugZ])
            cylinder(d1=SlugOuterDia, d2=SlugTopDia, h = SlugZ - 0.01, center = true);
	// cut the hole in the bottom
	translate([0,0,0.5 * SlugInnerDepth])
	    cylinder(d=SlugInnerDia, h = SlugInnerDepth+0.05, center=true);
	// cut the Corner betwen the two stops
	translate([-0.5 * StopBoxY - BoxRelief, -0.5 * StopBoxY - BoxRelief, cut_offset_z])
	   cube([SlugTopDia, SlugTopDia, SlugZ]);
	translate([-0.5*SlugTopDia, -1.5 * StopBoxY - SlugTopDia, cut_offset_z])
	    cube([SlugTopDia, SlugTopDia, SlugZ]);
	translate([-1.5 * StopBoxY - SlugTopDia, -0.5 * SlugTopDia, cut_offset_z])
	   cube([SlugTopDia, SlugTopDia, SlugZ]);
	// now cut out the "back" of each wing to keep it from fouling the mount
	translate([0.15 * SlugTopDia, 0.15 * SlugTopDia, cut_offset_z])
	   rotate([0,0,180])
	       cube([SlugTopDia, SlugTopDia, SlugZ]);

        // now cut the magnet boxes
	translate([SlotX + StopBoxOffsetX - 0.5 * BaseX + 0.5 * BoxWallWidth, - StopBoxY - BoxWallWidth, SlugZ - SlotX])
	    cube([SlotX, StopBoxY - BoxWallWidth * 2, SlotX]);
	rotate([0, 0, 90])
   	    translate([SlotX + StopBoxOffsetX - 0.5 * BaseX + 0.5 * BoxWallWidth, StopBoxY - BoxWallWidth, SlugZ - SlotX])
	        cube([SlotX, StopBoxY - BoxWallWidth * 2, SlotX]);
	    
    }
    // this makes the pin that indexes into the slot on the waveguide switch body
    kl = SlugKeyLength + 0.99*BoxWallWidth;
    // 0.5 * kl lifts the cylinder even with the XY plane. 
    // tired printers may have trouble holding the pin in position without
    // "brim" support.  
    color("blue") { translate([SlugKeyDia, 0, 0.5 * kl])
        cylinder(d = SlugKeyDia, h = kl, center=true); }
    // this is the bearing for the servo
    translate([0,0,cut_offset_z - 0.01]) 
        difference() {
	    cylinder(d=BearingOuterDia, h=0.02 + SlugZ - cut_offset_z);
	    translate([0, 0, SlugZ - 1.5 * BearingHoleDepth]) cylinder(d=BearingInnerDia, h=BearingHoleDepth + 0.01);
	}

}

module Slug() {
    SlugBody();
}

module Puck() {
   difference() {
       union() {
           translate([0,0,0.5*PuckHeight])
	       cylinder(d=PuckDiameter, h = PuckHeight, center=true);
	   translate([0,0,1.0 * PuckHeight-0.01])	       
	       difference() {
	           intersection() {
	               cylinder(d=PuckDiameter, h = PuckHeight, center=true);
		       translate([0,0,-PuckHeight])
		           cube([PuckDiameter, PuckDiameter, 5 * PuckHeight]);
		       translate([0,0,-PuckHeight])		       
		           rotate([0,0,90-PuckKeyAngle])
		               cube([PuckDiameter, PuckDiameter, 5 * PuckHeight]);
                   }
		   cylinder(d=BearingOuterDia+0.05, h = 2*PuckHeight, center=true);
               }
       }
       cylinder(d=PuckScrewHole, h = 3 * PuckHeight, center=true);
       cylinder(d=PuckSplineHole, h = 2 * PuckSplineHoleDepth, center=true);
   }
}

scale([25.4,25.4,25.4]) {
    {
        translate([BaseY * 0.5, BaseY * 0.5, 0])
	rotate([0,0,-90])
            Slug();
    }
    translate([0,0,CapOffsetZ])
        color("aqua") WGCap();

    translate([3,3,0])
        color("grey") Puck();


}
