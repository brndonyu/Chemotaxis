 //declare bacteria variables here   
Bacteria [] horde;

 void setup()   
 {     
 	size(1200,900);
 	background(255);
 	horde = new Bacteria [100];
 	for(int i = 0; i < horde.length; i++){
 		horde[i] = new Bacteria();
 	} 
 }   
 void draw()   
 {    
 	//move the bacteria
 	background(255);
 	for(int i = 0; i < horde.length; i++){
 		horde[i].show();
 		horde[i].hop();
 	}
 }
 
 class Bacteria    
 {     
 	int slimeX, slimeY;

 	void Bacteria(){
 		slimeX = 0;
 		slimeY = 0;

 	}

 	void show(){
		fill(107, 230, 46);
 		strokeWeight(1);
 		rect(slimeX, slimeY, 50, 50, 200,200, 18, 18);

 		strokeWeight(3);
 		fill(255,255,255,0);
 		arc(slimeX+40,slimeY,30,30,PI,2*PI);
 		line(slimeX+55,slimeY,slimeX+55,slimeY+15);
 		arc(slimeX+70,slimeY+15,30,30,PI/2,PI);
 		strokeWeight(0);
 		fill(107, 230, 46);
 		ellipse(slimeX+70,slimeY+30,10,10);

 		//eyes
 		fill(230, 221, 46);
 		rect(slimeX+10,slimeY+12,12,12);
 		rect(slimeX+28,slimeY+12,12,12);

		//left eye
 		fill(0);
 		rect(slimeX+10,slimeY+12,4,4);
 		rect(slimeX+18,slimeY+12,4,4);
 		rect(slimeX+10,slimeY+20,4,4);
 		rect(slimeX+18,slimeY+20,4,4);

 		//right eye
 		rect(slimeX+28,slimeY+12,4,4);
 		rect(slimeX+36,slimeY+12,4,4);
 		rect(slimeX+28,slimeY+20,4,4);
 		rect(slimeX+36,slimeY+20,4,4);

 		//smile
 		arc(slimeX+20,slimeY+30,10,15,0,PI);
 		arc(slimeX+30,slimeY+30,10,15,0,PI);

 		fill(107, 230, 46);
 		arc(slimeX+20,slimeY+30,10,13,0,PI);
 		arc(slimeX+30,slimeY+30,10,13,0,PI);

 	}
 	void hop(){
 		if(mouseX > slimeX){
 			slimeX += Math.random()*5;
 		}else{
 			slimeX -= Math.random()*5;
 		}
 		if(mouseY > slimeY){
 			slimeY +=  Math.random()*5;
 		}else{
 			slimeY -= Math.random()*5;
 		}
 	}

 }

 void mousePressed(){
 	/*
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
*/
 }
