/*

    Sink
    
    By Anton Augustsson


*/

module sink (
    xDrawer,yDrawer,zDrawer,
    ){
/*
    ---------- Local varibles ---------- 
*/

thickness = 4;
edge = 30;

length = 460;
width  = 460;
height = 180;

innerLength = 330;
innerWidth = 400;
        
x=xDrawer;
y=yDrawer;
z=zDrawer;

/*
    ---------- Code ---------- 
*/

translate([
    x,
    y,
    z]) 
difference () {
union () {
translate([
    0,
    0,
    0]) 
cube(size = [
    width,
    length,
    height]);

}

union () {

// Remove Sink
translate([
    edge+thickness,
    edge+thickness,
    thickness]) 
cube(size = [
    innerWidth,
    innerLength,
    height]);
    
// Remove left edge
translate([
    -thickness,
    -1,
    -thickness]) 
cube(size = [
    edge,
    length+2,
    height]);

// Remove right edge
translate([
    width+thickness*2-edge,
    -1,
    -thickness]) 
cube(size = [
    edge,
    length+2,
    height]);
    
// Remove front edge
translate([
    -1,
    -1,
    -thickness]) 
cube(size = [
    width+2,
    edge,
    height]);
    
// Remove front edge
translate([
    -1,
    innerLength+edge+thickness*2,
    -thickness]) 
cube(size = [
    width+2,
    edge+100,
    height]);

// Dranige    
translate([
    width/2,                   
    innerLength/2+edge,   
    -1
    ])  
cylinder(
    h = thickness+2,    
    r = 30
    );
    
// Hold 
translate([
    width/2,                   
    (innerLength+edge+thickness*2
    +length)/2,   
    height-thickness-1   
    ])  
cylinder(
    h = thickness+2,    
    r = 15        
    );      

}}}
    
/*
    ---------- Example ---------- 
*/


xDrawer=100;
yDrawer=10;
zDrawer=100;

sink (
    xDrawer,yDrawer,zDrawer
    );