int xspacing = 16;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave

float theta = 0;  // Start angle at 0
float amplitude = 75.0;  // Height of wave
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Using an array to store height values for the wave



int c = 0;
int plus = 17;
void setup() {
  size(640, 640);
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
  //frameRate(60);
}
boolean dir = true;  
void draw() {
  background(0);
  fill(255);
  ellipse(width/2,height/2,500,500);
  

   oneEight(theta,0);
   theta = theta + 0.1;
   if (dir) {
     c=c+plus;
     if (c==255) dir=false;
   } else {
     c=c-plus;
     if (c==0) dir=true;
   }
 // calcWave();
 // renderWave();
}
int inverseColor(int c){
  int reversed = 0;
  if ( c == 0 ) return 255;
  if ( c == 255) return 0;
  if ( c == 127) return 127;
  if ( c < 127 ) return (127 - c) + 127;
  if ( c > 127 ) return 127 - (c-127);
  return reversed;
}
void oneEight(float theta,int c) {
  //background(0);
  float x = PI/48 ;
  float y = 1 + theta;
  translate(width/2, height/2);
  fill(c);
  for ( int i = 0  ; i < 24 ; i++){
  rotate(x * y);
  arc(0, 0, 480, 480, PI/24 * 23, PI);
  y = 4;
  }
  
}
 