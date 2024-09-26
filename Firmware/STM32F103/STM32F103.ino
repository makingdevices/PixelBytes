// NeoPixel Ring simple sketch (c) 2013 Shae Erisson
// Released under the GPLv3 license to match the rest of the
// Adafruit NeoPixel library

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif

// Which pin on the Arduino is connected to the NeoPixels?
#define PIN PA1 // On Trinket or Gemma, suggest changing this to 1

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 234 // Popular NeoPixel ring size

// When setting up the NeoPixel library, we tell it how many pixels,
// and which pin to use to send signals. Note that for older NeoPixel
// strips you might need to change the third parameter -- see the
// strandtest example for more information on possible values.
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

#define DELAYVAL 30 // Time (in milliseconds) to pause between pixels
int parpadeo = 0;

void setup() {
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  
}

void loop() {
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(10,10, 10));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  delay(10*DELAYVAL);
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(10, 0, 0));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  delay(10*DELAYVAL);
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(0, 10, 0));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  delay(10*DELAYVAL);
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(0,0, 10));
  }
  pixels.show();   // Send the updated pixel colors to the hardware.
  delay(10*DELAYVAL);
  //delay(10*DELAYVAL); 
}
