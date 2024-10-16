
#include "WSEN_ISDS.h"

Sensor_ISDS sensor;
int status;

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif

// Which pin on the Arduino is connected to the NeoPixels?
#define PIN PA6 // On Trinket or Gemma, suggest changing this to 1

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 234 // Popular NeoPixel ring size
#define DELAYVAL 1 // Time (in milliseconds) to pause between pixels

// When setting up the NeoPixel library, we tell it how many pixels,
// and which pin to use to send signals. Note that for older NeoPixel
// strips you might need to change the third parameter -- see the
// strandtest example for more information on possible values.
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

int buttonState_up = 0;
int buttonState_down = 0;
int buttonState_left = 0;
int buttonState_right = 0;
int buttonState_b = 0;
int buttonState_a = 0;


void read_buttons() {
  buttonState_up = digitalRead(PA0);
  buttonState_down = digitalRead(PA1);
  buttonState_right = digitalRead(PA2);
  buttonState_left = digitalRead(PA3);
  buttonState_a = digitalRead(PA4);
  buttonState_b = digitalRead(PA5);
  if(buttonState_up == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("Up button pressed!");
  } 
  if(buttonState_down == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("Down button pressed!");
  } 
  if(buttonState_left == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("Left button pressed!");
  } 
  if(buttonState_right == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("Right button pressed!");
  } 
  if(buttonState_b == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("B button pressed!");
  } 
  if(buttonState_a == LOW){
    digitalWrite(PB14, HIGH);
    Serial.println("A button pressed!");
  } 
}

void setup() {
  Serial.begin(9600);
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)

  // initialize digital pin LED_BUILTIN as an output.
  pinMode(PA0, INPUT);
  pinMode(PA1, INPUT);
  pinMode(PA2, INPUT);
  pinMode(PA3, INPUT);
  pinMode(PA4, INPUT);
  pinMode(PA5, INPUT);
  pinMode(PB14, OUTPUT);
  pinMode(PB2, OUTPUT);
  
    // Initialize the I2C interface
  sensor.init(ISDS_ADDRESS_I2C_1);

  // Reset sensor
  status = sensor.SW_RESET();
  if (WE_FAIL == status)
  {
    Serial.println("Error:  SW_RESET(). Stop!");
    while(1);  
  }

  // Set FIFO ODR to 26Hz
  status = sensor.select_ODR(2);
  if (WE_FAIL == status)
    {
    Serial.println("Error:  select_ODR(). Stop!");
    while(1);  
  }

  // Set high performance mode
  status = sensor.set_Mode(2);
  if (WE_FAIL == status)
  {
    Serial.println("Error:  set_Mode(). Stop!");
    while(1);  
  }
  
  Serial.println("Hello there?");

}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(PB2, HIGH);
  int16_t acc_X;
  int16_t acc_Y;
  int16_t acc_Z;

  // Get acceleration sensor to measure.
  status = sensor.is_ACC_Ready_To_Read();
  if (WE_FAIL == status)
  {
    Serial.println("Error: is_ACC_Ready_To_Read(). Stop!");
    while(1);
  } 
  // Get acceleration along axis in mg
  status = sensor.get_accelerations(&acc_X,&acc_Y,&acc_Z);
  Serial.println("Acceleration along X,Y,Z axis in [mg]: ");
  Serial.print(acc_X);
  Serial.print(" ");
  Serial.print(acc_Y);
  Serial.print(" ");
  Serial.print(acc_Z);
  Serial.println(" ");

    // Check if sensor is ready to measure the temperature
  status = sensor.is_Temp_Ready();
    
  if (WE_FAIL == status)
  {
    Serial.println("Error: is_Temp_Ready(). Stop!");
    while(1);
  }
  else if (1 == status)
  {
    //Print the temperature on the serial monitor
    
    float temperature;
    if (WE_FAIL == sensor.get_temperature(&temperature))
      {
    Serial.println("Error:  get_temperature(). Stop!");
    while(1);  
    }
    Serial.println("Temperature in [°C]: ");
    Serial.println(temperature);
  }
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(0, 0, 3));
    read_buttons();
    delay(DELAYVAL); // Pause before next pass through loop
    pixels.show();   // Send the updated pixel colors to the hardware.
  }
  digitalWrite(PB14, LOW);
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(0, 2, 0));
    delay(DELAYVAL); // Pause before next pass through loop
    read_buttons();
    pixels.show();   // Send the updated pixel colors to the hardware.
  }
  digitalWrite(PB14, LOW);
  for(int i = 0; i<NUMPIXELS; i++){
    pixels.setPixelColor(i, pixels.Color(2,0, 0));
    delay(DELAYVAL); // Pause before next pass through loop
    read_buttons();
    pixels.show();   // Send the updated pixel colors to the hardware.
  }
  digitalWrite(PB14, LOW);

  delay(250); 
}