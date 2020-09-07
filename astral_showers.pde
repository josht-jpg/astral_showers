float theta = 0;
float theta2 = 50;
ArrayList<particle> particles; 

void setup() {
  fullScreen(P3D);
  particles = new ArrayList<particle>();
}

void draw() {

  background(0);
  if (mousePressed) {
    rotateX(map(mouseX, 0, width, 0, TWO_PI));
    rotateY(map(mouseX, 0, height, 0, TWO_PI));
    translate(width/2, height/2, 0);
  }
  translate(width/2, height/2, 0);
  rotateX(map(mouseX, 0, width, 0, TWO_PI));
  rotateY(map(mouseY, 0, height, 0, TWO_PI));

  theta += 0.08;
  theta2 += log(theta)*sin(theta) / 3.14;
  
  particles.add(new particle(theta  + log(theta2)));
  particles.add(new particle(theta2));
  particles.get(particles.size()-1).display();

  for (particle p : particles) {
    rotateX(map(theta/20, theta, sin(width), theta, TWO_PI));
    rotateY(map(theta/20, theta, cos(width), theta, TWO_PI));
    p.display();
  }
  //saveFrame("output/sim7_gol_#####.png");
}
