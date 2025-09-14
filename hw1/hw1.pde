//rectangle
float[] x = {70, 90, 100, 400};
float[] y = {70, 300, 400, 100};
float[] w = {100, 50, 350, 200};
float[] h = {200, 400, 250, 50};
color[] c = {#57000E, #696638, #A3523A, #B58E5A};
float[] vx = new float[4];
float[] vy = new float[4];

//ellipse
float[] x1 = {70, 100, 600, 300};
float[] y1 = {200, 440, 550, 150};
float[] w1 = {200, 100, 70, 60};
float[] h1 = {300, 50, 50, 50};
color[] c1 = {#4A868C, #407348, #BF925A, #BF533B};
float[] vx1 = new float [4];
float[] vy1 = new float [4];


//lines
float[] x2 = {100, 580, 30, 550};
float[] y2 = {50, 550, 500, 130};
float[] w2 = {30, 30, 650, 20};
float[] h2 = {300, 46, 250, 220};
color[] c2 = {#0A4036, #BFA29B, #BF793B, #A6372D};
float[] vx2 = new float [4];
float[] vy2 = new float [4];


//points
float[] x3 = {50, 500, 300, 200};
float[] y3 = {50, 300, 500, 200};
color[] c3 = {#2EA6A6, #278C82, #63A6A6, #C1D9C2};
float[] vx3 = new float [4];
float[] vy3 = new float [4];

//triangles
float[] x4 = {40, 300, 600, 120};
float[] y4 = {50, 200, 500, 350};
float[] x5 = {45, 600, 300, 23};
float[] y5 = {30, 420, 190, 590};
float[] x6 = {10, 550, 66, 344};
float[] y6 = {40, 255, 190, 300};
color[] c4 = { #8C3F5B, #0FA68A, #BFB636, #270E40};
float[] vx4 = new float [4];
float[] vy4 = new float [4];


boolean aligned = false;



  void setup() {
  size(600,600);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  for (int i = 0; i < 4; i++) {
    vx[i] = random(-2, 2); vy[i] = random(-2, 2);
    vx1[i] = random(-2, 2); vy1[i] = random(-2, 2);
    vx2[i] = random(-2, 2); vy2[i] = random(-2, 2);
    vx3[i] = random(-2, 2); vy3[i] = random(-2, 2);
    vx4[i] = random(-2, 2); vy4[i] = random(-2, 2);
  }
 
}




void draw() {
 background(#274259);


 
noStroke();                                // rectangles only
 for (int i = 0; i < x.length; i++) {
   float dx = map(mouseX, 0, width, -20, 20);
   float dy = map(mouseY, 0, height, -20, 20);
 
  if (!aligned) { 
   x[i] += vx[i]; y[i] += vy[i];
   if (x[i] < 0 || x[i] > width) vx [i] *= -1;
   if (y[i] < 0 || y[i] > height) vy[i] *= -1;
  }
  
   fill(red(c[i]), green(c[i]), blue(c[i]));
   rect(x[i] + dx, y[i] + dy, w[i], h[i]);
           
}
 
             
 noStroke();            // ellipse only
 for (int i=0; i < x1.length; i++){
   float dx1 = map(mouseX, 0, width, -20, 20);
   float dy1 = map(mouseY, 0, height, -20, 20);
     
     if (!aligned) { 
   x1[i] += vx1[i]; y1[i] += vy1[i];
   if (x1[i] < 0 || x1[i] > width) vx1 [i] *= -1;
   if (y1[i] < 0 || y1[i] > height) vy1[i] *= -1;
     }
     
 fill(red(c1[i]), green(c1[i]), blue(c1[i]));
 ellipse(x1[i] + dx1, y1[i] + dy1, w1[i], h1[i]);
 }
   
                        
                        
 strokeWeight(3);                           //lines only
 for (int i=0; i < x2.length; i++) {
   float dx2 = map(mouseX, 0, width, -20, 20);
   float dy2 = map(mouseY, 0, height, -20, 20);
   
     if (!aligned) { 
   x2[i] += vx2[i]; y2[i] += vy2[i];
   if (x2[i] < 0 || x2[i] > width) vx2 [i] *= -1;
   if (y2[i] < 0 || y2[i] > height) vy2[i] *= -1;
     }
   
    stroke(red(c2[i]), green(c2[i]), blue(c2[i]));
    line(x2[i] + dx2, y2[i] + dy2, w2[i], h2[i]);
 }
 
 
 
 strokeWeight(4);                      // points only
 for (int i=0; i < x3.length; i++) {
      float dx3 = map(mouseX, 0, width, -20, 20);
   float dy3 = map(mouseY, 0, height, -20, 20);
   
     if (!aligned) { 
   x3[i] += vx3[i]; y3[i] += vy3[i];
   if (x3[i] < 0 || x3[i] > width) vx3[i] *= -1;
   if (y3[i] < 0 || y3[i] > height) vy3[i] *= -1;
     }
  
   stroke(red(c3[i]), green(c3[i]), blue(c3[i]));
    point(x3[i] + dx3, y3[i] + dy3);
 }
 
 
 
 noStroke();                  // triangles
 for (int i=0; i < x4.length; i++){
  float dx4 = map(mouseX, 0, width, -20, 20);
   float dy4 = map(mouseY, 0, height, -20, 20); 
    
     if (!aligned) { 
   x4[i] += vx4[i]; y4[i] += vy4[i];
   if (x4[i] < 0 || x4[i] > width) vx4 [i] *= -1;
   if (y4[i] < 0 || y4[i] > height) vy4[i] *= -1;
     }
   
 fill(red(c4[i]), green(c4[i]), blue(c4[i]));
 triangle(x4[i] + dx4, y4[i] + dy4, x5[i], y5[i], x6[i], y6[i]);
 }
 }

void keyPressed() {
 if (key == 'a' || key == 'A') {
    aligned = !aligned; // toggle alignment

  }
}
 
void mousePressed() {
   for (int i=0; i<4; i++) {
      w[i] = constrain(w[i] + random(-120, 120), 120, width-100); // rectangle
    h[i] = constrain(h[i] + random(-120, 120), 60, height-200);
     
       w1[i] = constrain(w[i] + random(-30, 30), 120, width-100); //ellipse
   h1[i] = constrain(h[i] + random(-30, 30), 60, height-200);
    
     w2[i] = constrain(w[i] + random(-120, 120), 120, width-100); // lines
    h2[i] = constrain(h[i] + random(-120, 120), 60, height-200);
    
     x3[i] = constrain(w[i] + random(-120, 120), 120, width-100); // points
    y3[i] = constrain(h[i] + random(-120, 120), 60, height-200);
    
    x4[i] = constrain(w[i] + random(-120, 120), 120, width-100); // triangles
    y4[i] = constrain(h[i] + random(-120, 120), 60, height-200);
    
   }
 
 }
