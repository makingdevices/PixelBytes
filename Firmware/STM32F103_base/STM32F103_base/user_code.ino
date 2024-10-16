void loop()
{
  write_color_screen(1,1,1);
  print_sprite(0,2,letter_M,0,0,10);  //We print letter E in R=10, G = 0, B = 0. POSX = 1, POSY = 2;
  print_sprite(5,2,letter_D,0,10,0);  //We print letter V in R=10, G = 0, B = 0. POSX = 1, POSY = 2;
  print_sprite(8,1,letter_V,10,0,0);  //We print letter A in green. X= 7, Y = 1;
  delay(DELAYVAL); 
}
