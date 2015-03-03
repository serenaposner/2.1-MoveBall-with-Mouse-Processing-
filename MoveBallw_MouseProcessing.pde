/*
Processing code to send to arduino. Moves ball according to mouse position
Serena Posner
DIGF 2B03 Physical Computing
OCAD University
Created on 022515
*/

import processing.serial.*;

Serial myPort;
int val = 0;

void setup(){
  size (400,400);
String portName = Serial.list()[2];
myPort = new Serial (this,portName,9600);
}

void draw(){
  noStroke();
 val = mouseX;
 background (255,200,200);
 ellipse (mouseX,200,100,100);
 myPort.write(val);
 println(val);
}
  

