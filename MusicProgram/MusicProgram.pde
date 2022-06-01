//Libraries: uses sketch/ import library/ add library/minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global variables
Minim minim; //creates object to acesss all functions
AudioPlayer song1;//creates "play list" variables wav, Aiff, au, snd, and mp3
//
void setup()
{
  //size (500,600);//Remember, display geometry is mandatory
  minim=new Minim(this);//loads from data directory, loadFile should also load from project folder, like loadImages
  song1=minim.loadFile("MusicDownload/Eureka.mp3");
  song1.play();//parameter is milli-seconds from start of audio file to start of playing
 song1.loop(1);//parameter is number of repeats
}
//End setup
//
void draw() {}//end draw
//
void keyPressed()
{
  String keystr=String.valueOf(key);
  println("Number of repeats is ",keystr);
  int num=int(keystr);
  song1.loop(num);
  //int loopNum= 2;//local variables plays once and loops twice
   //song1.play();//parameter is milli-seconds from start of audio file to start of playing
  //  if (key=='l'  || key=='L') song1.loop(loopNum);
}//end keypressed
//
void mousePressed() {}//End mousePressed
//
//End program
