 //declare bacteria variables here   
int x = (Math.random()*1200);
int y = (Math.random()*900);

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
 	strokeWeight(1);
 	rect(mouseX, mouseY, 50, 50, 200,200, 18, 18);

 	strokeWeight(3);
 	fill(255,255,255,0);
 	arc(mouseX+40,mouseY,30,30,PI,2*PI);
 	line(mouseX+55,mouseY,mouseX+55,mouseY+15);
 	arc(mouseX+70,mouseY+15,30,30,PI/2,PI);
 	strokeWeight(0);
 	fill(107, 230, 46);
 	ellipse(mouseX+70,mouseY+30,10,10);

 	//eyes
 	fill(230, 221, 46);
 	rect(mouseX+10,mouseY+12,12,12);
 	rect(mouseX+28,mouseY+12,12,12);

	//left eye
 	fill(0);
 	rect(mouseX+10,mouseY+12,4,4);
 	rect(mouseX+18,mouseY+12,4,4);
 	rect(mouseX+10,mouseY+20,4,4);
 	rect(mouseX+18,mouseY+20,4,4);

 	//right eye
 	rect(mouseX+28,mouseY+12,4,4);
 	rect(mouseX+36,mouseY+12,4,4);
 	rect(mouseX+28,mouseY+20,4,4);
 	rect(mouseX+36,mouseY+20,4,4);

 	//smile
 	arc(mouseX+20,mouseY+30,10,15,0,PI);
 	arc(mouseX+30,mouseY+30,10,15,0,PI);

 	fill(107, 230, 46);
 	arc(mouseX+20,mouseY+30,10,13,0,PI);
 	arc(mouseX+30,mouseY+30,10,13,0,PI);

 }
