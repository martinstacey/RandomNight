float ss1=1;                                    //VARIABLES
float ss2=2;                                    //STAR SIZES  
float ss3=4;
float ms=100;                                 //MOON SIZE
void setup () {
  size(1500, 1000);
  setupbk();
  setupbu();
}
void draw () {
}
void keyPressed() {
  setupbk();
  setupbu();
}
void setupbk() {                                 //BACKGROUND
  background(0);
  for (float i=0; i<35; i++) {                   //STARS   
    noStroke();                                  //STAR T1
    float sx1=random(width);
    float sy1=random(height);
    fill(5, 30, 50, 5);
    ellipse(sx1, sy1, ss1+5, ss1+5);
    ellipse(sx1, sy1, ss1+30, ss1+30);
    ellipse(sx1, sy1, ss1+60, ss1+60);
    ellipse(sx1, sy1, ss1+100, ss1+100);
    ellipse(sx1, sy1, ss1+150, ss1+150);
    fill(random(200, 240));
    ellipse(sx1, sy1, ss1, ss1);  
    noStroke();                                  //STAR T2
    float sx2=random(width);
    float sy2=random(height);
    fill(5, 30, 50, 10);
    ellipse(sx2, sy2, ss2+5, ss2+5);
    ellipse(sx2, sy2, ss2+30, ss2+30);
    ellipse(sx2, sy2, ss2+60, ss2+60);
    ellipse(sx2, sy2, ss2+100, ss2+100);
    ellipse(sx2, sy2, ss2+150, ss2+150);
    fill(random(200, 240));
    ellipse(sx2, sy2, ss2, ss2);  
    noStroke();                              //STAR T3
    float sx3=random(width);
    float sy3=random(height);
    fill(5, 30, 50, 20);
    ellipse(sx3, sy3, ss3+5, ss3+5);
    ellipse(sx3, sy3, ss3+30, ss3+30);
    ellipse(sx3, sy3, ss3+60, ss3+60);
    ellipse(sx3, sy3, ss3+100, ss3+100);
    ellipse(sx3, sy3, ss3+150, ss3+150);
    fill(random(200, 240));
    ellipse(sx3, sy3, ss3, ss3);
  }   
  noStroke();                                  //MOON
  fill(5, 30, 50, 20);
  float mx=random(100, width-600);
  float my=random(100, height-600);
  ellipse(mx, my, ms+5, ms+5);
  ellipse(mx, my, ms+30, ms+30);
  ellipse(mx, my, ms+60, ms+60);
  ellipse(mx, my, ms+100, ms+100);
  ellipse(mx, my, ms+150, ms+150);  
  fill(random(200, 240), 300);
  ellipse(mx, my, ms, ms);   
  fill(random(20, 40), 50);
  ellipse(mx-30, my-10, ms/7, ms/7); 
  ellipse(mx+20, my-5, ms/10, ms/10); 
  ellipse(mx+10, my+10, ms/8, ms/8);
}
void setupbu() {
  float hl=height;                            //HORIZON LINE
  for (float i = 0; i < 3; i++) {             //FAR BUILDINGS    
    fill(20, 40);
    rect(random(0, width), hl, random(-100, -150), random(-400, -350));
    fill(5, 30, 50, 20);
    rect(random(0, width), hl, random(-100, -150), random(-350, -250));
    fill(5, 30, 50, 25);
    rect(random(0, width), hl, random(-100, -150), random(-250, -150));
  }  
  for (float i = 0; i < 2; i++) {            //FAR BUILDINGS 2
    fill(5, 30, random(45, 50), 25);
    rect(random(0, width), hl, random(-100, -150), random(-350, -150));
    fill(5, 30, random(50, 55), 35);
    rect(random(0, width), hl, random(-100, -150), random(-200, -150));
  }
}