public void setup() {
  size(500, 500);
  rectMode(CENTER);
}
public void draw() {
  background(127);
  myFractal(250, 250, 250, 250);
}
public void myFractal(int x, int y, int siz, int siz2) {
  ellipse(x, y, siz, siz2);
  if(siz > 2) {
    myFractal(x, y - siz / 2, siz / 2, siz / 2);
    myFractal(x, y + siz / 2, siz / 2, siz / 2);
    myFractal(x - siz / 2, y, siz / 2, siz / 2);
    myFractal(x + siz / 2, y, siz / 2, siz / 2);
  }
}
