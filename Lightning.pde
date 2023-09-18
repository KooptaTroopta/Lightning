void setup() {
	size(400,400);
  int lastX = 0;
  int lastY = 0;
  int r = 0;
  int g = 0;
  int b = 0;
  noStroke();
  int randomR = (int)(Math.random()*256);
  int randomG = (int)(Math.random()*256);
  int randomB = (int)(Math.random()*256);
}
void draw() {

}
void bolt(int x, int y, int r1, int g1, int b1) {
	for (int i = 0; i <= 100; i++) {
		fill(r + i*r1, g + i*g1, b + i*b1);
		ellipse(i*x/100,i*y/100,5,5);
		
	}
	
	lastX += x;
	lastY += y;
}
void mousePressed() {
	bolt((int)(Math.random()*100),(int)(Math.random()*100),(randomR-r)/4, (randomG-g)/4, (randomB-b)/4);
}
