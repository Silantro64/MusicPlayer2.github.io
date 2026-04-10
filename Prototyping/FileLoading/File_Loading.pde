/* File Loading for
 - Image Files
 - Note: Music and Images match indices 1:1
 - Different Folders
 - Mixing Global Variables & Local Variables
 */
int numberOfFiles = 0; //Best Practice
int currentFile = numberOfFiles - numberOfFiles; //ZERO
//
PImage[] imagesPlayList;
//
void fileImageLoading() {
  String upArrow = ".."; //2x
  String open = "/"; //Relative Pathway
  String imagesFolder = "Images"; //Relative Pathway
  // if ( numberOfFiles==0 ) ... separete reading images with reading music
  String imagesDirectory = sketchPath( upArrow + open + upArrow + open + upArrow + open + imagesFolder + open ); //Hardcoded Folder Design
  //ErrorCheck("Inspection, Images Directory:", imagesDirectory);
  //
  //currentSong variable controls Music and Image to CANVAS
   //Sets Music Variables, used for images
} //End File Loading
//


void imageLoading(String[] files) {
  imagesPlayList = new PImage[numberOfFiles]; //sets the array length
  int fileNumber=0;
  while ( fileNumber < numberOfFiles ) {
    imagesPlayList[ fileNumber ] = loadImage( files[ fileNumber ] );
    //ErrorCheck("Verifying Width & Height of Loaded Images, see imageLoading() in File Loading", imagesPlayList[fileNumber].width, imagesPlayList[fileNumber].height );
    fileNumber++; //functions similar to FOR
  }
//See Image
} //End Image Loading
//
//
//End SubProgram File Loading
