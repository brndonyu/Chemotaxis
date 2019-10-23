 //declare bacteria variables here   
 void setup()   
 {     
 	size(1200,900);
 	background(255); 
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }
 /*
 class Bacteria    
 {     
 	int slimeX, slimeY;

 	void Slime(x,y){
 		slimeX = x;
 		slimeY = y;

 	}

 	void show(){

 		ellipse();

 	}

 }
*/
 void mousePressed(){
 	fill(107, 230, 46);
 	strokeWeight(0);
 	rect(mouseX, mouseY, 50, 50, 200,200, 18, 18);

 	strokeWeight(3);
 	fill(255,255,255,0);
 	arc(mouseX+40,mouseY,30,30,PI,(3*PI)/2);
 	strokeWeight(0);
 	fill(107, 230, 46);
 	ellipse(mouseX+47,mouseY-15,10,10);

 	fill(230, 221, 46);
 	rect(mouseX+12,mouseY+12,12,12);
 	rect(mouseX+26,mouseY+12,12,12);

 	fill(0);
 	rect(mouseX+12,mouseY+12,4,4);
 	rect(mouseX+20,mouseY+12,4,4);
 	rect(mouseX+12,mouseY+20,4,4);
 	rect(mouseX+20,mouseY+20,4,4);

 	rect(mouseX+26,mouseY+12,4,4);
 	rect(mouseX+34,mouseY+12,4,4);
 	rect(mouseX+26,mouseY+20,4,4);
 	rect(mouseX+34,mouseY+20,4,4);

 	arc(mouseX+20,mouseY+30,10,15,0,PI);
 	arc(mouseX+30,mouseY+30,10,15,0,PI);
 	
 	fill(107, 230, 46);
 	arc(mouseX+20,mouseY+30,10,13,0,PI);
 	arc(mouseX+30,mouseY+30,10,13,0,PI);


 }
