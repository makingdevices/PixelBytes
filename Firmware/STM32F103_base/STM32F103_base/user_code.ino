void setup()
{
  //Serial.begin(9600);
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
    // initialize PINs
  pinMode(PA0, INPUT);
  pinMode(PA1, INPUT);
  pinMode(PA2, INPUT);
  pinMode(PA3, INPUT);
  pinMode(PA4, INPUT);
  pinMode(PA5, INPUT);
  pinMode(PB8, OUTPUT); //Screen activation
  pinMode(PB2, OUTPUT);
  digitalWrite(PB2, HIGH);
  digitalWrite(PB8, LOW);
  delay(100);

  // Interval in microsecs
  if (ITimer.attachInterruptInterval(HW_TIMER_INTERVAL_MS * 1000, TimerHandler))
  {
    
  }

  // Just to demonstrate, don't use too many ISR Timers if not absolutely necessary
  // You can use up to 16 timer for each ISR_Timer
  ISR_Timer.setInterval(TIMER_INTERVAL_0_50mS,  TimerInterrupt);
  splash_init();
  clean_screen();
}

void loop()
{
  clean_screen();
  menu();
  if(game_selection==0) snake_init();
  while(game_selection==0){
		delay(snake_game_speed);
		food_snake();
		move_snake();
	}
  delay(DELAYVAL); 
}

void splash_init()
{
	char shift,j,g,i;
	if(splash_enabled == 1){
		for(g=0;g<18;g++){
			for(j=0;j<13;j++){
				write_screen(j,g,5,0,0);
				delay(12); 
			}
		}
	
		for(g=0;g<18;g++){
			for(j=0;j<13;j++){
				write_screen(j,g,0,0,0);
				delay(12); 
			}
		}
		for(i=0;i<70;i++){
			remove_sprite(11-i,4,letter_M);
			print_sprite(10-i,4,letter_M,0,0,5);
			remove_sprite(16-i,4,letter_A);
			print_sprite(15-i,4,letter_A,0,0,5);
			remove_sprite(21-i,4,letter_K);
			print_sprite(20-i,4,letter_K,0,0,5);
			remove_sprite(26-i,4,letter_I);
			print_sprite(25-i,4,letter_I,0,0,5);
			remove_sprite(31-i,4,letter_N);
			print_sprite(30-i,4,letter_N,0,0,5);
			remove_sprite(36-i,4,letter_G);
			print_sprite(35-i,4,letter_G,0,0,5);
			remove_sprite(36-i,9,letter_D);
			print_sprite(35-i,9,letter_D,0,0,5);
			remove_sprite(41-i,9,letter_E);
			print_sprite(40-i,9,letter_E,0,0,5);
			remove_sprite(46-i,9,letter_V);
			print_sprite(45-i,9,letter_V,0,0,5);
			remove_sprite(51-i,9,letter_I);
			print_sprite(50-i,9,letter_I,0,0,5);
			remove_sprite(56-i,9,letter_C);
			print_sprite(55-i,9,letter_C,0,0,5);
			remove_sprite(61-i,9,letter_E);
			print_sprite(60-i,9,letter_E,0,0,5);
			remove_sprite(66-i,9,letter_S);
			print_sprite(65-i,9,letter_S,0,0,5);
			delay(30); 
		}
  }
}