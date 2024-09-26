#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif


#define PIN PA1 //pin for the PWM screen

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 234 // Popular NeoPixel ring size

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

#define TIMER_INTERRUPT_DEBUG         0
#define _TIMERINTERRUPT_LOGLEVEL_     0

#include "STM32TimerInterrupt.h"
#include "STM32_ISR_Timer.h"

#define TIMER_INTERVAL_MS         100
#define HW_TIMER_INTERVAL_MS      50

// Init STM32 timer TIM1
STM32Timer ITimer(TIM1);

// Init STM32_ISR_Timer
// Each STM32_ISR_Timer can service 16 different ISR-based timers
STM32_ISR_Timer ISR_Timer;

#define TIMER_INTERVAL_0_50mS         20L
#define TIMER_INTERVAL_0_5S           500L
#define TIMER_INTERVAL_1S             1000L
#define TIMER_INTERVAL_1_5S           1500L

void TimerHandler()
{
  ISR_Timer.run();
}

int var = 0;
int display_matrix[13][18][3] = {0};  //Display matrix

#define DELAYVAL 50 // Time (in milliseconds) to pause between pixels
int parpadeo = 0;

//----------------------------------
// VOID write_screen
// Outcome: nothing
// Income: X and Y position + R, G and B color. MAX VALUE: 30 for the colors
void write_screen(char x, char y,int r,int g, int b){
  if(r>30) r = 30;
  if(g>30) g = 30;
  if(b>30) b = 30;
  display_matrix[x][y][0] = r;
  display_matrix[x][y][1] = g;
  display_matrix[x][y][2] = b;
}

//----------------------------------
// VOID clean_screen
// Outcome: nothing
// Income: nothing
void clean_screen(int x, int y,int r,int g,int b){
  for(int x = 0; x<13; x++){
    for(int y = 0; y<18; y++){
      write_screen(x,y,0,0,0);
    }
  }
}
//----------------------------------
// VOID update_screen
// Outcome: nothing
// Income: 0 for not cleaning. 1 will clean the display before updating.

void update_screen(bool clean = 0){
  int x=0, y=0;
  if(clean==1) pixels.clear();
  for(int i = 0; i<NUMPIXELS; i++){
    x = i % 13;
    y = i / 13;
    pixels.setPixelColor(i, pixels.Color(display_matrix[x][y][0],display_matrix[x][y][1], display_matrix[x][y][2]));
  }
  pixels.show();
}

//----------------------------------
// VOID write_color_screen
// Outcome: nothing
// Income: r, g, b. MAX VALUE 30

void write_color_screen(int r,int g,int b){
  if(r>30) r = 30;
  if(g>30) g = 30;
  if(b>30) b = 30;
  for(int x = 0; x<13; x++){
    for(int y = 0; y<18; y++){
      write_screen(x,y,r,g,b);
    }
  }
}

//COPIED DIRECTLY FROM PICBYTESMICRO
void print_sprite(char x, char y, char *sprite, int brightr = 0,int brightg = 0,int brightb = 0){
	char i = 0;
	for (i=0; i<5; i++)
	{
    //(enable_active_state == HIGH) ? LOW : HIGH
    if(((sprite[0]>>(7-i))&1)==1)write_screen(x+i,y,brightr,brightg,brightb);
		if(((sprite[1]>>(7-i))&1)==1)write_screen(x+i,y+1,brightr,brightg,brightb);
		if(((sprite[2]>>(7-i))&1)==1)write_screen(x+i,y+2,brightr,brightg,brightb);
		if(((sprite[3]>>(7-i))&1)==1)write_screen(x+i,y+3,brightr,brightg,brightb);
		if(((sprite[4]>>(7-i))&1)==1)write_screen(x+i,y+4,brightr,brightg,brightb);
	}
}

void TimerInterrupt()
{
  update_screen(0);
}

void setup()
{
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)

  delay(100);

  // Interval in microsecs
  if (ITimer.attachInterruptInterval(HW_TIMER_INTERVAL_MS * 1000, TimerHandler))
  {
    
  }

  // Just to demonstrate, don't use too many ISR Timers if not absolutely necessary
  // You can use up to 16 timer for each ISR_Timer
  ISR_Timer.setInterval(TIMER_INTERVAL_0_50mS,  TimerInterrupt);
}
