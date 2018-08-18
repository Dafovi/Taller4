PImage[]fotos=new PImage[10];
PImage fondo;
int x1=350;
int y1=0;
int imagen;
PFont fuente;
import ddf.minim.*;
Minim gestor;
AudioPlayer musica_fondo;

float posX[];
float posY[];
float posX1[];
float posY1[];
float posX2[];
float posY2[];
float posX3[];
float posY3[];
float distancia=0;
float distancia1=0;
float distancia2=0;
float distancia3=0;
int estado[];
int estado2[];
int puntaje=0;
int puntfinl=0;

void setup() {
  size(800, 400);
  for (int i=0; i<10; i++) {
    fotos[i]=loadImage(i+".png");
  }
  fondo=loadImage("8.jpg");
  posX=new float[100];
  posY=new float[100];
  posX1=new float[100];
  posY1=new float[100];
  posX2=new float[100];
  posY2=new float[100];
  posX3=new float[100];
  posY3=new float[100];
  estado=new int[100];
  estado2=new int[100];
  for (int i=0; i<100; i++) {
    posX[i]=random(20, 740);
    posY[i]=random(-2900, 0);
    posX1[i]=random(20, 740);
    posY1[i]=random(-2900, 0);
    posX2[i]=random(20, 740);
    posY2[i]=random(-2900, 0);
    posX3[i]=random(20, 740);
    posY3[i]=random(-2900, 0);
    estado[i]=1;
    estado2[i]=1;
  }
  fuente = loadFont("CurlzMT-60.vlw");
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("01.mp3");
  //musica_fondo.setGain(-10);
  musica_fondo.loop();
}
void draw() {
  background(fondo);
  puntaje=0;
  tecladoInteraction();
  textFont(fuente, 20);

  for (int i=0; i<20; i++) {
    posY[i]=posY[i]+1;
    posY1[i]=posY1[i]+1;
    posY2[i]=posY2[i]+1;
    if (estado[i]==1) {
      image(fotos[4], posX[i], posY[i]);
      image(fotos[5], posX1[i], posY1[i]);
      image(fotos[6], posX2[i], posY2[i]);
    } else {
      puntaje=puntaje+1;
    }
  }
  for (int i=0; i<10; i++) {
    posY3[i]=posY3[i]+1;
    if (estado2[i]==1) {
      image(fotos[7], posX3[i], posY3[i]);
    } else {
      imagen=8;
      fin();
    }
  }
  for (int i=0; i<100; i++) {
    distancia=dist(x1+random(80), y1+random(150, 300), posX[i], posY[i]);
    distancia1=dist(x1+random(80), y1+random(150, 300), posX1[i], posY1[i]);
    distancia2=dist(x1+random(80), y1+random(150, 300), posX2[i], posY2[i]);
    distancia3=dist(x1+random(80), y1+random(150, 300), posX3[i], posY3[i]);

    if (distancia<10||distancia1<10||distancia2<10) {
      estado[i]=0;
    }
    if (distancia3<10) {
      estado2 [i]=0;
    }
  }

  image(fotos[imagen], x1, y1);
  image(fotos[9], 700, 330);
  text(puntaje, 733, 388);
  puntfinl=puntaje;
}

void tecladoInteraction() {
  if (keyPressed == true);
  {
    if (key == 'a'|| key == 'A') {
      x1=x1-7;
      imagen=1;
      if (x1<=20) {
        imagen=3;
        fin();
      }
    }
    if (key == 'd'|| key == 'D') {
      x1=x1+7;
      imagen=0;
      if (x1>=685) {
        imagen=2;
        fin();
      }
    }
  }
}
void fin() {
  fill(0);
  textSize(80);
  text("Puntaje: "+puntfinl, 250, 250);
  musica_fondo.pause();
  stop();
}
