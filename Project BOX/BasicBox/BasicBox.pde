float rotx, roty;

void setup() {
  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw() {
  background(255);

  translate(width/2, height/2, 0);
  rotateX(rotx);
  rotateY(roty);

  fill(255,0,0);
  sphere(300);

  //cube(width/2,height/2,0, #FF0000,200);
  //cube(0,0,0,#0000FF,100);
}


void mouseDragged() {
  rotx+= (pmouseY - mouseY)*0.005;
  roty+= (pmouseX - mouseX)*-0.005;
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  fill(c);
  stroke(0);
  strokeWeight(3);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  box(size); //W H D
  popMatrix();
}
