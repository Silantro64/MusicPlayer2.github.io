void inspectMetaData(AudioMetaData[] metaData) {
  for (AudioMetaData song : metaData) {
    println(); //Empty space
    println("File Name: " + song.fileName() );
    println("Length (in milliseconds): " + song.length() );
    println("Title: " + song.title() );
    println("Author: " + song.author() );
    println("Album: " + song.album() );
    println("Date:" + song.date() );
    println("Comment:" + song.comment() );
    println("Lyrics:" + song.lyrics() );
    println("Track:" + song.track() );
    println("Genre:" + song.genre() );
    println("Copyright:" + song.copyright() );
    println("Disc:" + song.disc() );
    println("Composer:" + song.composer() );
    println("Orcherstra:" + song.orchestra() );
    println("Publisher:" + song.publisher() );
    println("Encoded:" + song.encoded() );
    println(); //Empty Space
  } //end for each
}//end inspect meta data
