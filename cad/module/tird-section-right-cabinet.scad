/*

    Tird Section Right Cabinet
    
    By Anton Augustsson


*/

use <cabinet.scad>;
use <dovetail-drawer.scad>;

module tirdSectionRightCabinet (
    plywoodThickness,
    lengthMiddleSection,
    lengthSecondSection,
    length,
    widthCabinet,
    widthCabinetDoor,
    widthTable,
    width,
    heightTable,
    heightCabinet,
    x,y,z
    ){

/*
    ---------- Local varibles ---------- 
*/

thickness = plywoodThickness;

length = lengthTirdSection;
width  = widthCabinet;
height = heightCabinet;

/*
    ---------- Code ---------- 
*/


translate([
	x,
	y,
	z,])

union () {

cabinet (
    thickness,
    length,
    width,
    height
    );
    
dovetailDrawer (
    14,
    14,
    20,
    width-thickness,
    height-thickness*2,
    (length-thickness*2)/2,
    thickness+(length-thickness*2)/2,
    0,
    thickness,
    -90
    );
    
dovetailDrawer (
    14,
    14,
    20,
    width-thickness,
    height-thickness*2,
    (length-thickness*2)/2,
    (length-thickness*2)+thickness,0,thickness,
    -90
    );
}}



/*
    ---------- Example ---------- 
*/


plywoodThickness = 12;

lengthMiddleSection = 600;
lengthSecondSection = lengthMiddleSection/2;
lengthTirdSection   = 200;
length=lengthMiddleSection
    +lengthSecondSection*2
    +lengthTirdSection*2;

widthCabinet     = 300;
widthCabinetDoor = widthCabinet/3;
widthTable       = 300;
width            = widthCabinet+widthTable;

heightTable   = 900;
heightCabinet = 900;


x=lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection;
y=width-widthCabinet;
z=heightTable;

tirdSectionRightCabinet (
    plywoodThickness,
    lengthMiddleSection,
    lengthSecondSection,
    length,
    widthCabinet,
    widthCabinetDoor,
    widthTable,
    width,
    heightTable,
    heightCabinet,
    x,y,z
    );