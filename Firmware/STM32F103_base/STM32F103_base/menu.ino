void menu(){
	char j = 0,i=0 ,option=0;
	clean_buttons();
	print_sprite(10,10,letter_right,0,3,0);
	print_sprite(1,10,letter_left,0,3,0);
	while(j==0){
		while(option==0){
			for(i=4;i<21;i++){
				remove_sprite(6-i,4,letter_S);
				print_sprite(5-i,4,letter_S,0,3,0);
				remove_sprite(11-i,4,letter_N);
				print_sprite(10-i,4,letter_N,0,3,0);
				remove_sprite(17-i,4,letter_A);
				print_sprite(16-i,4,letter_A,0,3,0);
				remove_sprite(22-i,4,letter_K);
				print_sprite(21-i,4,letter_K,0,3,0);
				remove_sprite(27-i,4,letter_E);
				print_sprite(26-i,4,letter_E,0,3,0);
				delay(speed_menu);

				if(read_button(6)==1){ //button
					clean_screen();
					j = 1;
					option = 10;
					break;
				}
			}
			if(option==0){
				for(i=20;i>3;i--){
					remove_sprite(5-i,4,letter_S);
					remove_sprite(10-i,4,letter_N);
					print_sprite(6-i,4,letter_S,0,3,0);
					remove_sprite(16-i,4,letter_A);
					print_sprite(11-i,4,letter_N,0,3,0);
					remove_sprite(21-i,4,letter_K);
					print_sprite(17-i,4,letter_A,0,3,0);
					remove_sprite(26-i,4,letter_E);
					print_sprite(22-i,4,letter_K,0,3,0);
					print_sprite(27-i,4,letter_E,0,3,0);
					delay(speed_menu);

					if(read_button(6)==1){ //button
						clean_screen();
						j = 1;
						option = 10;
						break;
					}
				}
			}
		}
  }
	game_selection = option - 10;
	ingame = 1;
}