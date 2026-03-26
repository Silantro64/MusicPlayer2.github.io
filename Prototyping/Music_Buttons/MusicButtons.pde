/* Note:
 -
 */
//Global Variables'
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons=9;
float[] musicButtonDivX = new float[numberOfButtons];
//
void populationBuild() {
  //Population Building
  buttonWidth = appWidth/13; //Number of Buttons in a Row + 2xPadding
  buttonY = appHeight*3/5; //Most Buttons
  int randomButtonX = 0;
  randomButtonY = 0;
  randomButtonDimension = appHeight*1/20; //Changed to SQUARE
  int offsetX = appWidth/10;
 musicButtonDivX[0] = randomButtonX;
  for (int i = 1; i < musicButtonDivX.length; i++) {
      if (i == 0) {
      musicButtonDivX[0] = randomButtonX;
    } else {
      musicButtonDivX[i] = buttonWidth * i + offsetX;
    }
  }
  //
}//End Population Build
//
void drawMusicDivs( float x, float y, float d ) {
  square( x, y, d);
}//End Music DIVs
void drawMusicDivs( float[] x, float y, float d ) {
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    square( x[i], y, d);
  }
}//End Music DIVs
//
void musicSymbol( int index, float divX, float divY, float divDimension ) { //index from X-Var, musicButtonDivX
  divX = smallerNum( divX, divDimension );
  divY = smallerNum( divY, divDimension );
  divDimension = smallerNum( divDimension );
  //
  if ( index==5 || index==6 || index==7|| index==8) { //No Square
    // Empty IF
  } else if ( index==3 || index==4 ) { //No SQUARE & Reverse Triangle, else not executed
    divX = divX + divDimension;
  } else {
    drawMusicDivs( divX, divY, divDimension );
  }
  if (index==2) drawLines( divX, divY, divDimension );
  if (index==3) {
    drawNarrowTriangle( -1, divX, divY, divDimension );
    drawRectangle( 1, divX-divDimension*3/4, divY, divDimension, divDimension );
  }
  if ( index==4 ) {
    drawNarrowTriangle( -1, divX, divY, divDimension );
    drawNarrowTriangle( -1, divX-smallerNum(divDimension), divY, divDimension ); //Note: subtracting, divX-smallerNum(divDimension)
  }
  if ( index==6 ) {
    drawRectangle( 1, divX, divY, divDimension, divDimension );
    drawRectangle( -1, divX, divY, divDimension, divDimension );
  }
  if ( index==5 ) drawWideTriangle( divX, divY, divDimension );
 
  if ( index==7 ) {
    drawNarrowTriangle( 1, divX, divY, divDimension );
    drawNarrowTriangle( 1, divX+smallerNum(divDimension), divY, divDimension );
  }
  if ( index==8 ) {
    drawNarrowTriangle( 1, divX, divY, divDimension );
    drawRectangle( 1, divX+smallerNum(divDimension), divY, divDimension, divDimension );
  
  }
  //
}//End Music Symbols
float smallerNum( float divXY, float divDimension ) {
  return divXY = divXY + divDimension*1/4;
}
float smallerNum( float divDimension ) {
  return divDimension*1/2;
}
void drawLines( float divX, float divY, float divDimension ) {
  line(divX, divY, divX+divDimension, divY+divDimension);
  line(divX+divDimension, divY, divX, divY+divDimension);
}
void drawWideTriangle( float divX, float divY, float divDimension ) {
  triangle( divX, divY, divX+divDimension, divY+smallerNum(divDimension), divX, divY+divDimension  );
}
void drawNarrowTriangle( int reverse, float divX, float divY, float divDimension ) {
  triangle( divX, divY, divX+reverse*smallerNum(divDimension), divY+smallerNum(divDimension), divX, divY+divDimension  );
}
void drawRectangle( int reverse, float x, float y, float w, float h ) {
  if ( reverse==-1 ) x = x+w-w*1/4;
  rect(x, y, w*1/4, h);
}
//
//End Subprogram Music Buttons
