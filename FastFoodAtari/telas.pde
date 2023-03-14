void telas() {
  if (estadoTela == menu) {
    menu();
  }
  if (estadoTela == telaJogo) {
    telaJogo();
  }
  if (estadoTela == telaJogo2) {
    telaJogo2();
  }
  if (estadoTela == telaJogo3) {
    telaJogo3();
  }
  if (estadoTela == tutorial) {
    telaTutorial();
  }
  if (estadoTela == telaFinal1) {
    telaFinal1();
  }
  if (estadoTela == telaFinal2) {
    telaFinal2();
  }
}

void telaJogo() {
  //jogo
  comidas();
  personagem();
  colisao();
  cenario();
  fimDeJogo1();
  fimDeJogo2();

  //inimigos
  geraInimigos();
  colisao2();

  //bolinha
  bolinhaPU1();
  colisaoBolinhaPU1();
  bolinhaPU2();
  colisaoBolinhaPU2();
}

void telaJogo2() {
  background(#52B7F7);
  tempoPowerUp1++;
  if (tempoPowerUp1 >= 600) {
    estadoTela = telaJogo;
    tempoPowerUp1 = 0;
  }
  //jogo
  comidasPU1();
  personagem2();
  cenario();
  fimDeJogo1();
  fimDeJogo2();
  colisaoPU1();

  //inimigos
  geraInimigosPU11();
  colisaoPU11();
}

void telaJogo3() {
  background(#494C58);
  tempoPowerUp2++;
  if (tempoPowerUp2 >= 600) {
    estadoTela = telaJogo;
    tempoPowerUp2 = 0;
  }
  //jogo
  comidasPU2();
  personagem3();
  cenario();
  fimDeJogo1();
  fimDeJogo2();
  colisaoPU2();

  //inimigos
  geraInimigosPU21();
  colisaoPU21();
}

void menu() {
  telaInicial = loadImage("telainicial.png");
  image(telaInicial, 0, 0);

  if (mousePressed == true && mouseX >= 80 && mouseX <= 280 && mouseY >= 370 && mouseY <= 470) {
    estadoTela = telaJogo;
  }
  if (mousePressed == true && mouseX >= 520 && mouseX <= 720 && mouseY >= 370 && mouseY <= 470) {
    estadoTela = tutorial;
  }
  zeraJogo();
}

void telaTutorial() {
  telaTutorial = loadImage("telatutorial.png");
  image(telaTutorial, 0, 0);

  if (mousePressed == true && mouseX >= 15 && mouseX <= 176 && mouseY >= 509 && mouseY <= 590) {
    estadoTela = menu;
  }
}

void telaFinal1() {
  telaF1 = loadImage("telaFinal1.png");
  image(telaF1, 0, 0);
  fill(255);
  textSize(30);
  text(pontos, 390, 335);

  if (mousePressed == true && mouseX >= 30 && mouseX <= 230 && mouseY >= 500 && mouseY <= 580) {
    estadoTela = menu;
  }
}

void telaFinal2() {
  telaF2 = loadImage("telaFinal2.png");
  image(telaF2, 0, 0);
  fill(255);
  textSize(15);
  text(comidaEstragada, 280, 330);

  if (mousePressed == true && mouseX >= 300 && mouseX <= 500 && mouseY >= 500 && mouseY <= 580) {
    estadoTela = menu;
  }
}

void fimDeJogo1() {
  for (int i = 0; i < vetorBolinhas.length; i++) {
    if (pontos >= 30) {
      vetorBolinhas[i].x = -40;
      vetorBolinhas[i].y = -40;
      vetorBolinhas[i].z = 0;
      xBola = width/2;
      yBola = 450;
      estadoTela = telaFinal1;
    }
  }
}

void fimDeJogo2() {
  for (int i = 0; i < vetorBolinhas.length; i++) {
    if (comidaEstragada >= 30) {
      vetorBolinhas[i].x = -20;
      vetorBolinhas[i].y = -20;
      vetorBolinhas[i].z = 0;
      xBola = width/2;
      yBola = 450;
      estadoTela = telaFinal2;
    }
  }
}

void cenario() {
  fill(255);
  textSize(20);
  text("Pontos do Jogador: "+pontos, 5, 20);
  text("Comida estragada consumida: "+comidaEstragada, 520, 20);
}
