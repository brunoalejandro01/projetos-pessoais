//BOLINHA POWER UP 2
void mostraBolinhaPowerUp2() {
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    bolinhaPowerUp2 = new PVector(random(-2000, -1000), random(20, 575), 13);
    vetorBolinhaPowerUp2[i] = bolinhaPowerUp2;
  }
}

void bolinhaPU2() {
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    fill(#FF1F41);
    circle(vetorBolinhaPowerUp2[i].x, vetorBolinhaPowerUp2[i].y, diametroPowerUp);
  }
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    vetorBolinhaPowerUp2[i].x += vetorBolinhaPowerUp2[i].z;
  }
}

void colisaoBolinhaPU2() {
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    d = dist(vetorBolinhaPowerUp2[i].x, vetorBolinhaPowerUp2[i].y, xBola, yBola);

    if (d <= 32.5) {
      estadoTela = telaJogo3;
    }
  }
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    if (vetorBolinhaPowerUp2[i].x >= 800) {
      vetorBolinhaPowerUp2[i].x = random(-2000, -1000);
      vetorBolinhaPowerUp2[i].y = random(20, 575);
      vetorBolinhaPowerUp2[i].z = 13;
    }
  }
}


//COMIDAS POWER UP
void mostraPowerUp2() {
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    powerUp2 = new PVector(-40, random(30, 575), 3);
    vetorPowerUp2[i] = powerUp2;
  }
}

void comidasPU2() {
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    fill(255);
    circle(vetorPowerUp2[i].x, vetorPowerUp2[i].y, diametroComida);
  }
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    vetorPowerUp2[i].x += vetorPowerUp2[i].z;
  }
}

void colisaoPU2() {
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    d = dist(vetorPowerUp2[i].x, vetorPowerUp2[i].y, xBola, yBola);

    if (d <= 52.5) {
      vetorPowerUp2[i].x = -40;
      vetorPowerUp2[i].y = random(30, 575);
      vetorPowerUp2[i].z = 3;
      pontos++;
    }
  }
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    if (vetorPowerUp2[i].x >= 800) {
      vetorPowerUp2[i].x = -40;
      vetorPowerUp2[i].y = random(30, 575);
      vetorPowerUp2[i].z = 3;
    }
  }
}

//INIMIGOS POWERUP
void mostraPowerUp21() {
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    powerUp21 = new PVector(-40, random(30, 575), int(random(4, 8)));
    vetorPowerUp21[i] = powerUp21;
  }
}

void geraInimigosPU21() {
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    fill(#AD1CFC);
    circle(vetorPowerUp21[i].x, vetorPowerUp21[i].y, diametroComida);
  }
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    vetorPowerUp21[i].x += vetorPowerUp21[i].z;
  }
}

void colisaoPU21() {
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    d = dist(vetorPowerUp21[i].x, vetorPowerUp21[i].y, xBola, yBola);

    if (d <= 52.5) {
      vetorPowerUp21[i].x = -40;
      vetorPowerUp21[i].y = random(30, 575);
      vetorPowerUp21[i].z = int(random(4, 8));
      comidaEstragada+=2;
    }
  }
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    if (vetorPowerUp21[i].x >= 800) {
      vetorPowerUp21[i].x = -40;
      vetorPowerUp21[i].y = random(30, 575);
      vetorPowerUp21[i].z = int(random(4, 8));
    }
  }
}
