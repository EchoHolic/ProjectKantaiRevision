if(global.Move_Room!=0){ //Fade In/Out Effect
   switch(global.Move_Room){
      case 1: iii=(60-alarm[0])/60;
      break;
      case 2: iii= alarm[0]/60;
      break;
   }
   draw_set_alpha(iii);
   draw_set_color(c_black);
   draw_rectangle(0,0,room_width,room_height,false);  
   draw_set_alpha(1);
}

//Temporary
draw_set_alpha(1);
draw_set_color(color.c_Dark_Blue);
draw_set_font(f_BaseName);
draw_set_halign(fa_left);
draw_text(750,540,string(mouse_x)+", "+string(mouse_y)+", "+string(instance_count));