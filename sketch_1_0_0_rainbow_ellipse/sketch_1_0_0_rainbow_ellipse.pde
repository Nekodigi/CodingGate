void setup(){
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
}

void draw(){
 background(360);
 float colOff = frameCount*2;
 for(int i = 0; i < 10; i++){
   float col = map(i, 0, 10, 0, 360);
   fill((colOff+col)%360, 100, 100);//hue, saturation, brightness
   float x = map(i, 0, 10, 0, width)+25;
   ellipse(x, height/2, 20, 20);
 }
}