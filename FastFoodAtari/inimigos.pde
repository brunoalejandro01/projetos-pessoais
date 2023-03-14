void mostraInimigos() {
  // GERA A POSIÇÃO DOS INIMIGOS DE FORMA ALEATÓRIA E ADICIONA O VALOR EM UM VETOR
  for (int i = 0; i < vetorInimigos.length; i++) {
    inimigos = new PVector(-40, random(30, 575), int(random(3, 6)));
    vetorInimigos[i] = inimigos;
  }
}

void geraInimigos() {
  // RENDERIZA OS INIMIGOS NA TELA
  for (int i = 0; i < vetorInimigos.length; i++) {
    noStroke();
    fill(#AD1CFC);
    circle(vetorInimigos[i].x, vetorInimigos[i].y, diametroComida);
  }

  // FAZ OS INIMIGOS ANDAREM
  for (int i = 0; i < vetorInimigos.length; i++) {
    vetorInimigos[i].x += vetorBolinhas[i].z;
  }
}

void colisao2() {
  // AO PERCORRER O VETOR DE INIMIGOS É GERADO UMA DISTANCIA
  for (int i = 0; i < vetorInimigos.length; i++) {
    d = dist(vetorInimigos[i].x, vetorInimigos[i].y, xBola, yBola);

    // VALIDA SE A DISTANCIA ESTÁ MENOR QUE O DIAMENTRO
    if (d <= 42.5) {
      vetorInimigos[i].x = -40;
      vetorInimigos[i].y = random(30, 575);
      vetorInimigos[i].z = int(random(3, 6));
      comidaEstragada++;
    }
  }
  for (int i = 0; i < vetorInimigos.length; i++) {
    if (vetorInimigos[i].x >= 800) {
      vetorInimigos[i].x = -40;
      vetorInimigos[i].y = random(30, 575);
      vetorInimigos[i].z = int(random(3, 6));
    }
  }
}
