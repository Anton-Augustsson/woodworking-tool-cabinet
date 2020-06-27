/*

    Door
    
    By Anton Augustsson


*/

// use dovtail library

module door (
    thicknessBottom,
    thicknessSide,
    thicknessFront,
    lenghtDoor,
    widthDoor,
    heightDoor,
    xDoor,yDoor,zDoor,
    yRotate
    ){
/*
    ---------- Local varibles ---------- 
*/

length = lenghtDoor;
width  = widthDoor;
height = heightDoor;

widthHandal = 50;
        
x=xDoor;
y=yDoor;
z=zDoor;

/*
    ---------- Code ---------- 
*/

//rotate([0,0,0])  0,0,0
//rotate([0,180,0])  0,0,height
translate([
    x,
    y,
    z]) 
rotate([0,yRotate,0])
difference () {
union () {


// Bottom 
color("Wheat")
translate([
    0,
    0,
    0]) 
cube(size = [
    width,
    length,
    thicknessBottom]);


// top
color("Wheat")
translate([
    0,
    0,
    height-thicknessBottom]) 
cube(size = [
    width,
    length,
    thicknessBottom]);


// Back
color("BurlyWood")
translate([
    0,
    length-thicknessSide,
    0]) 
cube(size = [
    width,
    thicknessSide,
    height]);    


// Side not angle
color("Wheat")
translate([
    0,
    0,
    thicknessBottom]) 
cube(size = [
    thicknessSide,
    length,
    height-thicknessBottom*2]); //

// Side angle
color("Wheat")
translate([
    width,
    0,
    thicknessBottom]) 
rotate([0,0,45])
cube(size = [
    thicknessSide,
    sqrt(length*length*2),
    height-thicknessBottom*2]); //

// Back
color("BurlyWood")
translate([
    width-widthHandal,
    0,
    0]) 
cube(size = [
    widthHandal,
    thicknessSide,
    height]);    

}

// removal
union () {
translate([
    width+sqrt(thicknessSide*thicknessSide*2),
    0,
    -1]) 
rotate([0,0,45])
cube(size = [
    length*sin(45),
    sqrt(length*length*2),
    height+2]); //

translate([
    width,
    0,
    -1]) 
cube(size = [
    thicknessSide,
    length,
    height+2]); //

translate([
    0,
    length,
    0]) 
cube(size = [
    width,
    thicknessSide,
    height]);    
}

}}


    
/*
    ---------- Example ---------- 
*/


thicknessBottom = 14;
thicknessSide   = 14;
thicknessFront  = 20;

length = 100;
width  = 300;
height = 600;


x=0;
y=0;
z=0;
yRotate=0;

door (
    thicknessBottom,
    thicknessSide,
    thicknessFront,
    length,
    width,
    height,
    x,y,z,
    yRotate
    );