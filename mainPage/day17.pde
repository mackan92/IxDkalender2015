
/*void day17(){
  fill(255,247,0);
  ellipse(1700,720,20,20);
  ellipse(1650,720,20,20);
  */
boolean isDay17Initialized = false;
boolean isDay17Open = true;

PImage eyesOpenImage;
PImage eyesClosedImage;
int eyesPosX = 150; 
int eyesPosY = 800;

// Initializes day 8 - only run once.
void initDay17()
{
  eyesOpenImage = loadImage("eyesopen.png");
  eyesClosedImage = loadImage("eyesclosed.png");
}

// Day 8 main code.
void day17()
{
  // Initialize the day on first run.
  if(!isDay17Initialized)
  {
    initDay17();
    isDay17Initialized = true;
  }
  
  if(isDay17Open)
  {
    // Draw eyes.
    // Blink the eyes every 5th second.
    if((second() % 5) == 0)
    {
      image(eyesClosedImage, eyesPosX, eyesPosY + 10);
    }
    else
    {
      image(eyesOpenImage, eyesPosX, eyesPosY );
    }
  }
}