void pantalla1() {
  if (pantalla == 1) {
    if (frameCount % 15 == 0) {
      frames[0]++;
    }
    if (frames[0] > 2) {
      frames[0] = 0;
    }
    image(imagenesinicio[frames[0]], 0, 0);
    if (frameCount % 15 == 0) {
      frames[6]++;
    }
    if (frames[6] > 2) {
      frames[6] = 0;
    }
    image(imagenesmano[frames[6]], 0, 0);
    if (movimiento >= 0.25 && paso == 0) {
      tiempo = 0;
      bordes();
      pj2();
      paso = 1;
      pantalla = 2;
      musica.stop();
      ambiente.loop();
      ruido.loop();
      pajaros.loop();
    }
  }
  println(movimiento);
  println(paso);
}

void pantalla2() {
  if (pantalla == 2) {
    punto = nf(puntos, 2);
    fill(255);
    image(cancha, 0, 0);
    image(cartel, 0, 0);
    mundo.step();
    mundo.draw();
    textFont(fuente2);
    textSize(40);
    text(punto, 225, 86);
    textFont(fuente);
    textSize(30);
    image(aro, 0, 0);
    pelotaa.actualizar();
    pelotaa.dibujar();

    if (tiempo >= 60) {
      tiempopaso = true;
    } else {
      tiempopaso = false;
    }

    if (tiempopaso == true && movimiento >= 0.25 && paso == 1) {
      tiempo = 0;
      potencia = true;
      image(imagenesbarra[frames[5]], -200, 50);
      paso = 2;
    }

    if (tiempo >= 60) {
      tiempopaso = true;
    } else {
      tiempopaso = false;
    }

    if (tiempopaso == true && movimiento >= 0.25 && paso == 2) {
      pelotaa.disparar(barrafuerza);
      tiempo = 0;
    }

    if (potencia == false) {
      if (frameCount % 12 == 0) {
        frames[5]++;
      }
      if (frames[5] > 5) {
        frames[5] = 0;
      }
      barrafuerza = fuerza[frames[5]];
      image(imagenesbarra[frames[5]], -200, 50);
    }
    image(imagenesbarra[frames[5]], -200, 50);

    if (frameCount % 20 == 0) {
      frames[1]++;
    }
    if (frames[1] > 2) {
      frames[1] = 0;
    }
    image(imagenespj1[frames[1]], 0, 0);

    if (frameCount % 20 == 0) {
      frames[2]++;
    }
    if (frames[2] > 1) {
      frames[2] = 0;
    }
    pj2.attachImage(imagenespj2[frames[2]]);

    reloj();

    if (puntos >= 15) {
      ambiente.stop();
      ruido.stop();
      pajaros.stop();
      pantalla = 4;
      tiempo = 0;
    }

    if (frameCount % 180 == 0 && pantalla == 2) {
      pj2.addImpulse(0, salto);
    }

    if (frameCount % 600 == 0 && lvlsalto < 3 && pantalla == 2) {
      salto = salto - 50000;
      lvlsalto++;
    }

    movimientoant = movimiento;
    pelotaa.actualizar();
    tiempo++;
  }
}

void pantalla3() {
  if (pantalla == 3) {

    if (frameCount % 20 == 0) {
      frames[3]++;
    }
    if (frames[3] > 1) {
      frames[3] = 0;
    }
    image(imagenesperdiste[frames[3]], 0, 0);
    if (tiempo >= 300) {
      pantalla = 5;
    }
    tiempo++;
  }
}

void pantalla4() {
  if (pantalla == 4) {
    if (frameCount % 20 == 0) {
      frames[4]++;
    }
    if (frames[4] > 1) {
      frames[4] = 0;
    }
    image(imagenesganaste[frames[4]], 0, 0);
    if (tiempo >= 300) {
      pantalla = 5;
    }
    tiempo++;
  }
}

void pantalla5() {
  if (pantalla == 5) {
    puntos = 0;
    image(fondoCreditos, 0, 0);
    image(creditos, 0, posicionY);
    posicionY--;
    if (posicionY == -500) {
      reset();
    }
  }
}
