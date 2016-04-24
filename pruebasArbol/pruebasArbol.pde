/**
 * Array 2D. 
 * 
 * Demonstrates the syntax for creating a two-dimensional (2D) array.
 * Values in a 2D array are accessed through two index values.  
 * 2D arrays are useful for storing images. In this example, each dot 
 * is colored in relation to its distance from the center of the image. 
 */

float[][] distances;
float maxDistance;
int spacer; 
PImage imgArbol;
Bosque b1 = new Bosque(20, 10, 0.5, 0, 0, imgArbol); 
void setup() {
  size(640, 360);
  
  b1.sortear();
}

void draw() {
  background(0);
  
}



class Bosque{
  int w;
  int h;
  float density;
  int posX;
  int posY;
  PImage img;
 /* 
    ......X..
    ...X.....
    .X....X..
 */
  boolean [][] posiciones;
 
  
  public Bosque(int w, int h, float d, int posX, int posY, PImage img){
    this.w=w;
    this.h=h;
    this.density= d;
    this.posX=posX;
    this.posY=posY;
    this.img=img;
    posiciones = new boolean[h][w];
  }
  
  public void sortear(){
    for(int j=0;j<h;j++){
      for(int i=0;i<w;i++){
        if(Math.random()>this.density){
          posiciones[j][i]=false;
        }else{
          posiciones[j][i]=true;
        }
      }
    }
    
  }
  
  public void dibujar(){
    for(int j=0;j<h;j++){
      for(int i=0;i<w;i++){
        if( posiciones[j][i] == true){
          image(this.img, i*20, j*40); 
        }
      }
    }
    
  }
  
  
}