float degrees;
boolean motorFlag;

void setup() {
  size(100, 100);
  
}

void draw() {  
  if (mousePressed && (mouseButton == LEFT)) {
    fill(0);
    motorFlag = true;
  } else if (mousePressed && (mouseButton == RIGHT)) {
    fill(255);
    motorFlag = false;

  } 
  
  print((int)degrees);
  print(",");
  println(motorFlag);
  rect(25, 25, 50, 50);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if((degrees <180 && degrees >0) || (degrees>0 && e<0.0) || (degrees<180 && e>0.0) ){
    degrees = abs(degrees) + e;
  }
}