draw_set_alpha(1);
draw_sprite_ext(spr_gridline,0,-75+i,-75+i,1,1,0,c_white,0.3);
if (i<75){
   i+=0.2;
}
else{
i=0
}
draw_sprite(spr_starter_logo,0,50,25);
draw_set_color(obj_saver.c_Navy_Blue);
draw_rectangle(48,196,538,199,false);
draw_rectangle(48,336,538,339,false);
switch(selection){
   case 0:draw_sprite_ext(ship_011_main,0,500,10,0.8,0.8,0,c_white,1);
   break;
   case 1:draw_sprite_ext(ship_074_main,0,540,30,0.8,0.8,0,c_white,1);
   break;
   case 2:draw_sprite_ext(ship_015_main,0,335,-10,0.8,0.8,0,c_white,1);
   break;
   case 3:draw_sprite_ext(ship_083_main,0,460,30,0.8,0.8,0,c_white,1);
   break;
   case 4:draw_sprite_ext(ship_069_main,0,525,0,0.8,0.8,0,c_white,1);
   break;
   case 5:draw_sprite_ext(ship_210_main,0,450,0,0.8,0.8,0,c_white,1);
   break;
}
draw_sprite(spr_starter_description,selection,30,142);
draw_sprite(spr_starter_dialogue,selection,344,50);
for(ii=0;ii<=4;ii++){
   draw_sprite(spr_starter_check,0,room_width/2-62+(ii*25),446);
   if(ii==selection){
   draw_rectangle(room_width/2-62+(ii*25),446,room_width/2-51+(ii*25),457,false);
   }
}
draw_set_color(obj_saver.c_Chalk_White);
draw_rectangle(0,540,room_width,564,false);
draw_rectangle(200,470,202,535,false);
draw_rectangle(room_width-202,470,room_width-200,535,false);
draw_sprite(spr_flavor_touhou,0,room_width/2,544)
draw_set_color(obj_saver.c_Navy_Blue);
draw_rectangle(0,0,room_width,12,false);
draw_rectangle(0,564,room_width,room_height,false);

