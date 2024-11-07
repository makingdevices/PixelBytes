
// ----------------- SNAKE GAME ----------------------- //

int snake_length=0;
char unique_mov=0; //his guaranties only one movement per time

unsigned char max_points_snake=0;
void snake_init(void){
	char j;  
	snake_game_speed = 150;
	game_ram[0] = 0; //init movement of the snake
	game_ram[60]=8;	//head x axis
	game_ram[61]=3;	//head y axis
	game_ram[62]=5;	//tale x axis
	game_ram[63]=3; //tale y axis
	game_ram[64]=0; // tale pointer position
	game_ram[65]=0; // snake movement
	game_ram[66]=0; // tale pointer index
	game_ram[67]=0; // food state
	game_ram[68]=0; // food x axis
	game_ram[69]=0; // food y axis
	snake_length=4;	// length of the snake
	max_points_snake=0; //Points for the snake game
  for(j=0;j<13;j++){
		write_screen(j,0,0,1,0);
	}
  for(j=0;j<13;j++){
		write_screen(j,17,0,1,0);
	}
  for(j=0;j<18;j++){
		write_screen(0,j,0,1,0);
	}
  for(j=0;j<18;j++){
		write_screen(12,j,0,1,0);
	}
	for(j=5;j<9;j++){
		write_screen(j,3,0,0,3);
	}
}

void snake_end_game(void){
 	clean_screen();
	game_selection = 9;
	ingame = 0;
}

void food_snake(void){
	while(game_ram[67]==0){
		game_ram[68] = (random(1,11)) + 1;
		game_ram[69] = (random(1,16)) + 1;
		if(read_screen(game_ram[68],game_ram[69],0)==0)game_ram[67] = 1;
		if(game_ram[68] == 1 && game_ram[69]==1) game_ram[67] = 0;
		if(game_ram[68] == 13 && game_ram[69]==1) game_ram[67] = 0;
		if(game_ram[68] == 1 && game_ram[69]==16) game_ram[67] = 0;
		if(game_ram[68] == 13 && game_ram[69]==16) game_ram[67] = 0;
		if(game_ram[67] == 1) max_points_snake++;
	}
	write_screen(game_ram[68],game_ram[69],6,0,0);
}

char stack_snake(char movement, char value){
	if(value==0){
		int head_index_pointer, head_position_pointer;
		head_position_pointer = snake_length + game_ram[64] - 1;
		head_index_pointer = game_ram[66];
		if(head_position_pointer>3){
			head_index_pointer = game_ram[66] + head_position_pointer/4;
			head_position_pointer = head_position_pointer % 4;
		}

		if(head_index_pointer >59) head_index_pointer -=60;  //fix the bug.
		game_ram[head_index_pointer] = game_ram[head_index_pointer]&~(0b00000011<<(6-(2*head_position_pointer)));
		game_ram[head_index_pointer] = game_ram[head_index_pointer]|(movement<<(6-(2*head_position_pointer)));
		return 0;
	} else if(value==1){
		game_ram[64]++; 
		if(game_ram[64]==4){
			game_ram[64]=0;
			game_ram[66]++;
		}
		if(game_ram[66] == 60){
			game_ram[66] = 0;
		}
		return 0;
	} else if(value==2){
		return ((game_ram[game_ram[66]]<<(game_ram[64]*2))&0b11000000);
	}
}

void move_snake(void){
	if(game_ram[60] > 11 || game_ram[60] < 1)snake_end_game();
	if(game_ram[61] > 16 || game_ram[61] < 1)snake_end_game();
	if(game_ram[65]==0b00000000){ //rigth
		if(((game_ram[60]+1)==game_ram[68])&&game_ram[61]==game_ram[69]){
			game_ram[67]=0;	
			if(snake_game_speed>70) snake_game_speed = snake_game_speed - 5;
			game_ram[60]++;
			stack_snake(game_ram[65],0);
			snake_length++;
		}
		game_ram[60]++;
	}
	if(game_ram[65]==0b00000011){//down
		if((game_ram[60]==game_ram[68])&&(game_ram[61]+1)==game_ram[69]){
			game_ram[67]=0;
			if(snake_game_speed>70) snake_game_speed = snake_game_speed - 5;
			game_ram[61]++;
			stack_snake(game_ram[65],0);
			snake_length++;
		}
		game_ram[61]++;
	}
	if(game_ram[65]==0b00000010){ //up
		if((game_ram[60]==game_ram[68])&&(game_ram[61]-1)==game_ram[69]){
			game_ram[67]=0;	
			if(snake_game_speed>70) snake_game_speed = snake_game_speed - 5;
			game_ram[61]--;
			stack_snake(game_ram[65],0);
			snake_length++;
		}
		game_ram[61]--;
	}
	if(game_ram[65]==0b00000001){ //left
		if(((game_ram[60]-1)==game_ram[68])&&game_ram[61]==game_ram[69]){
			game_ram[67]=0;	
			if(snake_game_speed>70) snake_game_speed = snake_game_speed - 5;
			game_ram[60]--;
			stack_snake(game_ram[65],0);
			snake_length++;
		}
		game_ram[60]--;
	}
  if(game_ram[67]==0)write_screen(game_ram[68],game_ram[69],5,0,5); //food eaten is purple!
	if(read_screen(game_ram[60],game_ram[61],2)>0)snake_end_game(); //If we have eaten a part of the snake...
	else write_screen(game_ram[60],game_ram[61],0,0,5); //snake is blue!
	write_screen(game_ram[62],game_ram[63],0,0,0);  //tale remover

	stack_snake(game_ram[65],0);

	if(stack_snake(game_ram[65],2)==0b00000000){
		game_ram[62]++;	
	}
	if(stack_snake(game_ram[65],2)==0b11000000){
		game_ram[63]++;	
	}
	if(stack_snake(game_ram[65],2)==0b01000000){
		game_ram[62]--;	
	}
	if(stack_snake(game_ram[65],2)==0b10000000){
		game_ram[63]--;	
	}
	unique_mov = 0;
	stack_snake(game_ram[65],1); //Stack all the head movement
}

void snake_check_movement(void){
	if(read_button(4)==1 && unique_mov == 0 && (game_ram[65]!=0b00000001)){ //rigth
		unique_mov = 1;
		game_ram[65] = 0b00000000;
	}
	if(read_button(3)==1 && unique_mov == 0 && (game_ram[65]!=0b00000000)){ //left
		unique_mov = 1;
		game_ram[65] = 0b00000001;
	}
	if(read_button(2)==1 && unique_mov == 0 && (game_ram[65]!=0b00000010)){ //down
		unique_mov = 1;
		game_ram[65] = 0b00000011;
	}
	if(read_button(1)==1 && unique_mov == 0 && (game_ram[65]!=0b00000011)){ //up
		unique_mov = 1;
		game_ram[65] = 0b00000010;
	}
}