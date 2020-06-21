/*

    Cabinet
    
    By Anton Augustsson


*/

module cabinet (
    thickness,
    length,
    width,
    height
    ){
/*
    ---------- Local varibles ---------- 
*/



/*
    ---------- Code ---------- 
*/


union () {

// Left
translate([
    0,
    0,
    0]) 
cube(size = [
    thickness,
    width,
    height-thickness]);

// Right
translate([
    length-thickness,
    0,
    0]) 
cube(size = [
    thickness,
    width,
    height-thickness]);
    
// Bottom 
translate([
    thickness,
    0,
    0]) 
cube(size = [
    length
    -thickness*2,
    width-thickness,
    thickness]);

// Back
translate([
    thickness,
    width-thickness,
    0]) 
cube(size = [
    length
    -thickness*2,
    thickness,
    height-thickness]);
}}



/*
    ---------- Example ---------- 
*/


thickness = 12;

length = 600;
width  = 600;
height = 900;

cabinet (
    thickness,
    length,
    width,
    height
    );