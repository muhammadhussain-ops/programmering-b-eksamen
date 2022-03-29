ArrayList<TextBox> textboxes = new ArrayList<TextBox>();
PImage pilNed;

void setup() {
  size(800, 600);

pilNed = loadImage("Arrow Down.png");

imageMode(CENTER);
  InitLayout();
}

void draw() {
  background(#ADD8E6);
  
  image(pilNed, width/2, height/2, 50, 50);
  

  for (TextBox t : textboxes) {
    t.DRAW();
    
    
  }
}

void InitLayout() {
  TextBox receiver = new TextBox(1);
  receiver.W = 300;
  receiver.H = 30;
  receiver.X = (width - receiver.W) / 2;
  receiver.Y = 50;
  
  TextBox receiver2 = new TextBox(0);
  receiver2.W = 300;
  receiver2.H = 30;
  receiver2.X = (width - receiver.W) / 2;
  receiver2.Y = 350;
  

  
  
  textboxes.add(receiver);
  textboxes.add(receiver2);

  TextBox message = new TextBox((width - 300) / 2, 100, 300, 100,0);
  textboxes.add(message);
  
  TextBox message2 = new TextBox((width - 300) / 2, 400, 300, 100,0);
  
  message2.farve =   #808080;
 
  textboxes.add(message2);
}


void mousePressed() {
  float musX = mouseX;
  float musY = mouseY;
  for (TextBox t : textboxes) {
    t.PRESSED(musX, musY);
  }
}
