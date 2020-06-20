/*

    Tool Cabinet
    
    By Anton Augustsson
    
    
*/


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
widthTable       = 300;
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
union () {

// Left
translate([
    0,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);

// Right
translate([
    lengthSecondSection+lengthTirdSection
    -plywoodThickness,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);
    
// Bottom 
translate([
    plywoodThickness,
    0,
    0]) 
cube(size = [
    lengthSecondSection+lengthTirdSection
    -plywoodThickness*2,
    width,
    plywoodThickness]);

// Back
translate([
    plywoodThickness,
    width-plywoodThickness,
    0]) 
cube(size = [
    lengthSecondSection+lengthTirdSection
    -plywoodThickness*2,
    plywoodThickness,
    heightTable-plywoodThickness]);
}


// middle table storageUunit
color("Tan")
union () {

// Left
translate([
    lengthSecondSection+lengthTirdSection,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);

// Right
translate([
    lengthSecondSection+lengthTirdSection
    +lengthMiddleSection
    -plywoodThickness,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);
    
// Bottom 
translate([
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    0,
    0]) 
cube(size = [
    lengthMiddleSection
    -plywoodThickness*2,
    width,
    plywoodThickness]);

// Back
translate([
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-plywoodThickness,
    0]) 
cube(size = [
    lengthMiddleSection
    -plywoodThickness*2,
    plywoodThickness,
    heightTable-plywoodThickness]);
}


// Right table storageUunit
color("BurlyWood")
union () {

// Left
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);

// Right
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +lengthSecondSection+lengthTirdSection
    -plywoodThickness,
    0,
    0]) 
cube(size = [
    plywoodThickness,
    width,
    heightTable-plywoodThickness]);
    
// Bottom 
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    0,
    0]) 
cube(size = [
    lengthSecondSection+lengthTirdSection
    -plywoodThickness*2,
    width,
    plywoodThickness]);

// Back
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-plywoodThickness,
    0]) 
cube(size = [
    lengthSecondSection+lengthTirdSection
    -plywoodThickness*2,
    plywoodThickness,
    heightTable-plywoodThickness]);
}


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
union () {

// Left
translate([
    0,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);

// Right
translate([
    lengthTirdSection
    -plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);
    
// Bottom 
translate([
    plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    lengthTirdSection
    -plywoodThickness*2,
    widthCabinet-plywoodThickness,
    plywoodThickness]);

// Back
translate([
    plywoodThickness,
    width-plywoodThickness,
    heightTable]) 
cube(size = [
    lengthTirdSection
    -plywoodThickness*2,
    plywoodThickness,
    heightCabinet-plywoodThickness]);
}


// Middle Left table storageUunit
color("Tan")
union () {

// Left
translate([
    lengthTirdSection,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);

// Right
translate([
    lengthTirdSection+lengthSecondSection
    -plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);
    
// Bottom 
translate([
    lengthTirdSection+plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    lengthSecondSection
    -plywoodThickness*2,
    widthCabinet-plywoodThickness,
    plywoodThickness]);

// Back
translate([
    lengthTirdSection+plywoodThickness,
    width-plywoodThickness,
    heightTable]) 
cube(size = [
    lengthSecondSection
    -plywoodThickness*2,
    plywoodThickness,
    heightCabinet-plywoodThickness]);
}


// Middle table storageUunit
color("BurlyWood")
union () {

// Left
translate([
    lengthSecondSection+lengthTirdSection,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);

// Right
translate([
    lengthSecondSection+lengthTirdSection
    +lengthMiddleSection-plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);
    
// Bottom 
translate([
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    lengthMiddleSection
    -plywoodThickness*2,
    widthCabinet-plywoodThickness,
    plywoodThickness]);

// Back
translate([
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-plywoodThickness,
    heightTable]) 
cube(size = [
    lengthMiddleSection
    -plywoodThickness*2,
    plywoodThickness,
    heightCabinet-plywoodThickness]);
}


// Middle Right table storageUunit
color("Tan")
union () {

// Left
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);

// Right
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +lengthSecondSection
    -plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);
    
// Bottom 
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    lengthSecondSection
    -plywoodThickness*2,
    widthCabinet-plywoodThickness,
    plywoodThickness]);

// Back
translate([
    lengthMiddleSection+
    lengthSecondSection+lengthTirdSection
    +plywoodThickness,
    width-plywoodThickness,
    heightTable]) 
cube(size = [
    lengthSecondSection
    -plywoodThickness*2,
    plywoodThickness,
    heightCabinet-plywoodThickness]);
}

// Right table storageUunit
color("BurlyWood")
union () {

// Left
translate([
    lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);

// Right
translate([
    lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection
    +lengthTirdSection
    -plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    plywoodThickness,
    widthCabinet,
    heightCabinet-plywoodThickness]);
    
// Bottom 
translate([
    lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection
    +plywoodThickness,
    width-widthCabinet,
    heightTable]) 
cube(size = [
    lengthTirdSection
    -plywoodThickness*2,
    widthCabinet-plywoodThickness,
    plywoodThickness]);

// Back
translate([
    lengthMiddleSection+
    lengthSecondSection*2+lengthTirdSection
    +plywoodThickness,
    width-plywoodThickness,
    heightTable]) 
cube(size = [
    lengthTirdSection
    -plywoodThickness*2,
    plywoodThickness,
    heightCabinet-plywoodThickness]);
}


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