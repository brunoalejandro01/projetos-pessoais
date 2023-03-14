int diametroPersonagem = 50, diametroComida = 35, diametroPowerUp = 15;
int pontos, comidaEstragada, tempoSurgimento1 = 0, tempoSurgimento2 = 0, tempoPowerUp1 = 0, tempoPowerUp2;

float xBola, yBola;
float d;
float speedX, speedY, speedXPU1, speedYPU1, speedXPU2, speedYPU2;

PVector [] vetorBolinhas = new PVector[6];
PVector [] vetorInimigos = new PVector[6];

PVector [] vetorBolinhaPowerUp1 = new PVector[2];
PVector [] vetorBolinhaPowerUp2 = new PVector[2];

PVector [] vetorPowerUp1 = new PVector[9];
PVector [] vetorPowerUp11 = new PVector[3];
PVector [] vetorPowerUp2 = new PVector[3];
PVector [] vetorPowerUp21 = new PVector[9];

PVector bolinhas, inimigos, bolinhaPowerUp1, bolinhaPowerUp2, powerUp1, powerUp11, powerUp2, powerUp21;

final int menu = 0, telaJogo = 1, telaJogo2 = 2, telaJogo3 = 3, tutorial = 4, telaFinal1 = 5, telaFinal2 = 6;
int estadoTela = 0;

PImage telaInicial, telaTutorial, telaF1, telaF2;

void setup() {
  size(800, 600);

  xBola = width-50;
  yBola = height/2;
  speedY = 4;
  speedX = 4;
  speedXPU1 = 8;
  speedYPU1 = 8;
  speedXPU2 = 6;
  speedYPU2 = 6;

  pontos = 0;
  comidaEstragada = 0;

  mostraComidas();
  mostraInimigos();
  
  mostraBolinhaPowerUp1();
  mostraBolinhaPowerUp2();
  
  mostraPowerUp1();
  mostraPowerUp11();
  mostraPowerUp2();
  mostraPowerUp21();
}

void draw() {
  background(0);
  noStroke();

  telas();
  print("tempo Power UP1: ", tempoPowerUp1);
  println();
  print("tempo Power UP2: ", tempoPowerUp2);
  println();
  println("tempoSurgimento: ", tempoSurgimento1);
  println("tempoSurgimento: ", tempoSurgimento2);
  println("Estado Tela: ", estadoTela);
}

void mostraComidas() {
  // GERA A POSIÇÃO DAS COMIDAS DE FORMA ALEATÓRIA E ADICIONA O VALOR EM UM VETOR
  for (int i = 0; i < vetorBolinhas.length; i++) {
    bolinhas = new PVector(-40, random(30, 575), int(random(3, 6)));
    vetorBolinhas[i] = bolinhas;
  }
}

void comidas() {
  // RENDERIZA AS COMIDAS NA TELA
  for (int i = 0; i < vetorBolinhas.length; i++) {
    fill(255);
    circle(vetorBolinhas[i].x, vetorBolinhas[i].y, diametroComida);
  }

  // FAZ AS COMIDAS ANDAREM NA TELA
  for (int i = 0; i < vetorBolinhas.length; i++) {
    vetorBolinhas[i].x += vetorBolinhas[i].z;
  }
}

void colisao() {
  // AO PERCORRER O VETOR DE BOLINHAS É GERADO UMA DISTANCIA
  for (int i = 0; i < vetorBolinhas.length; i++) {
    d = dist(vetorBolinhas[i].x, vetorBolinhas[i].y, xBola, yBola);

    // VALIDA SE A DISTANCIA ESTÁ MENOR/IGUAL QUE O DIAMETRO
    if (d <= 42.5) {
      vetorBolinhas[i].x = -40;
      vetorBolinhas[i].y = random(30, 575);
      vetorBolinhas[i].z = int(random(3, 6));
      pontos++;
    }
  }
  for (int i = 0; i < vetorBolinhas.length; i++) {
    if (vetorBolinhas[i].x >= 800) {
      vetorBolinhas[i].x = -40;
      vetorBolinhas[i].y = random(30, 575);
      vetorBolinhas[i].z = int(random(3, 6));
    }
  }
}

void zeraJogo() {
  pontos = 0;
  comidaEstragada = 0;
  xBola = width-50;
  yBola = height/2;
  tempoSurgimento1 = 0;
  tempoSurgimento2 = 0;
  tempoPowerUp1 = 0;
  tempoPowerUp2 = 0;

  for (int i = 0; i < vetorBolinhas.length; i++) {
    bolinhas = new PVector(-40, random(30, 575), int(random(3, 6)));
    vetorBolinhas[i] = bolinhas;
  }
  for (int i = 0; i < vetorInimigos.length; i++) {
    inimigos = new PVector(-40, random(30, 575), int(random(3, 6)));
    vetorInimigos[i] = inimigos;
  }
  
  //COMIDAS E INIMIGOS POWER UP
  //POWER UP 1
  for (int i = 0; i < vetorPowerUp1.length; i++) {
    powerUp1 = new PVector(-40, random(30, 575), int(random(4, 8)));
    vetorPowerUp1[i] = powerUp1;
  }
  for (int i = 0; i < vetorPowerUp11.length; i++) {
    powerUp11 = new PVector(-40, random(30, 575), 3);
    vetorPowerUp11[i] = powerUp11;
  }
  //POWER UP 2
  for (int i = 0; i < vetorPowerUp2.length; i++) {
    powerUp2 = new PVector(-40, random(30, 575), 3);
    vetorPowerUp2[i] = powerUp2;
  }
  for (int i = 0; i < vetorPowerUp21.length; i++) {
    powerUp21 = new PVector(-40, random(30, 575), int(random(4, 8)));
    vetorPowerUp21[i] = powerUp21;
  }
  
  //BOLINHAS POWER UP
  for (int i = 0; i < vetorBolinhaPowerUp1.length; i++) {
    bolinhaPowerUp1 = new PVector(random(-2000, -1000), random(30, 575), 13);
    vetorBolinhaPowerUp1[i] = bolinhaPowerUp1;
  }
  for (int i = 0; i < vetorBolinhaPowerUp2.length; i++) {
    bolinhaPowerUp2 = new PVector(random(-2000, -1000), random(20, 575), 13);
    vetorBolinhaPowerUp2[i] = bolinhaPowerUp2;
  }
}
