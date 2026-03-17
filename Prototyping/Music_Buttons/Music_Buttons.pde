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
  //
  musicSymbol(1, musicButtonDivX[1], buttonY, buttonWidth);
  musicSymbol(2, musicButtonDivX[2], buttonY, buttonWidth);
  musicSymbol(6, musicButtonDivX[6], buttonY, buttonWidth);
  musicSymbol(7, musicButtonDivX[7], buttonY, buttonWidth);
  musicSymbol(8, musicButtonDivX[8], buttonY, buttonWidth);
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
