PImage diamond;
float rotx, roty;

void setup() {
  size(800, 800, P3D);
  diamond = loadImage("diamond.png");
  textureMode(NORMAL);
}

void draw() {
  background(255);


  translate(width/2, height/2, 0);
  pushMatrix();
  scale(200);
  rotateX(rotx);
  rotateY(roty);
  noStroke();

  beginShape(QUADS);
  texture(diamond);

  //top
  //     x,y,z,tx,ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  //bottom

  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  //left

  vertex(1, 0, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 0, 1, 0, 1);

  //right
  vertex(0, 0, 0, 0, 0);
  vertex(0, 1, 0, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  endShape();
  popMatrix();
}


void mouseDragged() {
  rotx+= (pmouseY - mouseY)*0.005;
  roty+= (pmouseX - mouseX)*-0.005;
}
