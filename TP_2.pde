//agregar sonidos de salto, pajaros y sonidos de calle o gente jugando         LISTO
//sacar el boton de creditos y ponerlo luego de ganaste y perdiste             LISTO
//cambiar la linea del angulo de la pelota y ponerle una flecha                LISTO
//poner una imagen para indicar q para comenzar a jugar hay q mover la mano    LISTO

import processing.sound.*;
import fisica.*;
import oscP5.*;

OscP5 osc;

FWorld mundo;

Pelota pelotaa;

FBox pj2;

FLine borde3;

SoundFile musica, canasta3, rebote, threepoint, twopoint, ganaste, perdiste, ruido, ambiente, pajaros;

PImage imagenespj1 [] = new PImage [3];

PImage imagenespj2 [] = new PImage [2];

PImage imagenesinicio [] = new PImage [3];

PImage imagenesganaste [] = new PImage [2];

PImage imagenesperdiste [] = new PImage [2];

PImage imagenesbarra [] = new PImage [6];

PImage imagenesmano [] = new PImage [3];

int frames [] = new int [7];

int fuerza [] = new int [6];

PImage cancha, pelota, aro, cartel, creditos, fondoCreditos, flecha;

PFont fuente, fuente2;

int puntos = 0, minutos = 0, segundos = 59, pantalla = 1, rebotes = 0, paso = 0, barrafuerza, posicionY = 480, lvlsalto = 0, tiempo = 0;

String nombre1ant, nombre2ant, segundoss, minutoss, punto;

float movimiento = 0, movimientoant = 0;

boolean potencia = false, canasta = false, tiempopaso = true;

long salto = -150000;

void setup() {
  size(640, 480);

  osc = new OscP5(this, 12345);

  Fisica.init(this);
  mundo = new FWorld();
  mundo.setGravity(0, 1250);

  sonidos();
  imagenes();

  fuente = createFont("Tipografias/VCR_OSD_MONO.ttf", 40);
  fuente2 = createFont("Tipografias/DS-DIGI.TTF", 60);

  textFont(fuente);

  for (int i = 0; i > 6; i++) {
    frames[i] = 0;
  }

  for (int i = 0; i < 6; i++) {
    fuerza[i] = 225*i;
  }

  pelotaa = new Pelota();
  mundo.add(pelotaa);
}

void draw() {
  pantalla1();
  pantalla2();
  pantalla3();
  pantalla4();
  pantalla5();
}

void mousePressed() {
  botones();
}

void keyPressed() {
  if (potencia == true && paso == 2) {
    pelotaa.disparar(barrafuerza);
  }
  if (potencia == false && paso == 1) {
    potencia = true;
    paso++;
  }
}
