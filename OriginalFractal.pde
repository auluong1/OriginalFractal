public void setup() {
  size(500, 500);
  rectMode(CENTER);
}
public void draw() {
  background(127);
  myFractal(250, 250, 400);
}
public void myFractal(int x, int y, int siz) {
  circle(x, y, siz);
  if(siz > 2) {
    myFractal(x, y - siz / 2, siz / 2);
    myFractal(x, y + siz / 2, siz / 2);
    myFractal(x - siz / 2, y, siz / 2);
    myFractal(x + siz / 2, y, siz / 2);
  }
}
