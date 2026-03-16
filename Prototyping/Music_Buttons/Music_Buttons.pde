/*Music Buttons
 */
//
//global variables
 int appWidth, appHeight;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //population
  //
  populationBuild();
  drawMusicDivs(musicButtonDivX[0], randomButtonY, randomButtonDimension);
  drawMusicDivs(musicButtonDivX, buttonY, buttonWidth);
}//end setup
//
void draw() {
}//end draw
//
void mousePressed() {
}//end mouse pressed
//
void keyPressed() {
}//end key pressed
