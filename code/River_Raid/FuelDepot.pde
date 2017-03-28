public class FuelDepot extends Element{

  FuelDepot(){
    this.type = ElementType.FUEL_DEPOT;
    this.image = loadImage("./images/sprites/fueldepot.png");
    image.resize(viewportW / 6, viewportW / 6);
    updateRandomPosition();
  }
  
  
  void updateRandomPosition(){
    this.xPos = (int)random(200, 600);
    this.yPos = (int)random(-1500, -3000) - this.image.height;
  }

  void update(float nD) {
    yPos += gameSpeed * nD;
  }
  
  void draw(){
    if(yPos >= viewportH + image.height){
      updateRandomPosition();
    }
    
    yPos += gameSpeed;
    image(this.image, x(xPos), yPos);
  }
  
  
}
