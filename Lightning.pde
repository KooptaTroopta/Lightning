void setup() {
  size(400,400);
  noStroke();
  background(255,255,255);
  cloud();
}
int count = 0;
int lastLastX = 0;
int lastLastY = 0;
int lastX = 175 + (int)(Math.random()*50);
int lastY = 80;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);
int randomR = (int)(Math.random()*256);
int randomG = (int)(Math.random()*256);
int randomB = (int)(Math.random()*256);
void draw() {
  frameRate(60);
}
void bolt(int x, int y, int r1, int g1, int b1) {
  for (int i = 0; i <= 100; i++) {
    fill(r + i*r1/100, g + i*g1/100, b + i*b1/100);
    ellipse(lastX+i*x/100,lastY+i*y/100,5,5);
  }
  lastX += x;
  lastY += y;
}
void mousePressed() {
  int i = 0;
  int Y = (int)(Math.random()*100)+50;
  while (lastY + Y <= 600) {
    bolt((int)(Math.random()*100)-50,Y,(randomR-r)*i/5, (randomG-g)*i/5, (randomB-b)*i/5);
    lastLastX=lastX;
    lastLastY=lastY;
    for (int j = 0; j<=10; j++) {
    bolt((int)(Math.random()*400)-200,Y*2,(randomR-r)*j/5, (randomG-g)*j/5, (randomB-b)*j/5);
  }
    lastX=lastLastX;
    lastY=lastLastY;
    i++;
  }
  cloud();
  lastX = 175 + (int)(Math.random()*50);
  lastY = 80;
  r = (int)(Math.random()*256);
  g = (int)(Math.random()*256);
  b = (int)(Math.random()*256);
  randomR = (int)(Math.random()*256);
  randomG = (int)(Math.random()*256);
  randomB = (int)(Math.random()*256);
  while((abs(r-randomR)+abs(g-randomG)+abs(b-randomB))/3 < 120) {
  randomR = (int)(Math.random()*256);
  randomG = (int)(Math.random()*256);
  randomB = (int)(Math.random()*256);
  }
  count++;
  if (count == 6) {
    background(255,255,255);
    cloud();
    count=0;
  }
}

void cloud() {
  fill(230,230,230);
  stroke(200,200,200);
  ellipse(200,70,50,50);
  ellipse(170,50,70,100);
  ellipse(230,50,70,100);
  ellipse(200,45,80,70);
  fill(0,0,0);
  noStroke();
  arc(200,40,80,60,PI/6,5*PI/6);
  fill(230,230,230);
  arc(200,37,80,60,0,PI);
  stroke(200,200,200);
  ellipse(150,60,50,50);
  ellipse(250,60,50,50);
  fill(0,0,0);
  ellipse(180,40,10,25);
  ellipse(220,40,10,25);
  fill(255,255,255);
  ellipse(180,35,5,8);
  ellipse(220,35,5,8);
  noStroke();
}

