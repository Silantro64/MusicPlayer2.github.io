//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
//
/* Optional Code based on Monitor, not fullScreen()
 void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 //
 void setup() {
 // ERROR IllegalStateException: cannot use a var in size()
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 size(shorterSide, shorterSide); //
 //
 //fullScreen(); //displayWidth, displayHeight
 } //End setup
 //
 //End Optional SETTINGS Code
 */
//
void setup() {
  //println(displayWidth, displayHeight); //Inspection of Variables
  //size(700, 500); //width //height //700, 500
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth; //Best Practice
  appHeight = displayHeight;
  //
  //GUI based on a grid using a referent measure (identifying columns & rows, X&Y)
  divs();
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
