
Player thePlayer;
GameObject background;

ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();

void setup(){
  size(700, 800);
  
  thePlayer = new Player();
  background = new GameObject(loadImage("space.png"));
  background.position.x = width / 2;
  background.position.y = height / 2;
  
  for(int i = 0; i < 10; i++) {
   Asteroid a = new Asteroid();
   asteroids.add(a);    
  }

}

void draw(){
  //==updates==
  for(Asteroid a : asteroids) a.update();
  thePlayer.update();
  
  
  //==draw==
  background(0);
  background.draw();
  
  for(Asteroid a : asteroids) a.draw();
  
  thePlayer.draw();

}

PImage GetRandomAsteroidImage(){
  PImage img = null;
   
   int num = (int)random(0, 3);
   switch(num){
     case 0:
     img = loadImage("asteroid1.png");
     break;
     case 1:
     img = loadImage("asteroid2.png");
     break;
     case 2:
     default:
     img = loadImage("asteroid3.png");
     break;
 }
     return img;
}
   
