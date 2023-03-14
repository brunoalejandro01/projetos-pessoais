float bolinhay1, bolinhay2, bolinhay3, bolinhay4, bolinhay5;
float bolinhax1, bolinhax2, bolinhax3, bolinhax4, bolinhax5;
float x, y;
int p;
float c1, c2, c3;
void setup() {
  size(600, 600);
  background(c3, 100, 100);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  x = width;
  y = height;
  c1=360;
  c2=(c1+120)%360;
  c3=(c1+240)%360;
  bolinhay1 = 100+(random(10, 50));
  bolinhay2 = 100+(random(10, 50));
  bolinhay3 = 100+(random(10, 50));
  bolinhay4 = 100+(random(10, 50));
  bolinhay5 = 100+(random(10, 50));
  bolinhax1 = int(random(150.0/600*x, 450.0/600*x));
  bolinhax2 = int(random(150.0/600*x, 450.0/600*x));
  bolinhax3 = int(random(150.0/600*x, 450.0/600*x));
  bolinhax4 = int(random(150.0/600*x, 450.0/600*x));
  bolinhax5 = int(random(150.0/600*x, 450.0/600*x));
}
void draw() {
  background(c3, 100, 100);
  //NAVE
  fill(c2, 100, 100);
  stroke(360, 0, 0);
  arc(300.0/600*x, 110.0/600*y, 400.0/600*x, 100.0/600*y, radians(10), radians(370));
  stroke(360, 0, 0);
  arc(300.0/600*x, 100.0/600*y, 400.0/600*x, 100.0/600*y, radians(0), radians(360));
  fill(c2, 100, 100);
  stroke(0);
  ellipse(300.0/600*x, 50.0/600*y, 130.0/600*x, 80.0/600*y);
  noStroke();
  //LUZES DA NAVE
  fill(random(0, 360), random(0, 360), random(0, 360));
  ellipse(120.0/600*x, 100.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(160.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(200.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(240.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(280.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(320.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(360.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(400.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(440.0/600*x, 110.0/600*y, 20.0/600*x, 20.0/600*y);
  ellipse(480.0/600*x, 100.0/600*y, 20.0/600*x, 20.0/600*y);
  //CIDADE
  fill(c1, 100, 100);
  stroke(50);
  triangle(0.0/600*x, 450.0/600*y, 25.0/600*x, 400.0/600*y, 50.0/600*x, 450.0/600*y);
  rect(0.0/600*x, 450.0/600*y, 50.0/600*x, 150.0/600*y);
  rect(50.0/600*x, 500.0/600*y, 200.0/600*x, 100.0/600*y);
  rect(350.0/600*x, 500.0/600*y, 200.0/600*x, 100.0/600*y);
  triangle(550.0/600*x, 450.0/600*y, 575.0/600*x, 400.0/600*y, 600.0/600*x, 450.0/600*y);
  rect(550.0/600*x, 450.0/600*y, 50.0/600*x, 150.0/600*y);
  fill(c1, 100, 100);
  rect(250.0/600*x, 500.0/600*y, 100.0/600*x, 100.0/600*y);
  triangle(250.0/600*x, 500.0/600*y, 300.0/600*x, 450.0/600*y, 350.0/600*x, 500.0/600*y);
  fill(0);
  textSize(20.0/600*x);
  text("ÁREA 51", 265.0/600*x, 520.0/600*y);
  noStroke();

  //ESCUDO
  fill(255);
  rect(0.0/600*x, 300.0/600*y, 600.0/600*x, 80.0/600*y);
  //BOMBAS
  fill(c2, 50, 100);
  ellipse(bolinhax1, bolinhay1, 40.0/600*x, 40.0/600*y);
  ellipse(bolinhax2, bolinhay2, 40.0/600*x, 40.0/600*y);
  ellipse(bolinhax3, bolinhay3, 40.0/600*x, 40.0/600*y);
  ellipse(bolinhax4, bolinhay4, 40.0/600*x, 40.0/600*y);
  ellipse(bolinhax5, bolinhay5, 40.0/600*x, 40.0/600*y);
  bolinhay1+=random(1, 5);
  bolinhay2+=random(1, 5);
  bolinhay3+=random(1, 5);
  bolinhay4+=random(1, 5);
  bolinhay5+=random(1, 5);

  text("PONTUAÇÃO:"+p, 50.0/600*x, 50.0/600*y);

  if (bolinhay1>=500.0/600*y || bolinhay2>=500.0/600*y || bolinhay3>=500.0/600*y || bolinhay4>=500.0/600*y || bolinhay5>=500.0/600*y) {
    text("VOCÊ PERDEU, TENTE NOVAMENTE!", 180.0/600*x, 200.0/600*y);
    bolinhay1 = y+40;
    bolinhay2 = y+40;
    bolinhay3 = y+40;
    bolinhay4 = y+40;
    bolinhay5 = y+40;
  }
}

//ESCUDO
void keyPressed() {
  if (keyCode == ENTER) {
    if (bolinhay1>=300.0/600*y && bolinhay1<=380.0/600*y) {
      bolinhax1 = int(random(150.0/600*x, 450.0/600*x));
      bolinhay1 = 100.0/600*y;
      p++;
    }
    if (bolinhay2>=300.0/600*y && bolinhay2<=380.0/600*y) {
      bolinhax2 = int(random(150.0/600*x, 450.0/600*x));
      bolinhay2 = 100.0/600*y;
      p++;
    }
    if (bolinhay3>=300.0/600*y && bolinhay3<=380.0/600*y) {
      bolinhax3 = int(random(150.0/600*x, 450.0/600*x));
      bolinhay3 = 100.0/600*y;
      p++;
    }
    if (bolinhay4>=300.0/600*y && bolinhay4<=380.0/600*y) {
      bolinhax4 = int(random(150.0/600*x, 450.0/600*x));
      bolinhay4 = 100.0/600*y;
      p++;
    }
    if (bolinhay5>=300.0/600*y && bolinhay5<=380.0/600*y) {
      bolinhax5 = int(random(150.0/600*x, 450.0/600*x));
      bolinhay5 = 100.0/600*y;
      p++;
    }
  }
}
