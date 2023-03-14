void interage() {
  //Estado semNada > Estado ingrediente
  if (estadoPersonagem == esquerdaPers && estadoComida == semNada) {
    mostraPrato = false;
    if (xJogador >= 100 && xJogador <= 150 && yJogador >= 250 && yJogador <= 400) {
      if (keyPressed == true) {
        if (key == ' ') {
          comidaEntregue = false;
          estadoComida = ingrediente;
        }
      }
    }
  }
  //Estado ingrediente > Estado ingredienteCortado
  if (estadoPersonagem == cimaPers && estadoComida == ingrediente) {
    if (xJogador >= 250 && xJogador <= 400 && yJogador >= 60 && yJogador <= 150) {
      if (keyPressed == true) {
        if (key == ' ') {
          tempo++;
          cresceBarra();
          if (tempo >= 180) {
            estadoComida = ingredienteCortado;
            tempo = 0;
          }
          println("tempo de corte: "+tempo);
        }
      }
    }
    if (comidaRecusada == true) {
      estadoComida = semNada;
    }
  }
  //Estado ingredienteCortado > Estado comidaFeita
  if (estadoPersonagem == direitaPers && estadoComida == ingredienteCortado) {
    if (xJogador >= 600 && xJogador <= 700 && yJogador >= 150 && yJogador <= 300) {
      if (keyPressed == true) {
        if (key == ' ') {
          tempo++;
          cresceBarra();
          if (tempo >= 300) {
            estadoComida = comidaFeita;
            tempo = 0;
          }
          println("tempo de cozimento: "+tempo);
        }
      }
    }
    if (comidaRecusada == true) {
      estadoComida = semNada;
    }
  }
  //Estado comidaFeita > Estado pratoFeito
  if (estadoPersonagem == esquerdaPers && estadoComida == comidaFeita) {
    if (xJogador >= 100 && xJogador <= 120 && yJogador >= 150 && yJogador <= 300) {
      if (keySolta == true) {
        prato = true;
        keySolta = false;
      }
    }
    if (comidaRecusada == true) {
      estadoComida = semNada;
    }
  }
  if (estadoPersonagem == esquerdaPers && estadoComida == comidaFeita && prato == true) {
    if (xJogador >= 100 && xJogador <= 150 && yJogador >= 150 && yJogador <= 300) {
      if (keyPressed == true) {
        if (key == ' ') {
          estadoComida = pratoFeito;
          prato = false;
        }
      }
    }
    if (comidaRecusada == true) {
      estadoComida = semNada;
    }
  }
  if (estadoPersonagem == direitaPers && estadoComida == pratoFeito) {
    if (xJogador >= 600 && xJogador <= 700 && yJogador >= 250 && yJogador <= 400) {
      if (keyPressed == true) {
        if (key == ' ') {
          estadoComida = semNada;
          comidaEntregue = true;
          mostraPrato = true;
        }
      }
    }
  }
  if (comidaRecusada == true) {
    estadoComida = semNada;
  }
}

void keyReleased() {
  keySolta = true;
}

void cresceBarra() {
  if (barra == false)
    t+=1;
  if (estadoComida == ingrediente) {
    text("Tempo de corte: ", 300, 425);
    rect(300, 440, t, 20);
    if (t==180) {
      barra = true;
      t=0;
      barra = false;
    }
  }
  barra = false;
  if (estadoComida == ingredienteCortado) {
    text("Tempo de cozimento: ", 250, 425);
    rect(250, 440, t, 20);
    if (t==300) {
      barra = true;
      t=0;
      barra = false;
    }
  }
}

void tempoDeJogo() {
  if (estadoTela == telaJogo) {
    if (barra2 == false) {
      tempoJogo+=0.050;
    }
    if (tempoJogo == 7200) {
      barra2 = true;
      tempoJogo = 0;
      barra2 = false;
    }
  }
  fill(20, 65, 60);
  //textSize(25);
  text("Tempo da Partida: ", 510, 40);
  arc(760, 30, 50, 50, radians(0), radians(tempoJogo));
}
