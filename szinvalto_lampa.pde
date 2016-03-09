float x;
float y;
float rx;
float gx;
float bx;
float sgy;
float r;
boolean b;
float c;

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

void mouseClicked(){
  if ((abs(x-mouseX)<r)&&(abs(y-mouseY)<r)) {
    if (b) {
      b=false;   
    }
    else if (!b) {
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
  
  if((b)&&(c==1)){
    background(0, 0, 0);
    image(kep,width/2-75,height-270,150,151);
    noStroke();
    fill(250, 50, 50, 120);
    triangle(width/2, 100, 60,height-100, width-60,height-100);
 }
 if((b)&&(c==2)){
    background(0, 0, 0);
    image(kep,width/2-75,height-270,150,151);
    noStroke();
    fill(50, 250, 50, 120);
    triangle(width/2, 100, 60,height-100, width-60,height-100);
 }
 if((b)&&(c==3)){
    background(0, 0, 0);
    image(kep,width/2-75,height-270,150,151);
    noStroke();
    fill(50, 50, 250, 120);
    triangle(width/2, 100, 60,height-100, width-60,height-100);
 }
 if(!b){
    background(0, 0, 0);
 }
  
  noStroke();
  fill(30,30,30);
  rect(0,0,width,100);
  rect(0,height-100,width,100);
  fill(120, 120, 120);
  ellipse(x, y-5, r*2+2, r*2+6);
  fill(200, 200, 200);
  ellipse(x, y, r*2, r*2);
  
  fill(200, 50, 50);
  ellipse(rx, sgy, r*2+2, r*2+6);
  fill(255, 50, 50);
  ellipse(rx-2, sgy-5, r*2, r*2);
  
  fill(50, 200, 50);
  ellipse(gx, sgy,r*2+2, r*2+6);
  fill(50, 255, 50);
  ellipse(gx, sgy-5, r*2, r*2);
  
  fill(50, 50, 200);
  ellipse(bx, sgy, r*2+2, r*2+6);
  fill(50, 50, 255);
  ellipse(bx+2, sgy-5, r*2, r*2);
  
  noFill();
  stroke(0,0,0);
  strokeWeight(2);
  ellipse(x, y, r/1.5, r/1.5);
  line(x,y-r/2,x,y);
}