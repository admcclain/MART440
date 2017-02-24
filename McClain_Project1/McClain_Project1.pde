PImage img;//datatype for storing images
float x;//x coordinate of rectangle
float y;//y coordinate of rectangle

//setup() defines the intital environment properties for a sketch
void setup() {
  
  size(640, 480);//dimension of display window's W and H in pixels

  textSize(35);//size of text
  textAlign(CENTER, TOP);//alignment of text
  
  img = loadImage("GameOver.jpg");//load image
  
  x = width/2;//position for x
  y = height/2;//position for y  
}

//draw() is called automatically, is directly after setup(), and continuously executes lines   
//of code contained inside its block until the program is stopped or noLoop() is called
void draw() { 
  background(69, 26, 100);//background of sketch
 
  fill(0, 124, 108);//color of text
  text("Press Button To Play", 320, 40);//draws text in the window
  
  // if the cursor is over the rectangle it changes position
  if (abs(mouseX - x) < x &&
      abs(mouseY - y) < y) {
    x += random(-10, 10);
    y += random(-10, 10);
  }
  
  rectMode(CENTER);//sets rectMode to CENTER
  fill(183, 52, 52);//color of rectangle
  stroke(150);//stroke on rectangle
  strokeWeight (2);//stroke weight on rectangle
  //syntax: rect(a[float x], b[float y], c[float width], d[float height], r[float radii for all four corners])
  rect(x, y, 100, 75, 10);//draws rectangle in this sketch

  //mousePressed calls "GameOver" image when a mouse button is currently being pressed 
  if(mousePressed == true){
    image(img, 0, 0);
    }
}

//mouseReleased exits sketch once the mouse button is released
void mouseReleased(){
  exit();
}