void oscEvent(OscMessage m) {
  if (m.addrPattern().equals("/movimiento")) {
    movimiento = m.get(0).floatValue();
  }
}

void contactStarted(FContact contacto)
{
  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre1(cuerpo1);

  String nombre2 = conseguirNombre1(cuerpo2);


  puntos(nombre1, nombre2);

  if (nombre1 == "pelota" || nombre2 == "pelota" && nombre1 == "canasto" || nombre2 == "canasto") {
    rebote.play();
  }
}

String conseguirNombre1(FBody cuerpo1) {
  String nombre = "nada";

  if (cuerpo1 != null) {
    nombre = cuerpo1.getName();

    if (nombre == null) {
      nombre = "nada";
    }
  }
  return nombre;
}

String conseguirNombre2(FBody cuerpo2) {
  String nombre = "nada";

  if (cuerpo2 != null) {
    nombre = cuerpo2.getName();

    if (nombre == null) {
      nombre = "nada";
    }
  }
  return nombre;
}

void puntos(String nombre1, String nombre2) {
  if (nombre1 == "pelota" && nombre2 == "canasto") {
    nombre1ant = nombre1;
    nombre2ant = nombre2;
  }
  if (nombre2 == "pelota" && nombre1 == "canasto") {
    nombre1ant = nombre1;
    nombre2ant = nombre2;
  }

  if (nombre1ant != "canasto" && nombre2ant != "canasto") {
    if (nombre1 == "pelota" && nombre2 == "entro" && canasta == false) {
      puntos = puntos+3;
      canasta3.play();
      threepoint.play();
      canasta = true;
    }
    if (nombre2 == "pelota" && nombre1 == "entro" && canasta == false) {
      puntos = puntos+3;
      canasta3.play();
      threepoint.play();
      canasta = true;
    }
  } else if (nombre1ant == "canasto" || nombre2ant == "canasto" && canasta == false) {
    if (nombre1 == "pelota" && nombre2 == "entro") {
      puntos = puntos+2;
      canasta3.play();
      twopoint.play();
      canasta = true;
    }
    if (nombre2 == "pelota" && nombre1 == "entro" && canasta == false) {
      puntos = puntos+2;
      canasta3.play();
      twopoint.play();
      canasta = true;
    }
  }
  if (nombre1 == "pelota" && nombre2 == "cancha") {
    rebote.play();
    rebotes++;
  }
  if (nombre1 == "cancha" && nombre2 == "pelota") {
    rebote.play();
    rebotes++;
  }
  if (puntos >= 15) {
    ganaste.play();
  }
}

void reloj() {
  fill(255, 0, 0);
  textFont(fuente2);
  textSize(40);
  minutoss = nf(minutos, 2);
  segundoss = nf(segundos, 2);
  text(minutoss, width/2 + 5, 86);
  text(":", width/2 + 53, 86);
  text(segundoss, width/2 + 70, 86);
  if (frameCount % 60 == 0 && segundos >= 1) {
    segundos--;
    if (segundos == 0) {
      if (minutos >= 1) {
        segundos = 59;
      }
      if (minutos > 0) {
        minutos--;
      }
    }
  }
  if ( minutos == 0 && segundos == 0) {
    tiempo = 0;
    pantalla = 3;
    perdiste.play();
    ambiente.stop();
    ruido.stop();
    pajaros.stop();
  }
}

void botones() {
  if (mouseX > 0 && mouseX < 235 && mouseY > 235 && mouseY < 307 && pantalla == 1) {
    bordes();
    pj2();
    pantalla = 2;
    paso = 1;
    musica.stop();
    ambiente.loop();
    ruido.loop();
    pajaros.loop();
  }
}

void reset() {
  mundo.remove(borde3);
  mundo.remove(pj2);
  pantalla = 1;
  minutos = 1;
  segundos = 59;
  puntos = 0;
  rebotes = 0;
  lvlsalto = 0;
  tiempo = 0;
  posicionY = 480;
  potencia = false;
  perdiste.stop();
  ganaste.stop();
  musica.play();
}
