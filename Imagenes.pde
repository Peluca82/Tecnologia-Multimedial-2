void imagenes() {
  creditos = loadImage("fondos/creditos.png");
  fondoCreditos = loadImage("fondos/fondoCreditos.png");
  pelota = loadImage("Elementos/pelota.png");
  cancha = loadImage("Fondos/fondo.png");
  aro = loadImage("Elementos/aro.png");
  cartel = loadImage("Elementos/cartel.png");
  flecha = loadImage("Elementos/flecha.png");
  for (int i = 0; i < 3; i++) {
    String nombre = "personajes/pj1movimiento" + i + ".png";
    imagenespj1[i] = loadImage(nombre);
  }
  for (int i = 0; i < 2; i++) {
    String nombre = "personajes/pj2movimiento" + i + ".png";
    imagenespj2[i] = loadImage(nombre);
  }
  for (int i = 0; i < 3; i++) {
    String nombre = "Fondos/inicio" + i + ".png";
    imagenesinicio[i] = loadImage(nombre);
  }
  for (int i = 0; i < 2; i++) {
    String nombre = "fondos/ganaste" + i + ".png";
    imagenesganaste[i] = loadImage(nombre);
  }
  for (int i = 0; i < 2; i++) {
    String nombre = "fondos/perdiste" + i + ".png";
    imagenesperdiste[i] = loadImage(nombre);
  }
  for (int i = 0; i < 6; i++) {
    String nombre = "barra/barra" + i + ".png";
    imagenesbarra[i] = loadImage(nombre);
  }
    for (int i = 0; i < 3; i++) {
    String nombre = "Elementos/mano" + i + ".png";
    imagenesmano[i] = loadImage(nombre);
  }
}
