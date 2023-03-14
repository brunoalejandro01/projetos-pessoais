int [][] mapa = {
  {1, 1, 1, 14, 1, 1, 1, 1},
  {11, 4, 6, 6, 6, 6, 5, 1},
  {12, 2, 0, 0, 0, 0, 7, 8},
  {13, 2, 0, 0, 0, 0, 9, 10},
  {1, 1, 1, 1, 1, 1, 1, 1},
  {6, 6, 6, 6, 6, 6, 6, 6}
};
//Parâmetros tela
PImage imgMenu, imgTutorial, imgTerra, img1Estrela, imgIngrediente, img1, img2, telaFinal1, telaFinal2, telaFinal3;
final int menu = 0, telaJogo = 1, tutorial = 2, telaFinal = 3;
int estadoTela = 0;
//Parâmetros do Jogador
PImage imgCima, imgBaixo, imgEsquerda, imgDireita, imgCimaCarne, imgBaixoCarne, imgEsquerdaCarne, imgDireitaCarne, imgCimaHamb, imgBaixoHamb, imgEsquerdaHamb, imgDireitaHamb;
final int cimaPers = 0, baixoPers = 1, esquerdaPers = 2, direitaPers = 3;
int xJogador = 350, yJogador = 200;
int estadoPersonagem = baixoPers;
//Parâmetros da interação
final int semNada = 0, ingrediente = 1, ingredienteCortado = 2, comidaFeita = 3, pratoFeito = 4;
int tempo = 0;
int estadoComida = 0;
boolean prato, keySolta;
//Parâmetros do Jogo
int tempoGeral = 0;
//Parâmetros dos Pedidos
final int pedido0 = 0, pedido1 = 1, pedidoNeutro = 2;
int estadoPedido = pedidoNeutro;
boolean comidaEntregue, comidaRecusada;
int tempoPedido = 0, tempoExistir = 0, entregaPositiva = 0, entregaNegativa = 0;
//Parâmetros Visuais
PImage imgTabua, imgTabuaC, imgTabuaCh, imgPratoVazio, imgPratoCheio, imgFogaoDesligado, imgFogaoLigado, imgFogaoLigado2, setaEsquerda, setaDireita, setaCima, setaBaixo, hamburguer;
PFont fPixel;
final int plat1 = 1, plat2 = 2, mov1 = 1, mov2 = 2;
int tempoPlataforma, estadoPlat = plat1, tempoMov, estadoMov = mov1;
float tempoJogo = 0, t = 0;
boolean mostraPrato, barra, barra2;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  desenhaImagens();
  fPixel = createFont("slkscr.ttf", 20);
}

void draw() {
  println("T: ", t);
  //println(" EntregaPositiva: ", entregaPositiva, "|| EntregaNegativa: ", entregaNegativa, "|| EstadoPedido: ", estadoPedido, "|| EstadoComida: ", estadoComida, "|| Entregue? ", comidaEntregue, "|| estadoTela: ", estadoTela);
  telas();
  tempo();
}

void zeraCoisas() {
  estadoPedido = pedidoNeutro;
  tempoPedido = 0;
  entregaPositiva = 0;
  entregaNegativa = 0;
}
