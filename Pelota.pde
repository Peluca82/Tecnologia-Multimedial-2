class Pelota extends FCircle {

  PImage imagen;
  boolean quieta = true;
  float x0 = width/2-100;
  float y0 = height/2+20;
  float angulo;
  float posX;
  float posY;

  Pelota() {
    super(40);
    imagen = loadImage("elementos/pelota.png");
    attachImage(imagen);
    setRestitution(0.9);
    setFriction(1);
    setDensity(1);
    setName("pelota");
    aquietar();
  }

  void aquietar() {
    if (pantalla == 2) {
      paso = 1;
    }
    quieta = true;
    setPosition(x0, y0);
    setStatic(true);
    potencia = false;
    canasta = false;
    nombre1ant = "";
    nombre2ant = "";
    frames[5] = 0;
    rebotes = 0;
    tiempo = 0;
  }

  void actualizar() {
    posX = getX();
    posY = getY();
    angulo = map(frameCount % 200, 0, 200, 0, radians(-90));
    if (quieta == false) {
      if (rebotes == 4) {
        aquietar();
      } else if ( posX < 0 || posX > 640) {
        aquietar();
      }
    }
    if (minutos == 0 && segundos == 0) {
      aquietar();
    }
  }


  void dibujar() {
    if (quieta == true && paso == 2) {
      push();
      imageMode(CORNERS);
      translate(getX(), getY());
      rotate (angulo - 0.7);
      stroke(255);
      image(flecha, 0, 0);
      pop();
    }
  }

  void disparar (float fuerza) {
    if (quieta == true) {
      quieta = false;
      setStatic(false);
      float dx = fuerza * cos(angulo);
      float dy = fuerza * sin(angulo);
      setVelocity(dx, dy);
    }
  }
}
