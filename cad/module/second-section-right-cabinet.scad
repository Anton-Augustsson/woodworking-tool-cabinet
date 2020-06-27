/*

    Second Section Right Cabinet
    
    By Anton Augustsson


*/

use <cabinet.scad>;
use <door.scad>;

module secondSectionRightCabinet (
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

length = lengthSecondSection;
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

door (
    12,
    12,
    12,
    length/2,
    width-2*thickness,
    height-thickness,
    thickness,0,thickness,
    0
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
    lengthSecondSection+lengthTirdSection;
y=width-widthCabinet;
z=heightTable;

secondSectionRightCabinet (
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