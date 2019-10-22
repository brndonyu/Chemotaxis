 //declare bacteria variables here   
 void setup()   
 {     
 	size(1200,900);
 	background(0); 
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
 	/*
 	rect(mouseX+10,mouseY+12,12,12);
 	rect(mouseX+28,mouseY+12,12,12);
 	rect(mouseX+15,mouseY+25,20,5);
 	*/
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

 	  arc(mouseX+25,mouseY+25,40,20,0-PI*0.04,PI+PI*0.04,OPEN);


 }
