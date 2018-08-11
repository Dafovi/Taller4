int newX=0;
int newY=0;
int ancho=0;
int alto=0;
//**************
//valores cuadro1
int anCuUno=96;
int alCuUno=94;
//cuadro 2
int anCuDos=278;
int alCuDos=38;
//2.2
int anCuDd=130;
int alCuDd=56;
//2.3,4,5,6,7,8,9
int anCDt=48;
float alCDt=28.4;
//2.10
int anCDC=100;
//2.11,12,13
int alCDQ=201;
//3
int anCuT=50;
int alCuT=58;
//3.2
int anCT=84;
int alCT=93;
//3.2.1
int anCTU=141;
//3.3
int anCTD=132;
int alCTD=59;
//3.4
int alCTT=85;
//4
int anCuC=175;
int alCuC=58;
//colum final 1.1,2,3
int anCF=31;
int alCF=39; 
//colfinal2
int anCFU=93;
int alCFU=79;
//colum 1.1
int anCU=226;
int alCU=142;
//colum 1.2
int anCD=137;
int alCD=122;
//fila inferior 1
int anCFI=137;
int alCFI=122;
//fil2
int anCFD=232;
int alCFD=62;
//fil3
int anCFT=93;
int alCFT=89;
//********
int xT=0;
int yT=0;


void setup() {
  size(600, 360);
  background(207,208,203);
}
void draw() {
  stroke(31);
  strokeWeight(5);
  //Fila superiror 1
  //c1
  fill(33,59,122);
  rect(sumarX(xT), sumarY(yT), anchoT(anCuUno), alCuUno);
  //c2
 fill(31);
  rect(sumarX(xT), sumarY(yT), anchoT(anCuDos), alCuDos);
  //c2.2
 fill(207,208,203);
  rect(newX, sumarY(yT)+alCuDos, anCuDd, alCuDd);
  //2.3,4,5,6,7,8,9
  /* for (int i=1; i<6; i+=1) {    no se como colorear cada cuadro por separado 
   rect(newX+anCuDd, (alCDt*i)+alCuDos, anCDt, alCDt);
   }*/
  fill(145,40,39);
  rect(newX+anCuDd, (alCDt*1)+alCuDos, anCDt, alCDt);
  fill(33,59,122);
  rect(newX+anCuDd, (alCDt*2)+alCuDos, anCDt, alCDt);
  fill(145,40,39);
  rect(newX+anCuDd, (alCDt*3)+alCuDos, anCDt, alCDt);
  fill(33,59,122);
  rect(newX+anCuDd, (alCDt*4)+alCuDos, anCDt, alCDt);
 fill(196,161,56);
  rect(newX+anCuDd, (alCDt*5)+alCuDos, anCDt, alCDt);
 fill(31);
  rect(newX+anCuDd, (alCDt*6)+alCuDos, anCDt, alCDt);
  //c2.10
  fill(33,59,122);
  rect(newX+anCuDd+anCDt, alCuDos, anCDC, alCDt*2);
  //c2.11
 fill(207,208,203);
  rect(newX+anCuDd+anCDt, alCuDos+(alCDt*2), anCDC/3, alCDQ);
 fill(196,161,56);
  rect(newX+anCuDd+anCDt+(anCDC/3), alCuDos+(alCDt*2), anCDC/3, alCDQ);
 fill(207,208,203);
  rect(newX+anCuDd+anCDt+(anCDC-(anCDC/3)), alCuDos+(alCDt*2), anCDC/3, alCDQ);
  //c3
  fill(145,40,39);
  rect(sumarX(xT), sumarY(yT), anchoT(anCuT), alCuT);
  //c3.2
 fill(207,208,203);
  rect(newX, alCuT, anCT, alCT);
  //c3.2.1
  fill(145,40,39);
  rect(newX+anCT, alCuT, anCTU, alCT); 
  //c3.3
 fill(31);
  rect(newX, alCuT+alCT, anCTD, alCTD);
  //3.4
 fill(196,161,56);
  rect(newX, alCuT+alCT+alCTD, anCTD, alCTT);
  //colfin1.1
  fill(33,59,122);
  rect(newX+anCTD, alCuT+alCT, anCF, alCF);
  //colfin1.2
 fill(196,161,56);
  rect(newX+anCTD+anCF, alCuT+alCT, anCF, alCF);
  //colfin1.3
  fill(33,59,122);
  rect(newX+anCTD+anCF+anCF, alCuT+alCT, anCF, alCF);
  //colfin2
  fill(145,40,39);
  rect(newX+anCTD, alCuT+alCT+alCF, anCFU, alCFU);
  //c4
 fill(196,161,56);
  rect(sumarX(xT), sumarY(yT), anchoT(anCuC), alCuC);
  //reiniciar valores de "ancho" y "newX"
  ancho=0;
  newX=0;
  //Dar valor a "Y" segun el primer cuadrado
  yT=alCuUno;
  //columna1
 fill(207,208,203);
  rect(sumarX(xT), sumarY(yT), anCU, altoT(alCU));
  //columna1.2
 fill(207,208,203);
  rect(sumarX(xT), sumarY(yT), anchoT(anCD), altoT(alCD));
  //fila inferior1
  fill(33,59,122);
  rect(sumarX(xT), newY, anchoT(anCFI), altoT(alCFI));
  //fil2
 fill(31);
  rect(sumarX(xT), newY+(alCFI/2.01), anchoT(anCFD), altoT(alCFD));
  //fil3
 fill(207,208,203);
  rect(sumarX(xT), newY+(alCFD/1.85), anchoT(anCFT), altoT(alCFT));

  //relleno

  fill(145,40,39);
  quad(96, 11, 125, 38, 96, 38, 96, 11);
  quad(135, 38, 162, 0, 191, 38, 135, 38);
  quad(199, 38, 237, 0, 277, 38, 199, 38);
  quad(281, 38, 325, 0, 363, 38, 281, 38);
  //
  noFill();
  beginShape();
  vertex(443, 31);
  vertex(452, 20);
  vertex(451, 49);
  vertex(440, 49);
  vertex(458, 49);
  endShape();
  beginShape();
  vertex(467, 49);
  vertex(480, 26);
  vertex(475, 15);
  vertex(466, 21);
  vertex(465, 29);
  vertex(475, 36);
  endShape();
  beginShape();
  vertex(495, 17);
  vertex(488, 37);
  vertex(504, 37);
  vertex(498, 37);
  vertex(500, 29);
  vertex(496, 50);
  endShape();
  beginShape();
  vertex(512, 50);
  vertex(524, 41);
  vertex(515, 32);
  vertex(521, 22);
  vertex(514, 15);
  endShape();  
  beginShape();
  vertex(548, 25);
  vertex(571, 25);
  vertex(560, 25);
  vertex(560, 17);
  vertex(560, 50);
  vertex(544, 43);
  vertex(560, 50);
  vertex(576, 41);
  vertex(560, 50);
  vertex(560, 25);
  endShape();
  //
 fill(31);
  quad(96, 93, 130, 66, 165, 93, 96, 93);
  quad(165, 93, 199, 67, 226, 93, 165, 93);
  //
 fill(207,208,203);
  quad(277, 93, 324, 43, 369, 93, 277, 93);
  //
  strokeCap(PROJECT);
  line(382, 95, 382, 111);
  line(382, 101, 446, 100);
  line(446, 95, 446, 106);
  line(404, 70, 423, 70);
  line(415, 70, 415, 141);
  line(406, 141, 424, 141);
  line(438, 71, 430, 75);
  line(430, 75, 436, 84);
  line(436, 84, 428, 85);
  //
  noFill();
  beginShape();
  vertex(479, 140);
  vertex(496, 88);
  vertex(515, 141);
  vertex(529, 90);
  vertex(545, 143);
  endShape();
  beginShape();
  vertex(561, 143);
  vertex(565, 119);
  vertex(551, 100);
  vertex(569, 87);
  endShape();
  //
  fill(145,40,39);
  quad(0, 237, 59, 295, 0, 360, 0, 237);
 fill(196,161,56);
  ellipse(108, 262, 34, 31);
  //
 fill(196,161,56);
  rect(137, 304, 137, 45);
 fill(31);
  quad(137, 270, 172, 280, 170, 326, 138, 343);
 fill(207,208,203);
  beginShape();
  vertex(172, 280);
  vertex(199, 256);
  vertex(222, 243);
  vertex(236, 244);
  vertex(224, 280);
  vertex(224, 307);
  vertex(240, 345);
  vertex(216, 345);
  vertex(170, 326);
  endShape(CLOSE);
  fill(145,40,39);
  beginShape();
  vertex(236, 244);
  vertex(262, 269);
  vertex(274, 302);
  vertex(263, 331);
  vertex(240, 345);
  vertex(224, 307);
  vertex(224, 280);
  endShape(CLOSE);
 fill(207,208,203);
  ellipse(246, 282, 17, 15);
  //
  fill(145,40,39);
  quad(276, 295, 326, 342, 369, 297, 276, 295);
  quad(369, 297, 414, 344, 466, 297, 369, 297);
  quad(466, 297, 506, 344, 506, 295, 466, 297);
  //
 fill(31);
  quad(524, 357, 544, 271, 554, 271, 585, 357);
  //
  fill(33,59,122);
  rect(421, 240, 35, 53);
 fill(207,208,203);
  quad(378, 210, 439, 157, 500, 210, 378, 210);
  fill(145,40,39);
  ellipse(439, 185, 16, 16);
  //
 fill(196,161,56);
  quad(0, 215, 0, 234, 55, 234, 56, 219);
  quad(-47, 95, 64, 95, 104, 159, 78, 178);
  quad(172, 171, 184, 185, 226, 180, 226, 108);
  quad(198, 220, 226, 221, 226, 235, 200, 235);
  fill(33,59,122);
  quad(64, 95, 154, 95, 149, 158, 104, 159);
  fill(145, 40, 39);
  arc(128, 234, 145, 165, PI, TWO_PI);
  //
  strokeCap(ROUND);
  strokeWeight(7);
  line(523, 268, 522, 210);
  line(582, 266, 582, 213);
  //
  strokeWeight(6);
  beginShape();
  vertex(0, 95);
  vertex(10, 55);
  vertex(33, 40);
  vertex(33, 2);
  vertex(63, 2);
  vertex(63, 38);
  vertex(77, 42);
  vertex(91, 56);
  vertex(94, 95);
  endShape(CLOSE);
 fill(196,161,56);
  rect(29, 55, 41, 24, 5);


  stop();
}

//sumar el ancho dado con el actual
public int anchoT(int an) {
  ancho=an;
  return ancho;
}
//sumar x con el ancho
public int sumarX(int x) {
  newX=xT+ancho+newX;
  return newX;
}

//sumar el alto dado con el actual
public int altoT(int al) {
  alto=al;
  return alto;
}
//sumar y con el alto
public int sumarY(int y) {
  newY=yT+alto;
  return newY;
}
