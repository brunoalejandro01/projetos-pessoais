void tempo() {
  if (estadoTela == telaJogo) {
    tempoGeral++;
    if (tempoGeral >= 7200) {
      estadoTela = telaFinal;
      tempoGeral = 0;
    }
  }
}

void pedidoMef() {
  if (estadoPedido == pedidoNeutro) {
    tempoExistir = 230;
    if (tempoExistir >= 230) {
      estadoPedido = pedido0;
    }
  }
  if (estadoPedido == pedido0) {
    tempoExistir++;
    if (tempoExistir >= 3*60) {
      comidaRecusada = false;
      tempoPedido++;
      pedido();
      if (comidaEntregue == true) {
        entregaPositiva++;
        comidaEntregue = false;
        estadoPedido = pedido1;
        tempoPedido = 0;
        tempoExistir = 0;
      } else if (tempoPedido >= 60*int(random(18, 21))) {
        entregaNegativa++;
        comidaRecusada = true;
        tempoExistir = 0;
        estadoPedido = pedido1;
        tempoPedido = 0;
        tempoExistir = 0;
      }
    }
  }
  if (estadoPedido == pedido1) {
    tempoExistir++;
    if (tempoExistir >= 3*60) {
      comidaRecusada = false;
      tempoPedido++;
      pedido();
      if (comidaEntregue == true) {
        entregaPositiva++;
        comidaEntregue = false;
        estadoPedido = pedido0;
        tempoPedido = 0;
        tempoExistir = 0;
      } else if (tempoPedido > 60*int(random(18, 21))) {
        entregaNegativa++;
        comidaRecusada = true;
        tempoExistir = 0;
        estadoPedido = pedido0;
        tempoPedido = 0;
        tempoExistir = 0;
      }
    }
  }
}

void pedido() {
  fill(215, 34, 98);
  rect(0, 525, 250, 100);
  fill(160, 100, 0);
  textSize(20);
  text("Novo Pedido: ", 10, 550);
  image(hamburguer, 155, 512, 100, 100);
}

void contadorDePedidos() {
textSize(20);
  fill(100, 100, 0);
  textFont(fPixel);
  text("Pedidos Entregues: " + entregaPositiva, 530, 550);
  text("Pedidos Perdidos: " + entregaNegativa, 530, 580);
}
