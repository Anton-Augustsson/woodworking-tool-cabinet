/*

    Second Tird Section Left Table
    
    By Anton Augustsson


*/

use <cabinet.scad>;
use <dovetail-drawer.scad>;

module secondTirdSectionLeftTable (
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

length = lengthSecondSection+
        lengthTirdSection;
width  = widthTable+widthCabinet;
height = heightTable;

drawerHeight = 100;
referenceSurfaceHeight = drawerHeight;

numberOfDividers = 4;
increse = (length-thickness*2
        -numberOfDividers*thickness)
        /(numberOfDividers+1)
        -0.01;
        
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

// Top shelf
translate([
    thickness,
    0,
    height-thickness*3
    -referenceSurfaceHeight]) 
cube(size = [
    length-thickness*2,
    width,
    thickness*2]);

// Drawer shelf
translate([
    thickness,
    0,
    height-thickness*4
    -referenceSurfaceHeight
    -drawerHeight]) 
cube(size = [
    length-thickness*2,
    width,
    thickness]);
    
// Drawer
dovetailDrawer (
    14,
    14,
    20,
    width-thickness,
    length-thickness*2,
    drawerHeight,
    thickness,0,height-thickness*3
    -referenceSurfaceHeight
    -drawerHeight,
    0
    );
    
// Devider no.1

for(i = [
    increse:
    increse+thickness: 
    length-thickness*2-increse
    ])
    translate([
        i,
        0,
        thickness]) 
        cube(size = [
        thickness,
        width,
        height-thickness*4
        -referenceSurfaceHeight
        -drawerHeight]);

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


x=0;
y=0;
z=0;

secondTirdSectionLeftTable (
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