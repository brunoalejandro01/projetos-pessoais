void personagem() {
  fill(#D816F2);
  circle(xBola, yBola, diametroPersonagem);
  if (keyPressed == true && keyCode == UP) {
    yBola = yBola - speedY;
  }
  if (keyPressed == true && keyCode == DOWN) {
    yBola = yBola + speedY;
  }
  if (keyPressed == true && keyCode == RIGHT) {
    xBola = xBola + speedX;
  }
  if (keyPressed == true && keyCode == LEFT) {
    xBola = xBola - speedX;
  }
  if (yBola >= 575) {
    yBola = 575;
  }
  if (yBola <= 30) {
    yBola = 30;
  }
  if (xBola >= width-100) {
    xBola = width-100;
  }
  if (xBola <= width-575) {
    xBola = width-575;
  }
}

void personagem2() {
  fill(#FCF503);
  circle(xBola, yBola, diametroPersonagem+20);
  if (keyPressed == true && keyCode == UP) {
    yBola = yBola - speedYPU1;
  }
  if (keyPressed == true && keyCode == DOWN) {
    yBola = yBola + speedYPU1;
  }
  if (keyPressed == true && keyCode == RIGHT) {
    xBola = xBola + speedXPU1;
  }
  if (keyPressed == true && keyCode == LEFT) {
    xBola = xBola - speedXPU1;
  }
  if (yBola >= 575) {
    yBola = 575;
  }
  if (yBola <= 30) {
    yBola = 30;
  }
  if (xBola >= width-100) {
    xBola = width-100;
  }
  if (xBola <= width-575) {
    xBola = width-575;
  }
}

void personagem3() {
  fill(#FF1F41);
  circle(xBola, yBola, diametroPersonagem+20);
  if (keyPressed == true && keyCode == UP) {
    yBola = yBola - speedYPU2;
  }
  if (keyPressed == true && keyCode == DOWN) {
    yBola = yBola + speedYPU2;
  }
  if (keyPressed == true && keyCode == RIGHT) {
    xBola = xBola + speedXPU2;
  }
  if (keyPressed == true && keyCode == LEFT) {
    xBola = xBola - speedXPU2;
  }
  if (yBola >= 575) {
    yBola = 575;
  }
  if (yBola <= 30) {
    yBola = 30;
  }
  if (xBola >= width-100) {
    xBola = width-100;
  }
  if (xBola <= width-575) {
    xBola = width-575;
  }
}
