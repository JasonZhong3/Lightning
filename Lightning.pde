

void setup(){
  size(300,300);
  strokeWeight(2);
  background(0);
}
int x1 = (int)(Math.random()*300);
int y1 = 20;
int x2 = (int)(Math.random()*300);
int y2 = 20;
void draw(){
  //clouds
  noStroke();
  fill(255,255,255);
  ellipse(15,15,75,35);
  ellipse(55,25,75,45);
  ellipse(100,20,75,30);
  ellipse(125,15,75,45);
  ellipse(155,25,75,55);
  ellipse(200,20,75,30);
  ellipse(260,20,75,30);
  //umbrella
  fill(31,54,207);
  arc(150,255,50,30,-PI,0);
  //umbrella pole
  stroke(31,54,207);
  line(150,255,150,300);
  //person
  fill(255,255,255);
  stroke(255,255,255);
  ellipse(140,265,10,10);
  line(140,265,140,285);
  line(140,275,150,280);
  line(140,275,130,280);
  line(140,285,135,300);
  line(140,285,145,300);
  //fade
  fill(0,0,0,10);
  rect(0,0,500,500);
}
void mousePressed(){
  while(y2 < 300){
    stroke(250,255,0,100);
    y2 = y1 + (int)(Math.random()*9);
    x2 = x1 + (int)(Math.random()*18)-9;
    line(x1,y1,x2,y2);
    x1 = x2;
    y1 = y2;
    if((x2 >= 125 && x2 <= 175) && (y2 >= 225)){
      background(255,255,255);
      textSize(30);
      fill(0);
      text("You got hit!!",80,150);
    }
  }

  x1 = (int)(Math.random()*300);
  y1 = 20;
  x2 = (int)(Math.random()*300);
  y2 = 20;
}

