//pedra = 0
//papel = 1
//tesoura = 2
//lagarto = 3
//spock = 4
int escJogador;
int escMaquina;
PImage imgP, imgPP, imgT, imgL, imgS;
void setup() {
  size(500, 400);
  background(74, 232, 245);
  escJogador = 2; //digite aqui a sua escolha
  escMaquina = int(random(0, 4));
  imgP = loadImage("pedra.jpg");
  imgPP = loadImage("papel.jpg");
  imgT = loadImage("tesoura.jpg");
  imgL = loadImage("lagarto.jpg");
  imgS = loadImage("Spock.jpg");
}
void draw() {
  textSize(20);
  text("Bem vindo ao pedra, papel, tesoura, lagarto, Spock", 40, 50);
  text("Resultado da partida:", 150, 100);
  if (escJogador == 0 && escMaquina == 0) {
    text("Ambas as escolhas foram iguais, empate", 100, 150);
    text("Sua escolha: pedra", 10, 320);
    text("Escolha do computador: pedra", 230, 320);
    image(imgP, 100, 190, 100, 100);
    image(imgP, 300, 190, 100, 100);
  }
  if (escJogador == 0 && escMaquina == 1) {
    text("Papel cobre a pedra, você perdeu", 100, 150);
    text("Sua escolha: pedra", 10, 320);
    text("Escolha do computador: papel", 230, 320);
    image(imgP, 100, 190, 100, 100);
    image(imgPP, 300, 190, 100, 100);
  }
  if (escJogador == 0 && escMaquina == 2) {
    text("A pedra quebra a tesoura, você venceu!", 100, 150);
    text("Sua escolha: pedra", 10, 320);
    text("Escolha do computador: tesoura", 230, 320);
    image(imgP, 100, 190, 100, 100);
    image(imgT, 300, 190, 100, 100);
  }
  if (escJogador == 0 && escMaquina == 3) {
    text("A pedra esmaga o lagarto, você venceu!", 100, 150);
    text("Sua escolha: pedra", 10, 320);
    text("Escolha do computador: lagarto", 230, 320);
    image(imgP, 100, 190, 100, 100);
    image(imgL, 300, 190, 100, 100);
  }
  if (escJogador == 0 && escMaquina == 4) {
    text("O Spock vaporiza a pedra, você perdeu", 100, 150);
    text("Sua escolha: pedra", 10, 320);
    text("Escolha do computador: Spock", 230, 320);
    image(imgP, 100, 190, 100, 100);
    image(imgS, 300, 190, 100, 100);
  }
  if (escJogador == 1 && escMaquina == 0) {
    text("papel cobre a pedra, você venceu!", 100, 150);
    text("sua escolha: papel", 10, 320);
    text("escolha do computador: pedra", 230, 320);
    image(imgPP, 100, 200, 100, 100);
    image(imgP, 300, 200, 100, 100);
  }
  if (escJogador == 1 && escMaquina == 1) {
    text("ambos as escolhas foram iguais, empate", 100, 150);
    text("sua escolha: papel", 10, 320);
    text("escolha do computador: papel", 230, 320);
    image(imgPP, 100, 200, 100, 100);
    image(imgPP, 300, 200, 100, 100);
  }
  if (escJogador == 1 && escMaquina == 2) {
    text("a tesoura corta o papel, você perdeu", 100, 150);
    text("sua escolha: papel", 10, 320);
    text("escolha do computador: tesoura", 230, 320);
    image(imgPP, 100, 200, 100, 100);
    image(imgT, 300, 200, 100, 100);
  }
  if (escJogador == 1 && escMaquina == 3) {
    text("o lagarto come o papel, você perdeu", 100, 150);
    text("sua escolha: papel", 10, 320);
    text("escolha do computador: lagarto", 230, 320);
    image(imgPP, 100, 200, 100, 100);
    image(imgL, 300, 200, 100, 100);
  }
  if (escJogador == 1 && escMaquina == 4) {
    text("o papel refuta o Spock,você venceu!", 100, 150);
    text("sua escolha: papel", 10, 320);
    text("escolha do computador: Spock", 230, 320);
    image(imgPP, 100, 200, 100, 100);
    image(imgS, 300, 200, 100, 100);
  }
  if (escJogador == 2 && escMaquina == 0) {
    text("a pedra quebra a tesoura, você perdeu", 100, 150);
    text("sua escolha: tesoura", 10, 320);
    text("escolha do computador: pedra", 230, 320);
    image(imgT, 100, 200, 100, 100);
    image(imgP, 300, 200, 100, 100);
  }
  if (escJogador == 2 && escMaquina == 1) {
    text("a tesoura corta o papel, você venceu!", 100, 150);
    text("sua escolha: tesoura", 10, 320);
    text("escolha do computador: papel", 230, 320);
    image(imgT, 100, 200, 100, 100);
    image(imgPP, 300, 200, 100, 100);
  }
  if (escJogador == 2 && escMaquina == 2) {
    text("ambas as escolhas foram iguais, empate", 100, 150);
    text("sua escolha: tesoura", 10, 320);
    text("escolha do computador: tesoura", 230, 320);
    image(imgT, 100, 200, 100, 100);
    image(imgT, 300, 200, 100, 100);
  }
  if (escJogador == 2 && escMaquina == 3) {
    text("a tesoura mata o lagarto, você venceu!", 100, 150);
    text("sua escolha: tesoura", 10, 320);
    text("escolha do computador: lagarto", 230, 320);
    image(imgT, 100, 200, 100, 100);
    image(imgL, 300, 200, 100, 100);
  }
  if (escJogador == 2 && escMaquina == 4) {
    text("o Spock quebra a tesoura, você perdeu", 100, 150);
    text("sua escolha: tesoura", 10, 320);
    text("escolha do computador: Spock", 230, 320);
    image(imgT, 100, 200, 100, 100);
    image(imgS, 300, 200, 100, 100);
  }
  if (escJogador == 3 && escMaquina == 0) {
    text("a pedra esmaga o lagarto, você perdeu", 100, 150);
    text("sua escolha: lagarto", 10, 320);
    text("escolha do computador: pedra", 230, 320);
    image(imgL, 100, 200, 100, 100);
    image(imgP, 300, 200, 100, 100);
  }
  if (escJogador == 3 && escMaquina == 1) {
    text("o lagarto come o papel, você ganhou!", 100, 150);
    text("sua escolha: lagarto", 10, 320);
    text("escolha do computador: papel", 230, 320);
    image(imgL, 100, 200, 100, 100);
    image(imgPP, 300, 200, 100, 100);
  }
  if (escJogador == 3 && escMaquina == 2) {
    text("a tesoura mata o lagarto, você perdeu", 100, 150);
    text("sua escolha: lagarto", 10, 320);
    text("escolha do computador: tesoura", 230, 320);
    image(imgL, 100, 200, 100, 100);
    image(imgT, 300, 200, 100, 100);
  }
  if (escJogador == 3 && escMaquina == 3) {
    text("ambas as escolhas foram iguais, empate", 100, 150);
    text("sua escolha: lagarto", 10, 320);
    text("escolha do computador: lagarto", 230, 320);
    image(imgL, 100, 200, 100, 100);
    image(imgL, 300, 200, 100, 100);
  }
  if (escJogador == 3 && escMaquina == 4) {
    text("o lagarto envenena o Spock, você venceu!", 100, 150);
    text("sua escolha: lagarto", 10, 320);
    text("escolha do computador: Spock", 230, 320);
    image(imgL, 100, 200, 100, 100);
    image(imgS, 300, 200, 100, 100);
  }
  if (escJogador == 4 && escMaquina == 0) {
    text("o Spock vaporiza a pedra, você venceu!", 100, 150);
    text("sua escolha: Spock", 10, 320);
    text("escolha do computador: pedra", 230, 320);
    image(imgS, 100, 200, 100, 100);
    image(imgP, 300, 200, 100, 100);
  }
  if (escJogador == 4 && escMaquina == 1) {
    text("o papel refuta o Spock, você perdeu", 100, 150);
    text("sua escolha: Spock", 10, 320);
    text("escolha do computador: papel", 230, 320);
    image(imgS, 100, 200, 100, 100);
    image(imgPP, 300, 200, 100, 100);
  }
  if (escJogador == 4 && escMaquina == 2) {
    text("o spock quebra a tesoura, você venceu!", 100, 150);
    text("sua escolha: Spock", 10, 320);
    text("escolha do computador: tesoura", 230, 320);
    image(imgS, 100, 200, 100, 100);
    image(imgT, 300, 200, 100, 100);
  }
  if (escJogador == 4 && escMaquina == 3) {
    text("o lagarto envenena o Spock, você perdeu", 100, 150);
    text("sua escolha: Spock", 10, 320);
    text("escolha do computador: lagarto", 230, 320);
    image(imgS, 100, 200, 100, 100);
    image(imgL, 300, 200, 100, 100);
  }
  if (escJogador == 4 && escMaquina == 4) {
    text("ambas as escolhas foram iguais, empate", 100, 150);
    text("sua escolha: Spock", 10, 320);
    text("escolha do computador: Spock", 230, 320);
    image(imgS, 100, 200, 100, 100);
    image(imgS, 300, 100, 100, 100);
  }
  text("Esse jogo foi criado por Bruno Alejandro", 80, 370);
}
