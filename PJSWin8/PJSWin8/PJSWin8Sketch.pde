/* Processing JS for Windows 8 Store App Demo
 * 
 * by Antonius Wiriadjaja <http://antoni.us>
 * November 19, 2012
 *
 * More info at http://antoni.us/tagged/pjswin8/
 * 
 * Based off of the bouncing ball examples
 * by Daniel Shiffman <http://natureofcode.com>
 *
 * */

/* @pjs preload= "p5.png"; */
/* @pjs preload= "w8.png"; */
/* @pjs preload= "pjs.png"; */

Logo[] logos = new Logo[3];
PImage p5, w8, pjs;

void setup() {
  size(1366,768); // Resolution of MS Surface
  smooth();
  
  p5 = loadImage("p5.png");
  w8 = loadImage("w8.png");
  pjs = loadImage("pjs.png");
  
  logos[0] = new Logo(p5);
  logos[1] = new Logo(w8);
  logos[2] = new Logo(pjs);
}

void draw() {
  background(0);
  
  for (int i = 0; i < logos.length;i++) {
    logos[i].update();
    logos[i].display();
  }
}

class Logo {
  PVector location, velocity;
  PImage img;
  int mass;

  Logo(PImage _img) {
    img = _img;
    location = new PVector((int)random(width), (int)random(height));
    velocity = new PVector(random(2.,2.5), random(2.,2.5));
    mass = width/12;
  }

  void update() {
    location.add(velocity);
    
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }

  void display() {
    stroke(0);
    imageMode(CENTER);
    image(img,location.x,location.y, mass, mass);
  }
}


