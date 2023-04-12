void setup() {
  size(1000, 800);
}
//inicializamos la posicion original de la figura y su direccion
int posicionFiguraX=100;
int posicionFiguraY=100;
boolean direccion=true;


void draw() {
  background(102);
  
  for(int i=1;i<5;i++){
    pushMatrix();
    //Evaluamos si la posicion de la figura ha llegado al techo de la ventana
    if(posicionFiguraY==height){
      direccion=false;
    } 
    //Evaluamos si la posicion de la figura ha llegado al fondo de la ventana
    if(posicionFiguraY==0){
      direccion=true;
    }
    
    //sumamos 1 unidad a la posicion vertical de la figura
    if(direccion){
      posicionFiguraY++;
    }else{
      posicionFiguraY--;
    }
    
    translate(posicionFiguraX*i*1.5, posicionFiguraY);
    rotate(frameCount / 200.0);
    polygon(0, 0, 82, 3);  // Triangle
    popMatrix();
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
