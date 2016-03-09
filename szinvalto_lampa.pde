float x;
float y;
float rx;
float gx;
float bx;
float sgy;
float r;
boolean b;
byte c;

PImage kep; 


void setup () {
  size(500, 500);
  background(0, 0, 0);
  noStroke();
  r=25;
  x=width/2;
  rx=2*r+10;
  gx=width/2;
  bx=width-(2*r+10);
  sgy=50;
  y=height-height/15;
  b=false;
  kep = loadImage("hatter.png");
  c=1;
}

void mouseClicked() {
  if ((abs(x-mouseX)<r)&&(abs(y-mouseY)<r)) {
    if (b) {
      b=false;
    } else if (!b) {
      b=true;
    }
  }

  if ((abs(rx-mouseX)<r)&&(abs(sgy-mouseY)<r)&&(b)) {
    c=1;
  }
  if ((abs(gx-mouseX)<r)&&(abs(sgy-mouseY)<r)&&(b)) {
    c=2;
  }
  if ((abs(bx-mouseX)<r)&&(abs(sgy-mouseY)<r)&&(b)) {
    c=3;
  }
}

void draw() {  
  background(0, 0, 0);
  image(kep, width/2-75, height-270, 150, 151);
  noStroke();
  if ((b)&&(c==1)) {
    feny(color(250, 50, 50));
  }
  if ((b)&&(c==2)) {
    feny(color(50, 250, 50));
  }
  if ((b)&&(c==3)) {
    feny(color(50, 50, 250));
  }
  if (!b) {
    background(0, 0, 0);
  }
  keret();
}

void gomb(color color1, color color2, float xcord1, float ycord1, float xcord2, float ycord2){
  fill(color1);
  ellipse(xcord1, ycord1, r*2+2, r*2+6);
  fill(color2);
  ellipse(xcord2, ycord2, r*2, r*2);
}

void keret(){
  noStroke();
  fill(30, 30, 30);
  rect(0, 0, width, 100);
  rect(0, height-100, width, 100);
 
  gomb(color(120, 120, 120),color(200, 200, 200),x,y-5,x,y);
  gomb(color(200, 50, 50),color(255, 50, 50),rx,sgy,rx-2,sgy-5);  
  gomb(color(50, 200, 50),color(50, 255, 50),gx,sgy,gx,sgy-5);
  gomb(color(50, 50, 200),color(50, 50, 255),bx,sgy,bx+2,sgy-5);

  noFill();
  stroke(0, 0, 0);
  strokeWeight(2);
  ellipse(x, y, r/1.5, r/1.5);
  line(x, y-r/2, x, y);

}

void feny(color fenyszin){
  fill(fenyszin, 120);
  triangle(width/2, 100, 60, height-100, width-60, height-100);
}