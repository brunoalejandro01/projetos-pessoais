void telas() {
  background(0, 0, 90);
  if (estadoTela == menu) {
    menu();
  }
  if (estadoTela == telaJogo) {
    telaJogo();
  }
  if (estadoTela == tutorial) {
    telaTutorial();
  }
  if (estadoTela == telaFinal) {
    telaFinal();
  }
}

void telaJogo() {
  desenhaMapa();
  setaGuia();
  desenhaJogador();
  moveJogador();
  limitesJogador();
  interage();
  pedidoMef();
  contadorDePedidos();
  tempoDeJogo();
}

void menu() {
  //fundo
  fill(190, 86, 77);
  rect(0, 0, 800, 600);
  //terra
  imgTerra = loadImage("terraRODA.png");
  image(imgTerra, 105, 200, 654, 626);
  //botões
  imgMenu = loadImage("telaMenu.png");
  image(imgMenu, 0, 0);

  if (mousePressed == true && mouseX >= 100 && mouseX <= 300 && mouseY >= 400 && mouseY <= 470) {
    estadoTela = telaJogo;
  }
  if (mousePressed == true && mouseX >= 500 && mouseX <= 700 && mouseY >= 400 && mouseY <= 470) {
    estadoTela = tutorial;
  }
  zeraCoisas();
}

void telaFinal() {
  if (entregaPositiva >= 5) {
    image(telaFinal3, 0, 0);
    fill(100, 0, 100);
    textSize(30);
    text(entregaPositiva, 530, 127);
    text(entregaNegativa, 570, 173);
  }
  if (entregaPositiva >= 3 && entregaPositiva < 5) {
    image(telaFinal2, 0, 0);
    fill(100, 0, 100);
    textSize(30);
    text(entregaPositiva, 530, 127);
    text(entregaNegativa, 570, 173);
  }
  if (entregaPositiva < 3) {
    image(telaFinal1, 0, 0);
    fill(100, 0, 100);
    textSize(30);
    text(entregaPositiva, 530, 127);
    text(entregaNegativa, 570, 173);
  }
  if (mousePressed == true && mouseX >= 29 && mouseX <= 120 && mouseY >= 534 && mouseY <= 580) {
    estadoTela = menu;
  }
}

void telaTutorial() {
  imgTutorial = loadImage("regrasdojogo.png");
  image(imgTutorial, 0, 0);

  if (mousePressed == true && mouseX >= 29 && mouseX <= 120 && mouseY >= 534 && mouseY <= 580) {
    estadoTela = menu;
  }
}
