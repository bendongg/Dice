int result = 0;
int count = 0;

void setup() {
  size(600, 600);
  noLoop();
}

void draw() {
  background(255);

  int finalResult = 0;
  count = 0;

  for (int y = 10; y <= 500; y = y + 60) {
    for (int x = 5; x <= 500; x = x + 60) {
      if (count < 67) {
        Die bob = new Die(x, y);
        bob.show(count);
        finalResult = finalResult + result;
        count++;
      }
    }
  }

  fill(0);
  textSize(67);
  text("Total Roll: " + finalResult, 50, 580);
}

void mousePressed() {
  redraw();
}

class Die {
  int myX, myY;

  Die(int x, int y) {
    myX = x;
    myY = y;
    roll();
  }

  void roll() {
    double dieRoll = Math.random();
    if (dieRoll < 0.16) {
      result = 1;
    } else if (dieRoll < 0.32) {
      result = 2;
    } else if (dieRoll < 0.48) {
      result = 3;
    } else if (dieRoll < 0.64) {
      result = 4;
    } else if (dieRoll < 0.80) {
      result = 5;
    } else {
      result = 6;
    }
  }

  void show(int a) {
    if (a % 2 == 0) fill(220, 30, 30);
    else fill(20);
    stroke(0);
    rect(myX, myY, 50, 50, 10);

    fill(255);
    noStroke();

    if (result == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (result == 2) {
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (result == 3) {
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
    } else if (result == 4) {
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
    } else if (result == 5) {
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else { // 6
      ellipse(myX + 38, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 12, 10, 10);
      ellipse(myX + 12, myY + 38, 10, 10);
      ellipse(myX + 38, myY + 38, 10, 10);
      ellipse(myX + 12, myY + 25, 10, 10);
      ellipse(myX + 38, myY + 25, 10, 10);
    }
  }
}
