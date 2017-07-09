Walker w;
Test t;
int time;

boolean complete;

void setup () {
  background(50);
  size (800, 600);
  w = new Walker();
  t = new Test();
  complete = false;
}

void draw () {
  if (!complete) {
    background(50);
    w.reset();
    w.mine(200);
    time = millis();
    complete = true;
  }
  w.drawCenter();
  if (millis() - time > 1000) complete = false;
  
  
}


/// EOF ///