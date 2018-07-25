draw_sprite_ext(spr_battleframe,0,0,0,1,1,0,c_white,1);
draw_sprite_ext(spr_battleframe,0,room_width-434,room_height,1,-1,0,c_white,1);
if(battle_end=true){
	draw_set_color(c_black);
	draw_set_alpha(0.4*m_alpha);
	draw_rectangle(0,0,room_width,room_height,false);
}