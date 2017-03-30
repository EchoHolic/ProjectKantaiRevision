draw_sprite_ext(spr_gridline,0,-75+i,-75+i,1,1,0,c_white,0.3);
if (i<75){
   i+=0.2;
}
else{
i=0
}
draw_set_alpha(1);
draw_sprite(spr_startborder,0,0,0);
draw_sprite(spr_logo,0,170,52);
draw_set_color(obj_saver.c_Navy_Blue);
draw_set_font(f_SmallText);
draw_text(4,448,string_hash_to_newline("Last Updated: "+date_time_string(GM_build_date)));
draw_set_halign(fa_right);
draw_text(room_width-4,448,string_hash_to_newline("Ver 0.01 "+GM_version));
draw_set_halign(fa_left);
if((mouse_x<room_width/2) && (mouse_y>470 && mouse_y<540)&& !instance_exists(obj_namer)){
   draw_set_color(obj_saver.c_Bright_Blue);
}
draw_rectangle(0,470,room_width/2,540,false); //New Game
draw_set_color(obj_saver.c_Navy_Blue);
if((mouse_x>room_width/2) && (mouse_y>470 && mouse_y<540)&& !instance_exists(obj_namer)){
   draw_set_color(obj_saver.c_Bright_Blue);
}
draw_rectangle(room_width/2,470,room_width,540,false); //Continue
draw_set_color(obj_saver.c_Chalk_White);
draw_rectangle(room_width/2,470,room_width/2+1,540,false);
draw_set_font(f_Menu);
draw_text(260,484,string_hash_to_newline("New Game"));
draw_text(504,484,string_hash_to_newline("Continue"));
draw_sprite(spr_flavor_dawn,0,room_width/2,542);

