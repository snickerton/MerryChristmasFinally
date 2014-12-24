
int dc;

PImages[] imgs;

void setup() {
  size(1280, 800);

  imgs = {loadImage("fluffy.jpg"), loadImage("b1.jpg"), loadImage("b2.jpg"), 
          loadImage("pillowsnuggle.gif"), loadImage("lolpear.png"), loadImage("sfid.jpg"), loadImage("b3.jpg"),
          loadImage("b4.jpg"), loadImage("b5.jpg"), loadImage("b6.jpg"), loadImage("b7.jpg"), loadImage("b8.jpg"), loadImage("h1.jpg")];
  
  

  frameRate(2);
}

void draw() {
fill(random(50,150)+dc%255, random(50)+dc%255,0);  
rect(0,0,width,height);
noStroke();
fill(random(150,255)+dc%255, random(50)+dc%255,0);
ellipse(random(width), random(height), 50, 50);
ellipse(random(width), random(height), 60, 60);
ellipse(random(width), random(height), 70, 70);
ellipse(random(width), random(height), 40, 40);
ellipse(random(width), random(height), 50, 50);

int i = (int)random(14);

for(int x = 0; x<imgs.length; x++){
  if(x==i)
    image(imgs[x], width/2+random(-600, 100), height/2+random(-400, 10));
}


dc++;  
}



