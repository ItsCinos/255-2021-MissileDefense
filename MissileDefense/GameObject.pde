class GameObject {
  
  PImage img;
  
  //stores position to render sprite, in pixels.
  PVector position = new PVector();
  
  //stores angle to render sprite, in degrees.
  float rotation = 0;
  
  
  
  GameObject(PImage img){
    this.img = img;
    
  }
  void update(){
    
  }
  
  void draw(){
    pushMatrix();
    translate(position.x, position.y);
    rotate(radians(rotation));
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }
  
}
