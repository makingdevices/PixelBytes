#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USB_PCD_Init(void);

#define PIN PA6 //pin for the PWM screen
#define string_five  0 //1 if the string is not correct. 0 if it is.
char splash_enabled = 0;
char ingame = 0; // = 1 if there is a game active.
char speed_menu = 50;
char snake_game_speed = 200;

char buttonmap = 0b00000000;	//Buttons char map
/*
0b12345678
1: Up arrow
2: Down arrow
3: Left arrow
4: Rigth arrow
5: S_b
6: S_a
7: 
8:
*/

char game_selection = 9;

char game_ram[70]={ 
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,     
	 0b00000000,
     0b00000000,
     0b00000000,
     0b00000000,
     0b00000000
 };

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 234 // Popular NeoPixel ring size

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB);

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

#define TIMER_INTERVAL_0_50mS         10L
#define TIMER_INTERVAL_0_5S           500L
#define TIMER_INTERVAL_1S             1000L
#define TIMER_INTERVAL_1_5S           1500L

void TimerHandler()
{
  ISR_Timer.run();
}

int var = 0;
char display_matrix[13][18][3] = {0};  //Display matrix

#define DELAYVAL 50 // Time (in milliseconds) to pause between pixels
int parpadeo = 0;

//----------------------------------
void buzzer_beep(char time = 0){
  time = 5;
}
// VOID read_screen
// Outcome: the intensity of the color
// Income: X and Y position. Color to be read
char read_screen(char x, char y, char color){
  if(string_five==1){
    if (y > 11 && y< 15){
      y +=3;
    } else if (y >= 15){
      y -=3;
    } 
  }
  return display_matrix[x][y][color];
}

// VOID write_screen
// Outcome: nothing
// Income: X and Y position + R, G and B color. MAX VALUE: 30 for the colors
void write_screen(char x, char y,char r,char g, char b){
  bool convertion =0;
  if(r>10) r = 10;
  if(g>10) g = 10;
  if(b>10) b = 10;

  if(string_five==1){
    if (y > 11 && y< 15){
      y +=3;
    } else if (y >= 15){
      y -=3;
    } 
  }

  if(x<13 && y <18 )display_matrix[x][y][0] = r;
  if(x<13 && y <18 )display_matrix[x][y][1] = g;
  if(x<13 && y <18 )display_matrix[x][y][2] = b;
}

//----------------------------------
// VOID clean_screen
// Outcome: nothing
// Income: nothing
void clean_screen(){
  for(char x = 0; x<13; x++){
    for(char y = 0; y<18; y++){
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
  for(char i = 0; i<NUMPIXELS; i++){
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

void write_color_screen(char r,char g,char b){
  if(r>10) r = 10;
  if(g>10) g = 10;
  if(b>10) b = 10;
  for(char x = 0; x<13; x++){
    for(char y = 0; y<18; y++){
      write_screen(x,y,r,g,b);
    }
  }
}

//COPIED DIRECTLY FROM PICBYTESMICRO
void print_sprite(char x,char y, char *sprite, char brightr = 0,char brightg = 0,char brightb = 0){
	for (char i=0; i<5; i++)
	{
    //(enable_active_state == HIGH) ? LOW : HIGH
    if(((sprite[0]>>(7-i))&1)==1)write_screen(x+i,y,brightr,brightg,brightb);
		if(((sprite[1]>>(7-i))&1)==1)write_screen(x+i,y+1,brightr,brightg,brightb);
		if(((sprite[2]>>(7-i))&1)==1)write_screen(x+i,y+2,brightr,brightg,brightb);
		if(((sprite[3]>>(7-i))&1)==1)write_screen(x+i,y+3,brightr,brightg,brightb);
		if(((sprite[4]>>(7-i))&1)==1)write_screen(x+i,y+4,brightr,brightg,brightb);
	}
}

//COPIED DIRECTLY FROM PICBYTESMICRO
void remove_sprite(char x,char y, char *sprite){
	for (char i=0; i<5; i++)
	{
    //(enable_active_state == HIGH) ? LOW : HIGH
    if(((sprite[0]>>(7-i))&1)==1)write_screen(x+i,y,0,0,0);
		if(((sprite[1]>>(7-i))&1)==1)write_screen(x+i,y+1,0,0,0);
		if(((sprite[2]>>(7-i))&1)==1)write_screen(x+i,y+2,0,0,0);
		if(((sprite[3]>>(7-i))&1)==1)write_screen(x+i,y+3,0,0,0);
		if(((sprite[4]>>(7-i))&1)==1)write_screen(x+i,y+4,0,0,0);
	}
}

//COPIED DIRECTLY FROM PICBYTESMICRO
void write_button(char buttonx){
	char new_value= 0b10000000;
	buttonx--;
	new_value = new_value >> buttonx;
	buttonmap = buttonmap|new_value;
}

//COPIED DIRECTLY FROM PICBYTESMICRO
char read_button(char buttonx){
	char answer = 0b00000000;
	answer = buttonmap >> (8-buttonx);
	answer = answer&0b00000001;
	return answer;
}

//COPIED DIRECTLY FROM PICBYTESMICRO
void clean_buttons(void){
	buttonmap=0;
}

void update_buttons(void){
	if(digitalRead(PA0)==LOW) write_button(1); // Up
	if(digitalRead(PA1)==LOW) write_button(2); // Down
	if(digitalRead(PA3)==LOW) write_button(3); // Left
	if(digitalRead(PA2)==LOW) write_button(4); // Right
	if(digitalRead(PA4)==LOW) write_button(5); // B
	if(digitalRead(PA5)==LOW) write_button(6); // A

}

void TimerInterrupt()
{
  update_screen(1);
  if(game_selection==0)snake_check_movement();
  if(ingame==1) clean_buttons();
	update_buttons();
}
