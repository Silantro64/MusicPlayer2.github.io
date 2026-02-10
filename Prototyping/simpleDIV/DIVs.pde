//global variables
int numberOfDIVs = 1; //best practice
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  //note: even-odd for width-height
  float paperWidth = 263;
  float paperHeight = 222;
  divs[0] = appWidth * 25 /paperWidth;
  divs[1] = appHeight * 27 /paperHeight;
  divs[2] = appWidth * 212 /paperWidth;
  divs[3] = appHeight * 121 /paperHeight;
  
  //printArray(divs);
  //rectDIV(divs[0], divs[1], divs[2], divs[3]);
  //
  for ( int i=0; i<divs.length; i+=4) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //end for
  //
}//end DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //divs: dividing out the canvas in non-overlapping sections
  rect(x, y, w, h);
}
//end subprogram DIVs
