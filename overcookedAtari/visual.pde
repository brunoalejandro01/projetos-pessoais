void desenhaMapa() {
  //Topo das bancas
  background(30, 20, 100);
  for (int m = 0; m < 8; m++) {
    for (int p = 0; p < 6; p++) {
      switch(mapa[p][m]) {
      case 1:
        fill(35, 65, 100);
        rect(100*m, 100*p, 100, 100);
        break;
      case 2:
        fill(20, 65, 60);
        rect(100*m, 100*p, 15, 100);
        break;
      case 3:
        fill(20, 65, 60);
        rect(100*m+85, 100*p, 15, 100);
        break;
      case 4:
        fill(20, 65, 60);
        rect(100*m, 100*p, 15, 100);
        rect(100*m, 100*p, 100, 25);
        break;
      case 5:
        fill(20, 65, 60);
        rect(100*m, 100*p, 100, 25);
        rect(100*m+85, 100*p, 15, 100);
        break;
      case 6:
        fill(20, 65, 60);
        rect(100*m, 100*p, 100, 25);
        break;
      case 7:
        fill(220, 65, 60);
        rect(100*m+85, 100*p, 15, 100);
        break;
      case 8:
        image(imgFogaoDesligado, 100*m, 100*p);
        if (xJogador >= 600 && xJogador <= 700 && estadoPersonagem == direitaPers && estadoComida == ingredienteCortado && keyPressed == true) {
          if (key == ' ') {
            tempoMov++;
            if (estadoMov == mov1) {
              image(imgFogaoLigado, 100*m, 100*p);
              if (tempoMov >= 20) {
                tempoMov = 0;
                estadoMov = mov2;
              }
            }
            if (estadoMov == mov2) {
              image(imgFogaoLigado2, 100*m, 100*p);
              if (tempoMov >= 20) {
                tempoMov = 0;
                estadoMov = mov1;
              }
            }
          }
        }
        break;
      case 9:
        fill(315, 65, 50);
        rect(100*m+85, 100*p, 15, 100);
        break;
      case 10:
        tempoPlataforma++;
        if (estadoPlat == plat1) {
          image(img1, 100*m, 100*p);
          if (tempoPlataforma >= 30) {
            tempoPlataforma = 0;
            estadoPlat = plat2;
          }
        }
        if (estadoPlat == plat2) {
          image(img2, 100*m, 100*p);
          if (tempoPlataforma >= 30) {
            tempoPlataforma = 0;
            estadoPlat = plat1;
          }
        }
        if (mostraPrato == true && estadoPersonagem == direitaPers) {
          image(imgPratoCheio, 100*m, 100*p);
        }
        break;
      case 11:
        fill(35, 65, 100);
        rect(100*m, 100*p, 100, 100);
        break;
      case 12:
        fill(35, 65, 100);
        rect(100*m, 100*p, 100, 100);
        image(imgPratoVazio, 100*m, 100*p, 100, 100);
        if (prato == true) {
          image(imgPratoCheio, 100*m, 100*p);
        }
        break;
      case 13:
        fill(35, 65, 100);
        rect(100*m, 100*p, 100, 100);
        image(imgIngrediente, 100*m, 100*p, 100, 100);
        break;
      case 14:
        fill(35, 65, 100);
        rect(100*m, 100*p, 100, 100);
        image(imgTabua, 100*m, 100*p);
        if (yJogador >= 60 && yJogador <= 150 && estadoPersonagem == cimaPers && estadoComida == ingrediente && keyPressed == true) {
          if (key == ' ') {
            tempoMov++;
            if (estadoMov == mov1) {
              image(imgTabuaC, 100*m, 100*p, 100, 100);
              if (tempoMov >= 20) {
                tempoMov = 0;
                estadoMov = mov2;
              }
            }
            if (estadoMov == mov2) {
              image(imgTabuaCh, 100*m, 100*p, 100, 100);
              if (tempoMov >= 20) {
                tempoMov = 0;
                estadoMov = mov1;
              }
            }
          }
        }
        break;
      }
    }
  }
}

void setaGuia() {
  if (tempoExistir >= 60*3) {
    if (estadoComida == semNada) {
      image(setaEsquerda, 125, 325, 50, 50);
    }
    if (estadoComida == ingrediente) {
      image(setaCima, 325, 135, 50, 50);
    }
    if (estadoComida == ingredienteCortado) {
      image(setaDireita, 625, 230, 50, 50);
    }
    if (estadoComida == comidaFeita) {
      image(setaEsquerda, 125, 225, 50, 50);
    }
    if (estadoComida == pratoFeito) {
      image(setaDireita, 625, 325, 50, 50);
    }
  }
}

void desenhaImagens() {
  imgTabua = loadImage("tabuaCorte.png");
  imgPratoVazio = loadImage("pratoVazio.png");
  imgPratoCheio = loadImage("pratoCheio.png");
  imgFogaoDesligado = loadImage("fogaoDesligado.png");
  imgFogaoLigado = loadImage("fogaoLigado.png");
  imgFogaoLigado2 = loadImage("fogaoLigado2.png");
  img1Estrela = loadImage("tela1estrela.png");
  imgIngrediente = loadImage("ingrediente.png");
  img1 = loadImage("plataforma1.png");
  img2 = loadImage("plataforma2.png");
  telaFinal1 = loadImage("tela1estrela.png");
  telaFinal2 = loadImage("tela2estrelas.png");
  telaFinal3 = loadImage("tela3estrelas.png");
  imgCima = loadImage("pCima.png");
  imgBaixo = loadImage("pBaixo.png");
  imgEsquerda = loadImage("pEsquerda.png");
  imgDireita = loadImage("pDireita.png");
  imgTabuaC = loadImage("tabuaCorteCheia.png");
  imgTabuaCh = loadImage("tabuaCorteCheia2.png");
  setaEsquerda = loadImage("setaEsquerda.png");
  setaDireita = loadImage("setaDireita.png");
  setaCima = loadImage("setaCima.png");
  setaBaixo = loadImage("setaBaixo.png");
  hamburguer = loadImage("hamburguer.png");
  imgCimaCarne = loadImage("pCimaCarne.png");
  imgBaixoCarne = loadImage("pBaixoCarne.png");
  imgEsquerdaCarne = loadImage("pEsquerdaCarne.png");
  imgDireitaCarne = loadImage("pDireitaCarne.png");
  imgCimaHamb = loadImage("pCimaHamb.png");
  imgBaixoHamb = loadImage("pBaixoHamb.png");
  imgEsquerdaHamb = loadImage("pEsquerdaHamb.png");
  imgDireitaHamb = loadImage("pDireitaHamb.png");
}
