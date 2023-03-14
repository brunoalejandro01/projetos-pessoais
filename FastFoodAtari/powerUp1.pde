//BOLINHA POWER UP
void mostraBolinhaPowerUp1() {
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    bolinhaPowerUp1 = new PVector(random(-2000, -1000), random(20, 575), 13);
    vetorBolinhaPowerUp1[i] = bolinhaPowerUp1;
  }
}

void bolinhaPU1() {
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    fill(#FCF503);
    circle(vetorBolinhaPowerUp1[i].x, vetorBolinhaPowerUp1[i].y, diametroPowerUp);
  }
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    vetorBolinhaPowerUp1[i].x += vetorBolinhaPowerUp1[i].z;
  }
}


void colisaoBolinhaPU1() {
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    d = dist(vetorBolinhaPowerUp1[i].x, vetorBolinhaPowerUp1[i].y, xBola, yBola);

    if (d <= 32.5) {
      estadoTela = telaJogo2;
    }
  }
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    if (vetorBolinhaPowerUp1[i].x >= 800) {
      vetorBolinhaPowerUp1[i].x = random(-2000, -1000);
      vetorBolinhaPowerUp1[i].y = random(20, 575);
      vetorBolinhaPowerUp1[i].z = 13;
    }
  }
}

//COMIDAS POWER UP
void mostraPowerUp1() {
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    powerUp1 = new PVector(-40, random(30, 575), int(random(4, 8)));
    vetorPowerUp1[i] = powerUp1;
  }
}

void comidasPU1() {
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    fill(255);
    circle(vetorPowerUp1[i].x, vetorPowerUp1[i].y, diametroComida);
  }
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    vetorPowerUp1[i].x += vetorPowerUp1[i].z;
  }
}

void colisaoPU1() {
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    d = dist(vetorPowerUp1[i].x, vetorPowerUp1[i].y, xBola, yBola);

    if (d <= 52.5) {
      vetorPowerUp1[i].x = -40;
      vetorPowerUp1[i].y = random(30, 575);
      vetorPowerUp1[i].z = int(random(4, 8));
      pontos+=2;
    }
  }
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    if (vetorPowerUp1[i].x >= 800) {
      vetorPowerUp1[i].x = -40;
      vetorPowerUp1[i].y = random(30, 575);
      vetorPowerUp1[i].z = int(random(4, 8));
    }
  }
}


//INIMIGOS POWERUP
void mostraPowerUp11() {
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    powerUp11 = new PVector(-40, random(30, 575), 3);
    vetorPowerUp11[i] = powerUp11;
  }
}

void geraInimigosPU11() {
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    fill(#AD1CFC);
    circle(vetorPowerUp11[i].x, vetorPowerUp11[i].y, diametroComida);
  }
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    vetorPowerUp11[i].x += vetorPowerUp11[i].z;
  }
}

void colisaoPU11() {
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    d = dist(vetorPowerUp11[i].x, vetorPowerUp11[i].y, xBola, yBola);

    if (d <= 52.5) {
      vetorPowerUp11[i].x = -40;
      vetorPowerUp11[i].y = random(30, 575);
      vetorPowerUp11[i].z = 3;
      comidaEstragada++;
    }
  }
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    if (vetorPowerUp11[i].x >= 800) {
      vetorPowerUp11[i].x = -40;
      vetorPowerUp11[i].y = random(30, 575);
      vetorPowerUp11[i].z = 3;
    }
  }
}
