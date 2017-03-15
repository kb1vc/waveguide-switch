// Inner knob for HP6289 DC power supply
ShaftDia = 0.380;
KnobWallThickness = 0.065;
KnobOuterDia = ShaftDia + 2 * KnobWallThickness; 
KnobLength = 0.5;
SetScrewZ = 0.170;
SetScrewDia = 0.125;
IndentDia = 0.05;
$fn=32; // round things are drawn in 32 segments

module ScrewHole() {
  translate([0,-1.5*KnobWallThickness,SetScrewZ])
    rotate([90,0,0])
      cylinder(d=SetScrewDia, h=4*KnobWallThickness);
}
module Indent() {
  translate([0.5*KnobOuterDia, 0, 0])
    cylinder(d1=IndentDia, d2=1.8*IndentDia, h=KnobLength+0.1);
}
module IndentSet() {
  rotate([0,0,-90])
    for(a = [22.5:45:350]) {
      rotate([0,0,a])
        Indent();
    }
}
module HP6289_Inner() {
  difference() {
    cylinder(d1=KnobOuterDia, 
             d2=KnobOuterDia * 0.9, // taper the body
	     h = KnobLength);
    translate([0,0,-0.1]) // don't drill all the way through!
      cylinder(d=ShaftDia,
               h = KnobLength - KnobWallThickness + 0.1);
    ScrewHole();  // hole for the setscrew
    IndentSet();  // add texture to the surface
  }
}
scale([25.4,25.4,25.4]) { // scale from inches to mm
    HP6289_Inner(); 
}
