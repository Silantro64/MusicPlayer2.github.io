//global variables
int numberOfDIVs = 9; // Increase the number of DIVs
int numberOfParameters = 4;
float[] divs = new float[numberOfDIVs * numberOfParameters]; // Adjust array size accordingly

void divs() {
  //note: even-odd for width-height
  float paperWidth = 266;
  float paperHeight = 223;

  //DIV 1
  divs[0] = appWidth * 25 / paperWidth;
  divs[1] = appHeight * 27 / paperHeight;
  divs[2] = appWidth * 208 / paperWidth;
  divs[3] = appHeight * 119 / paperHeight;

  //DIV 2
  divs[4] = appWidth * 130 / paperWidth;
  divs[5] = appHeight * 31 / paperHeight;
  divs[6] = appWidth * 100 / paperWidth;
  divs[7] = appHeight * 110 / paperHeight;

  //DIV 3
  divs[8] = appWidth * 28 / paperWidth;
  divs[9] = appHeight * 31 / paperHeight;
  divs[10] = appWidth * 100 / paperWidth;
  divs[11] = appHeight * 110 / paperHeight;
  
  //DIV 4
  divs[12] = appWidth *  250 / paperWidth;
  divs[13] = appHeight * 0/ paperHeight;
  divs[14] = appWidth * 20 / paperWidth;
  divs[15] = appHeight * 20 / paperHeight;
  
  //DIV 5
  divs[16] = appWidth *  80 / paperWidth;
  divs[17] = appHeight * 175/ paperHeight;
  divs[18] = appWidth * 15 / paperWidth;
  divs[19] = appHeight * 20 / paperHeight;
  
  //DIV 6
  divs[20] = appWidth *  95 / paperWidth;
  divs[21] = appHeight * 175/ paperHeight;
  divs[22] = appWidth * 15 / paperWidth;
  divs[23] = appHeight * 20 / paperHeight;
  
  //DIV 7
  divs[24] = appWidth *  110 / paperWidth;
  divs[25] = appHeight * 175/ paperHeight;
  divs[26] = appWidth * 15 / paperWidth;
  divs[27] = appHeight * 20 / paperHeight;
  
  //DIV 8
  divs[28] = appWidth *  125 / paperWidth;
  divs[29] = appHeight * 175/ paperHeight;
  divs[30] = appWidth * 15/ paperWidth;
  divs[31] = appHeight * 20 / paperHeight;

  // Draw all DIVs
  for (int i=0;i < divs.length; i+=4) {
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  } //end for
}//end DIVs
//
void rectDIV(float x,float y,float w,float h) {
  //divs: dividing out the canvas in non-overlapping sections
  rect(x,y,w,h);
}
//end subprogram DIVs
