int x;

void setup() {
  size(500, 500);
  frameRate(10);
  x = 0;
}

void draw() {
  colorMode(HSB, 360, 255, 255);
  background(0, 255, 255);
  ellipseMode(CENTER);
  colorMode(RGB, 255, 255, 255);
  fill(random(255), random(255), random(255));
  stroke(255);
  strokeWeight(5);
  //arms
  line(x-width/4, 3*height/4, x+width/4, height/4);
  line(x-width/4, height/4, x+width/4, 3*height/4);
  //body
  stroke(0);
  ellipse(x, height/2, width/4, height/4);
  //"pom-poms"
  line(x-width/4, height/4, random(x-3*width/8, x-width/8), random(height/8, 3*height/8));
  line(x-width/4, 3*height/4, random(x-3*width/8, x-width/8), random(5*height/8, 7*height/8));
  line(x+width/4, height/4, random(x+width/8, x+3*width/8), random(height/8, 3*height/8));
  line(x+width/4, 3*height/4, random(x+width/8, x+3*width/8), random(5*height/8, 7*height/8));
  //eyes
  noStroke();
  fill(0);
  ellipse(x-width/24, 15*height/32, width/16, height/12);
  ellipse(x+width/24, 15*height/32, width/16, height/12);
  arc(x, 17*height/32, width/16, height/16, 0, PI);
  x = x + 5;
}
