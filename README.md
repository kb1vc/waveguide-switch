# Description:

This is an OpenSCAD model for a positioner using a model airplane
servo to control a WR90 waveguide switch.

There are four major components in the SCAD file, each may be
printed separately.

The base holds the servo, a magnet to "capture" the positioning
slug, and two mounts for optical sensors that signal proper alignment
and positioning of the slug.

The slug connects to the shaft of the waveguide switch.  The slug
has two "vanes" that hold small magnets to latch the assembly into
the transmit or receive position.

The cap covers and protects the positioner and associated control
electronics.

For optimal performance, add a stripe of white or copper paint to
the "outside" edge of the slug vanes to provide a strong positive
reflection when the slug is in position.

---------
Arduino sketch
---------

The arduino sketch is written for the module described in the "module"
subdirectory. It is based on the Sparkfun Aruino Pro Mini. 

# License:
See the LICENSE.txt file for copyright and conditions for re-use.