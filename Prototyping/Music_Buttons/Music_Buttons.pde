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
 for ( int i=0; i<musicButtonDivX.length; i++ ) {
    if (i==0) musicSymbol( 0, musicButtonDivX[0], randomButtonY, randomButtonDimension );
    if ( i!=0 ) musicSymbol( i, musicButtonDivX[i], buttonY, buttonWidth );
 }
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
