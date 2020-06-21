/*

    Tool Cabinet
    
    By Anton Augustsson
    
    
*/

use <module/middle-section-table.scad>;
use <module/middle-section-cabinet.scad>;
use <module/second-section-left-cabinet.scad>;
use <module/second-section-right-cabinet.scad>;
use <module/second-tird-section-left-table.scad>;
use <module/second-tird-section-right-table.scad>;
use <module/tird-section-left-cabinet.scad>;
use <module/tird-section-right-cabinet.scad>;

/*
    ---------- Variables ---------- 
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
widthTable       = 400;
width            = widthCabinet+widthTable;

heightTable   = 900;
heightCabinet = 900;



/*
    ---------- Code ---------- 
*/



// ---------- Table unit ---------- 
union () {
    
// Left table storageUunit
color("BurlyWood")
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
    0,0,0
    );

// middle table storageUunit
color("Tan")
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
    lengthSecondSection+lengthTirdSection,
    0,0
    );

// Right table storageUunit
color("BurlyWood")
secondTirdSectionRightTable (
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
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection,
    0,0
    );

// Right table storageUunit
color("Tan")
union () {
translate([
    0,
    0,
    heightTable-plywoodThickness]) 
cube(size = [
    length,
    width,
    plywoodThickness]);
}}



// ---------- Cabinet unit ---------- 

union () {

// Left table storageUunit
color("BurlyWood")
tirdSectionLeftCabinet (
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
    0,
    width-widthCabinet,
    heightTable
    );

// Middle Left table storageUunit
color("Tan")
secondSectionLeftCabinet (
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
    lengthTirdSection,
    width-widthCabinet,
    heightTable
    );

// Middle storageUnit
color("BurlyWood")
middleSectionCabinet (
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
    lengthSecondSection+lengthTirdSection,
    width-widthCabinet,
    heightTable
    );

// Middle Right table storageUunit
color("Tan")
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
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection,
    width-widthCabinet,
    heightTable
    );
    
// Right table storageUunit
color("BurlyWood")
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
    lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection,
    width-widthCabinet,
    heightTable
    );

// Top
color("Tan")
union () {
translate([
    0,
    width-widthCabinet,
    heightTable+heightCabinet
    -plywoodThickness]) 
cube(size = [
    length,
    widthCabinet,
    plywoodThickness]);
}}