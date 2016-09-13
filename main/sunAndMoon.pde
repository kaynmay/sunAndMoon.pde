//create class for the sun object
class sunClass {
  // load files to create sun shape
  PShape rays = loadShape("rays.svg");
  PShape sun = loadShape("sun.svg");
  
  // set x and y values for where the shapes will start out
  float x = -350;
  float y = 390;
  float angle = 0;
  int counter = 0;
  
  // method to animate the sun
  void Animate(){
    // reset values
    if (x > 703){
      x = -350;
      y = 390;
      angle = 0;
      counter = 0;
    }
    
    // move sun by 5 pixels each time method is called
    x = x + 3;
    counter = counter + 1;
   
   // angle to rotate rays
   if (counter % 5 == 0){
    angle = angle - .4;
   }
    
    if (x > -340){
      if (x > 220){
        y = y + 2;
      }
      else {
        y = y - 2;
      }
    }
  }
  
  // display the sun
  void display() {
    angle = radians(angle);
    background(#38D9DE);
    Animate();
    rays.translate((382.148)/2,(390.148)/2);
    rays.rotate(angle);
    rays.translate(-(382.148)/2,-(390.148)/2);
    shape(rays, x, y, rays.width*.5, rays.height*.5);
    shape(sun, x, y, sun.width*.5, sun.height*.5);  
    }
}

//create class for the moon object
class moonClass {
  // load files to create moon shape
  PShape stars1 = loadShape("stars1.svg");
  PShape moon = loadShape("moon.svg");
  PShape stars2 = loadShape("stars2.svg");
  
  // set x and y values for where the shapes will start out
  float x = -441;
  float y = 350;
  int counter = 0;
  
  // method to animate the moon
  void Animate(){
    // change visibility of stars
    if (x == -441){
      stars1.setVisible(true);
      stars2.setVisible(false);
    }
    if (x%63 == 0){
      if (stars1.isVisible()){
        stars1.setVisible(false);
      }
      else{
        stars1.setVisible(true);
      }
      if (stars2.isVisible()){
        stars2.setVisible(false);
      }
      else{
        stars2.setVisible(true);
      }
    }
    
    // if moon is off the screen go back to starting position
    if (x > 701){
      x = -441;
      y = 350;
    }
    
    // move moon by 5 pixels each time method is called
    x = x + 3;
    
    if (x > -350){
      if (x > 180){
        y = y + 2;
      }
      else {
        y = y - 2;
      }
    }
  }
  
  // display the moon
  void display() {
    background(#131043);
    Animate();
    shape(stars1, x, y, stars1.width*.5, stars1.height*.5);
    shape(moon, x+90, y, moon.width*.5, moon.height*.5);    
    shape(stars2, x, y, stars2.width*.5, stars2.height*.5);
  }
}