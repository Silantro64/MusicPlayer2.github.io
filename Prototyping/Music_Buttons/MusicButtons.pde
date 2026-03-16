/* note:
 -
 */
//Global Variables]
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];
//
void populationBuild() {
  //Population building
  int buttonWidth = appWidth/13; //number of buttons in a row + 2* padding
  buttonY = appHeight*3/5; //most buttons
  int randomButtonX = 0;
  randomButtonY = 0;
  randomButtonDimension = appHeight*1/20; //changed to square
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for (int i=1; i<musicButtonDivX.length; i++) {
    musicButtonDivX[i] = buttonWidth*i;
  }
}//end population build
void drawMusicDivs(float x, float y, float d) {
  square(x, y, d);
}
void drawMusicDivs(float[] x, float y, float d) {
  for (int i=1; i<musicButtonDivX.length; i++) {
    square(x[i], y, d);
  }
}//end music DIVs
