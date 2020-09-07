class particle {
  float theta;

  particle(float t) {
    theta = t;
  }

  void display() {
    translate(0, 0, 30*cos(theta));
    fill(255 * theta, theta*sin(theta), 255 / log(theta));
    noStroke();
    if (theta < 15) ellipse(25*sin(theta)+(width/2), (height - 6*theta)*exp(cos(theta)) / 3.14, 12, 12);
    else if (theta < 100) ellipse(1 / (1 + exp(theta)), 1 / (1 + exp(theta))*(height - 6*theta)*exp(cos(theta)) / 3.14, 12, 12);
    else {
      ellipse(100*sin(theta)+(width/2), theta / (1 + exp(theta)) * (height - 6*theta) /(random(1, theta)), 8, 8);
    }
  }
}
