void setup(){
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
}

void draw(){
  background(360);
  float off = frameCount/60;//because frameCount is int
  float colOff = frameCount*2;
  for(int i = 0; i < 10; i++){
    float col = map(i, 0, 10, 0, 360);
    fill((colOff+col)%360, 100, 100);//hue, saturation, brightness
    float x = map(i, 0, 10, 0, width);
    float phase = map(i, 0, 10, 0, TWO_PI);
    float hei = sin(phase+off)*height/4+height/2;//height of rectangle
    rect(x, 0, width/10, hei);
  }
}