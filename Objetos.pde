void bordes() {
  FBox borde = new FBox(25, 137);
  borde.setPosition(585, 175);
  borde.setStatic(true);
  borde.setNoFill();
  borde.setNoStroke();
  borde.setGrabbable(false);
  borde.setName("canasto");
  mundo.add(borde);

  FBox borde2 = new FBox(5, 10);
  borde2.setPosition(505, 200);
  borde2.setStatic(true);
  borde2.setNoFill();
  borde2.setNoStroke();
  borde2.setGrabbable(false);
  borde2.setName("canasto");
  mundo.add(borde2);

  borde3 = new FLine(510, 210, 565, 210);
  borde3.setStatic(true);
  borde3.setNoFill();
  borde3.setName("entro");
  borde3.setNoStroke();
  borde3.setGrabbable(false);
  borde3.setSensor(true);
  mundo.add(borde3);

  FBox piso = new FBox(640, 2);
  piso.setPosition(320, 440);
  piso.setNoFill();
  piso.setNoStroke();
  piso.setStatic(true);
  piso.setGrabbable(false);
  piso.setName("cancha");
  mundo.add(piso);
}

void pj2() {
  pj2 = new FBox(70, 200);
  pj2.attachImage(imagenespj2[frames[2]]);
  pj2.setPosition(450, 338);
  pj2.setDensity(15);
  pj2.setStatic(false);
  pj2.setGrabbable(false);
  pj2.setName("pj2");
  mundo.add(pj2);
}
