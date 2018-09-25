PImage erin; 
PImage gemma; 
PImage jess; 
PImage juju; 
PImage quinlan; 
PImage kendyll; 
PImage hudson; 
PImage john; 
PImage diggs; 
PImage melina; 
boolean[] clicked = new boolean[10];
boolean eb=false; //eb (erin bradford) corresponding to the image named erin. other booleans follow pattern
boolean gs=false; 
boolean jc=false;
boolean jy=false;
boolean qm=false;
boolean kk=false;
boolean ho=false; 
boolean tj=false; //john john
boolean dk=false; //diggs kinnard
boolean mv=false; 
PImage[] fotos= new PImage[10];
PImage[] people= new PImage[10]; 
int i; //counter for manipulating people, clicked and size array
int j=1; //initializing counter for changing background images
int k; // counter for displaying faces in dock
float[] size= new float[10]; //size of images in people array


void setup() { 
  size(600, 600);
  people[0]=erin= loadImage("ErinB.PNG"); 
  people[1]=gemma= loadImage("Gemma.PNG"); 
  people[2]=jess= loadImage("Jess.PNG");
  people[3]=juju= loadImage("Juliana.PNG"); 
  people[4]=quinlan= loadImage("Quinlan.PNG"); 
  people[5]=kendyll=loadImage("Kendyll.PNG");
  people[6]=hudson=loadImage("Hudson.PNG"); 
  people[7]=john=loadImage("john.PNG"); 
  people[8]=diggs=loadImage("Diggs.PNG"); 
  people[9]=melina=loadImage("Melina.PNG"); 
  clicked[0]=eb;  
  clicked[1]=gs;
  clicked[2]=jc;
  clicked[3]=jy;
  clicked[4]=qm;
  clicked[5]=kk;
  clicked[6]=ho;
  clicked[7]=tj;
  clicked[8]=dk;
  clicked[9]=mv;
  for (int i=0; i<=9; i++) { 
    fotos[i]= loadImage("Spain"+char(i+48)+".jpg");
  }
  for (int i=0; i<=9; i++){
    size[i]=60; 
  }
  background(fotos[1]);
}
void draw() { 
  fill(255); 
  rect(-5, 565, 605, 35); //draw bottom rectangle
  imageMode(CENTER);
  for (int i=0; i<=9; i++) {
    image(people[i], ((size[i])/2)+((size[i])*i), 590, size[i], size[i]); //prints the bottom face images
    if (clicked[i]==true) {
      if (mousePressed) { //see mouse pressed void function
        if (mouseButton == RIGHT) {
          clicked[i] = false;
          image(people[i], mouseX, mouseY, size[i], size[i]);//image takes on coordinates of the mouse permanently
        }
      }
    }
  }
  //changes color to corresponding first letter of key pressed
  if (key=='r') { 
    stroke(255, 0, 0);
  }
  if (key=='o') { 
    stroke(#FF8D00); 
  }
  if (key=='y') { 
    stroke(#FEFF00); 
  }
  if (key=='g') { 
    stroke(#30BC02); 
  }
  if (key=='b') { 
    stroke(0, 0, 255); 
  }
  if (key=='i') { 
    stroke(#5000D3); 
  }
  if (key=='v') { 
    stroke(#B103FC); 
  }
  if (key=='w') { 
    stroke(255);
  }
  if (key=='q') { 
    stroke(0); 
  }
  //ascii code translated to two through ten stroke weight
  if (key>= 49 && key<= 58) {
    strokeWeight(int(key-47));
  } 
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==DOWN) { 
      background(fotos[j]); //flips through fotos array
      j++;
      if (j==10) //corrects for out of bounds
        j=9;
    }
  }
  if (keyCode==UP) { 
    j--;
    if (j==0) //corrects for out of bounds
      j=1; 
    background(fotos[j]); //flips through fotos array 
  }
  if (keyCode==ENTER){
  saveFrame("myimage.jpg"); 
  }
}
void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY); //draws 
}

void mousePressed() { 
  if ((mouseY<=600) && (mouseY>570)) {
    println(i);
    if ((mouseX<=size[i]) && (mouseX> 0)) {
      clicked[0]=true;
    } 
    else if ((mouseX<=(2*size[i]))) {
      clicked[1]=true;
    }
    else if (mouseX<=(3*size[i])) {
      clicked[2]=true;
    }
   else if (mouseX<=(4*size[i])) {
      clicked[3]=true;
    }
    else if (mouseX<=(5*size[i])) {
      clicked[4]=true;
    }
   else  if (mouseX<=(6*size[i])) {
      clicked[5]=true;
    }
    else  if (mouseX<=(7*size[i])) {
      clicked[6]=true;
    }
    else  if (mouseX<=(8*size[i])) {
      clicked[7]=true;
    }
    else  if (mouseX<=(9*size[i])) {
      clicked[8]=true;
    }
    else  if (mouseX<=(10*size[i])) {
      clicked[9]=true;
    }
  }
}