sunClass sun; 
moonClass moon;

int t = 0;

void SunMoonTimer(){
  if(t>732){
    t = 0;
  }
  t=t+1;
}


void setup(){
  size(700,700);
  background(#2DA3EA);
  sun = new sunClass();
  moon = new moonClass();
  
}

void draw(){
  background(#2DA3EA); 
  SunMoonTimer();
  if(t<353){
    sun.display();
    }
    else{
    moon.display();
    }
  
  
}