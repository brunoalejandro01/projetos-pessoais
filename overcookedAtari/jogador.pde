void desenhaJogador() {
  if (estadoPersonagem == cimaPers) {
    image(imgCima, xJogador, yJogador, 60, 100);
    if (estadoComida == ingrediente) {
      image(imgCimaCarne, xJogador, yJogador, 60, 100);
    }
    if (estadoComida == pratoFeito) {
      image(imgCimaHamb, xJogador, yJogador, 60, 100);
    }
  }
  if (estadoPersonagem == baixoPers) {
    image(imgBaixo, xJogador, yJogador, 60, 100);
    if (estadoComida == ingrediente) {
      image(imgBaixoCarne, xJogador, yJogador, 60, 100);
    }
    if (estadoComida == pratoFeito) {
      image(imgBaixoHamb, xJogador, yJogador, 60, 100);
    }
  }
  if (estadoPersonagem == esquerdaPers) {
    image(imgEsquerda, xJogador, yJogador, 60, 100);
    if (estadoComida == ingrediente) {
      image(imgEsquerdaCarne, xJogador, yJogador, 60, 100);
    }
    if (estadoComida == pratoFeito) {
      image(imgEsquerdaHamb, xJogador, yJogador, 60, 100);
    }
  }
  if (estadoPersonagem == direitaPers) {
    image(imgDireita, xJogador, yJogador, 60, 100);
    if (estadoComida == ingrediente) {
      image(imgDireitaCarne, xJogador, yJogador, 60, 100);
    }
    if (estadoComida == pratoFeito) {
      image(imgDireitaHamb, xJogador, yJogador, 60, 100);
    }
  }
}


void moveJogador() {
  if (estadoPersonagem == cimaPers) {
    if (keyPressed == true) {
      if (keyCode == DOWN) {
        yJogador += 6;
        estadoPersonagem = baixoPers;
      }
      if (keyCode == UP) {
        yJogador -= 6;
        estadoPersonagem = cimaPers;
      }
      if (keyCode == LEFT) {
        xJogador -= 6;
        estadoPersonagem = esquerdaPers;
      }
      if (keyCode == RIGHT) {
        xJogador += 6;
        estadoPersonagem = direitaPers;
      }
    }
  }
  if (estadoPersonagem == baixoPers) {
    if (keyPressed == true) {
      if (keyCode == DOWN) {
        yJogador += 6;
        estadoPersonagem = baixoPers;
      }
      if (keyCode == UP) {
        yJogador -= 6;
        estadoPersonagem = cimaPers;
      }
      if (keyCode == LEFT) {
        xJogador -= 6;
        estadoPersonagem = esquerdaPers;
      }
      if (keyCode == RIGHT) {
        xJogador += 6;
        estadoPersonagem = direitaPers;
      }
    }
  }
  if (estadoPersonagem == esquerdaPers) {
    if (keyPressed == true) {
      if (keyCode == DOWN) {
        yJogador += 6;
        estadoPersonagem = baixoPers;
      }
      if (keyCode == UP) {
        yJogador -= 6;
        estadoPersonagem = cimaPers;
      }
      if (keyCode == LEFT) {
        xJogador -= 6;
        estadoPersonagem = esquerdaPers;
      }
      if (keyCode == RIGHT) {
        xJogador += 6;
        estadoPersonagem = direitaPers;
      }
    }
  }
  if (estadoPersonagem == direitaPers) {
    if (keyPressed == true) {
      if (keyCode == DOWN) {
        yJogador += 6;
        estadoPersonagem = baixoPers;
      }
      if (keyCode == UP) {
        yJogador -= 6;
        estadoPersonagem = cimaPers;
      }
      if (keyCode == LEFT) {
        xJogador -= 6;
        estadoPersonagem = esquerdaPers;
      }
      if (keyCode == RIGHT) {
        xJogador += 6;
        estadoPersonagem = direitaPers;
      }
    }
  }
}

void limitesJogador() {
  if (xJogador <= 100) {
    xJogador = 100;
  }
  if (xJogador >= 640) {
    xJogador = 640;
  }
  if (yJogador <= 60) {
    yJogador = 60;
  }
  if (yJogador >= 300) {
    yJogador = 300;
  }
}
