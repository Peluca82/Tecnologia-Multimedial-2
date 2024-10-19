void sonidos() {
  musica = new SoundFile(this, "sonidos/California_love.wav");
  canasta3 = new SoundFile(this, "sonidos/canasta3.wav");
  rebote = new SoundFile(this, "sonidos/rebote.wav");
  threepoint = new SoundFile(this, "sonidos/from_the_3_point_line.wav");
  twopoint = new SoundFile(this, "sonidos/get_two.wav");
  ganaste = new SoundFile(this, "sonidos/Dancing_Queen.wav");
  perdiste = new SoundFile(this, "sonidos/White_Iverson.wav");
  ruido = new SoundFile(this, "sonidos/Ruido.wav");
  ambiente = new SoundFile(this, "sonidos/Ambiente.wav");
  pajaros = new SoundFile(this, "sonidos/Pajaros.wav");
  musica.amp(0.07);
  ganaste.amp(0.02);
  perdiste.amp(0.05);
  threepoint.amp(0.1);
  twopoint.amp(0.1);
  rebote.amp(0.1);
  ambiente.amp(0.1);
  ruido.amp(0.1);
  pajaros.amp(0.02);
  musica.play();
}
