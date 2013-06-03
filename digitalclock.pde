/* This is a simple digital clock I have created. My end goal is
to actually build this into hardware and create a digital
grandfather clock. */

PFont font;

void setup()
{
  /* If this code is being used for an Android device just go
  ahead and delete the "size()" variable below.*/
  size(195, 135);
  font = loadFont("Pro-20.vlw");
  textFont(font);
}

void draw()
{
  background(0);
  int s = second();
  int m = minute();
  int h = hour();
  String t = nf(h,2) + ":" + nf(m,2) + ":" + nf(s,2);
  text("The time is", 10, 55);
  text(t, 10, 100);
}
