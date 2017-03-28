if(global.Move_Room!=0){
   switch(global.Move_Room){
      case 1: iii=(150-alarm[0])/150;
      break;
      case 2: iii= alarm[0]/150;
      break;
   }
   draw_set_alpha(iii);
   draw_set_color(c_black);
   draw_rectangle(0,0,room_width,room_height,false);  
   draw_set_alpha(1);
}

