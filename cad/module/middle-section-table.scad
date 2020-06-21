/*

    Middle Section Table
    
    By Anton Augustsson


*/

use <cabinet.scad>;
use <sink.scad>;

module middleSectionTable (
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

length = lengthMiddleSection;
width  = widthTable+widthCabinet;
height = heightTable;

sharpeningHeight=660;
        

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

difference () {

// Top shelf
translate([
    thickness,
    thickness,
    sharpeningHeight-thickness*2]) 
cube(size = [
    length-thickness*2,
    width-thickness,
    thickness*2]);

translate([
    length/2-(400+4*2)/2,
    -1,
    sharpeningHeight-thickness*2-1]) 
cube(size = [
    400+4*2,
    330+30+4*2,
    thickness*2+2]);
}

sink (
    length/2-460/2,
    0,
    sharpeningHeight-180+4
    );


// Bottom shelf
translate([
    thickness,
    thickness,
    200]) 
cube(size = [
    length-thickness*2,
    width-thickness,
    thickness*2]);

 
difference () {
// Door
translate([
    thickness,
    0,
    thickness]) 
cube(size = [
    length-thickness*2,
    thickness,
    sharpeningHeight-thickness]);

translate([
    length/2,                   
    -1,   
    height/2
    ])  
rotate([270,0,0])
cylinder(
    h = thickness+2,    
    r = 10        
    );      
}

difference () {
// Latch
translate([
    thickness,
    0,
    sharpeningHeight+4]) 
cube(size = [
    length-thickness*2,
    thickness,
    height-sharpeningHeight+4-thickness]);

translate([
    length/2,                   
    -1,   
    (height+sharpeningHeight)/2
    ])  
rotate([270,0,0])
cylinder(
    h = thickness+2,    
    r = 10        
    );      
}

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


x=lengthSecondSection+lengthTirdSection;
y=0;
z=0;

middleSectionTable (
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