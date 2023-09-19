void setup(){
  size(1200, 1200);

}


void draw(){

  boolean shift = true; 
  for(int y = 0; y < 1500; y+= 50)
  {
    for(int x = 0; x < 1500; x+= 50)
    {
      if(shift == true){
        rotate(PI/4000.0);
        feather(x+200, y+200);
      } else { 
         rotate(PI/2000.0);
        feather(x, y);
       }
    }
    if(shift == true)
      shift = false; 
      else
      shift = true;
  }

}

void feather(int x, int y){
  float h = random(0, 360);
  fill(h+120, 190, 190);
  stroke(0, 0, 0);
   strokeWeight(1.5);
  ellipse(x, y, 55, 130);
  ellipse(x, y - 80, 40, 100);
   ellipse(x, y, 90, 135);
  ellipse(x, y+20, 60, 120);
  fill(#FF9999);
  ellipse(x, y - 145, 29, 55);
  strokeWeight(1);
  line(x, y-175, x, y+95);
  
  
}
