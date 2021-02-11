float baseH = 70;
float armL1 = 50;
float armL2 = 40;
float fingerL1 = 30;
float armW1 = 10;
float armW2 = 10;
float fingerW1 = 5;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float dif = 1.0;

void setup(){
  frameRate(60);
  size(1000,1000,P3D);
  background(255);
  
  camera(120,120,120,0,0,0,0,0,-1);
  strokeWeight(5);
}

void draw(){
  background(255);
if(keyPressed){
    if(key == '1'){
      angle1 = angle1 + dif;
    }
    if(key == '2'){
      angle1 = angle1 - dif;
    }
    if(key == '3'){
      angle2 = angle2 + dif;
    }
    if(key == '4'){
      angle2 = angle2 - dif;
    }
    if(key == '5'){
      angle3 = angle3 + dif;
    }
    if(key == '6'){
      angle3 = angle3 - dif;
    }
    if(key == '7'){
      angle4 = angle4 + dif;
    }
    if(key == '8'){
      angle4 = angle4 - dif;
    }
    if(key == '9'){
      angle2 = angle2 + dif;
      angle3 = angle3 - dif;
      
    }
     if(key == '0'){
      angle2 = angle2 - dif;
      angle3 = angle3 + dif;
      
    }
}
  

  //base
  rotateZ(radians(angle1));
  fill(#F06233);
  box(10,20,baseH);
  
  //arm1
  translate(-10,0,baseH/2-armW1/2);
  rotateX(radians(angle2));
  translate(0,armL1/2-10,0);
  fill(#4C4C52);
  box(armW1,armL1,armW1);
 
  //arm2
  translate(10, armL1/2, 0);
  rotateX(radians(angle3));
  translate(0, armL2/2-10,0);
  fill(#4C4C52);
  box(armW2,armL2,armW2);
  
  //finger1
  translate(-10, armL2/2-7.5,0);
  rotateX(radians(angle4));
  translate(0,0,armW2/2-fingerL1/2);
  fill(#FF0509);
  box(fingerW1,fingerW1,fingerL1);
 
}
