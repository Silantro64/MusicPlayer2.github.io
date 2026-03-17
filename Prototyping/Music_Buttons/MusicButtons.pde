/* note:
 -
 */
//Global Variables]
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];
//
void populationBuild() {
  //Population building
  buttonWidth = appWidth/13; //number of buttons in a row + 2* padding
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
//
void musicSymbol(int index, float divX, float divY, float divDimension) {
  divX = smallerNum(divX, divDimension);
  divY = smallerNum(divY, divDimension);
  divDimension = smallerDivDimension(divDimension);
  //
  if (index==1 || index==2 || index==7 || index==8) drawMusicDivs(divX, divY, divDimension);
  if (index==2) drawLines(divX, divY, divDimension);
  if (index==6) drawWideTriangle(6, divX, divY, divDimension);
  if (index==7 || index==8) {
    divX = smallerNum(divX, divDimension);
    divY = smallerNum(divY, divDimension);
    divDimension = smallerDivDimension(divDimension);
    drawMusicDivs(divX, divY, divDimension);
  }
}//end music symbols
float smallerNum(float divXY, float divDimension) {
  return divXY = divXY + divDimension*1/4;
}
float smallerNum(float divDimension) {
  return divDimension*1/2;
}
float smallerDivDimension(float divDimension) {
  return divDimension*1/2;
}
void drawLines (float divX, float divY, float divDimension) {
  line(divX, divY, divX+divDimension, divY+divDimension);
  line(divX+divDimension, divY, divX, divY+divDimension);
}
void drawWideTriangle(int index, float divX, float divY, float divDimension) {
  triangle(divX, divY, divX+smallerNum(divX), smallerNum(divY, divDimension), divX, divY+smallerNum(divY), );
}
//
//end subprogram music buttons
