// Author: Dustin Kerns
// Date: 08/01/2014
// Purpose: To create a nameplate for the CLS department lab
//				students

// <F5> - To preview text on model
// <F6> - To compile model (Tends to be fewer artifacts)

// Import Write.scad library for text
use<Write.scad>

// Nameplate Properties
NAMEPLATE_LENGTH = 76.2; 		// Length of nameplate (mm)
NAMEPLATE_HEIGHT = 19.05; 		// Height of nameplate (mm)
NAMEPLATE_THICKNESS = 5; 		// Thickness of the nameplate

STUDENT_NAME = "R. Ellis";		// Student name

// Font Settings
FONT_SIZE = 10;					// Font size

// Font Styles Available
// *Letters
// *Orbitron
// *BlackRose
// *Knewave
FONT_STYLE = "Letters.dxf";		// Font style of text

// Create nameplate outline (Units in mm)
difference()
{

translate([-NAMEPLATE_LENGTH/2,-NAMEPLATE_HEIGHT/2,-NAMEPLATE_THICKNESS])cube([NAMEPLATE_LENGTH,NAMEPLATE_HEIGHT,NAMEPLATE_THICKNESS]);

writecube(STUDENT_NAME, [0,0,NAMEPLATE_THICKNESS], h=FONT_SIZE, t=NAMEPLATE_THICKNESS, font=FONT_STYLE, face="top");
}