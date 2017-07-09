class Walker {

  PVector pos;
  int step = 10;
  color c;

  Walker () {
    reset();
  }
  
  void reset() {
    pos = new PVector (width/2, height/2);
    c = (200);
    noStroke();
  }
  void dig () {
    fill(c);
    rectMode(CENTER);
    rect(pos.x, pos.y, step, step);
  }

  void move (int dir) {
    switch (dir) {
    case 0: // move right
      pos.x += step;
      break;
    case 1: // move up
      pos.y += step;
      break;
    case 2: // move left
      pos.x -= step;
      break;
    case 3: // move down
      pos.y -= step;
      break;
    }
  }

  int choose () {
    return int(random(0, 4));
  }

  void mine(int iterations) {
    dig();
    for (int i = 0; i < iterations; i++) {
      this.move(choose());
      dig();
    }
  }

  void drawCenter() {
    fill(255,0,0);
    rectMode(CENTER);
    rect(width/2, height/2, step, step);
  }

  /// EOF ///
}