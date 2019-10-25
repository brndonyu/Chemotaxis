 //declare bacteria variables here   
Bacteria [] horde;
int x;
int y;
int counter = 1;
void setup()   
 {     
 	size(1600,800);
 	background(255);
 	horde = new Bacteria [20];
 	for(int i = 0; i < horde.length; i++){
 		if(counter > 4){
 			counter = 1;
 		}
 		if(counter == 1){
 			x = 225;
 			y = 175;
 		}else if(counter == 2){
 			x = 1350;
 			y = 175;
 		}else if(counter == 3){
 			x = 225;
 			y = 525;
 		}else if(counter == 4){
 			x = 1350;
 			y = 525;
 		}
 		horde[i] = new Bacteria(x,y);
 		counter++;
 	} 
 }   
 void draw()   
 {    
 	background(255);

  strokeWeight(1);
  //trees
   fill(172, 115, 57);
   rect(150,0,200,900);
   rect(1250,0,200,900);
   
   //brown ends
   //top
   rect(350,250,250,100);
   rect(1000,250,250,100);
   //bottom
   rect(350,600,250,100);
   rect(1000,600,250,100);
   
   // green ends + center
   //top
   fill(83, 255, 26);
   rect(150,250,200,100);
   rect(600,250,400,100);
   rect(1250,250,200,100);
   //bottom
   rect(150,600,200,100);
   rect(600,600,400,100);
   rect(1250,600,200,100);

    //portals
    fill(0);
    //top
    rect(175,100,150,150,10,10,0,0);
    rect(1275,100,150,150,10,10,0,0);
    //bottom
    rect(175,450,150,150,10,10,0,0);
    rect(1275,450,150,150,10,10,0,0);
    
    strokeWeight(3);
    fill(172, 115, 57);
    ladder(525,190);
    ladder(925,540);
 	for(int i = 0; i < horde.length; i++){
 		horde[i].show();
 		horde[i].hop();
 	}
 }
 
 void ladder(int x, int y){
  //bars
  rect(x,y,25,325);
  rect(x+125,y,25,325);
  
  //handles
  rect(x-25,y+25,200,25);
  rect(x-25,y+25+(250/4),200,25);
  rect(x-25,y+25+(500/4),200,25);
  rect(x-25,y+25+(750/4),200,25);
  rect(x-25,y+25+(1000/4),200,25);
  
}

 class Bacteria    
 {     
 	int slimeX, slimeY;

 	Bacteria(int x, int y){
 		slimeX = x;
 		slimeY = y;

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
 		fill(255, 255, 0);
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
