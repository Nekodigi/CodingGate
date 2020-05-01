void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  float off = float(frameCount)/60;//because frameCount is int
  for(int i = 0; i < 10; i++){
    float x = map(i, 0, 10, 0, width);
    float phase = map(i, 0, 10, 0, TWO_PI);
    float hei = sin(phase+off)*height/4+height/2;//height of rectangle
    rect(x, 0, width/10, hei);
  }
}