/// @description Insert description here
// Draw the frame behind the tile
draw_set_color(color.c_Dark_Blue);
draw_rectangle(x-5,y-5,x+404,y+44,false);
draw_set_color(color.c_Pale_Blue);
draw_rectangle(x-3,y-3,x+404,y+42,false);
draw_set_color(color.c_Dark_Blue);
draw_rectangle(x+165,y,x+166,y+40,false);
if(sprite_index != -1){
	draw_self();
}
if(noship == true){
	draw_set_color(color.c_Pale_Blue);
	draw_rectangle(x,y,x+160,y+40,false);
	exit;
}
draw_set_color(color.c_Chalk_White);
draw_set_font(f_BaseName);
draw_set_halign(fa_left);
draw_text(x+170,y-2,tile_name);
draw_text(x+170,y+20,"Lvl. "+string(tile_level));
draw_sprite(spr_resources,0,x+330,y);
draw_sprite(spr_resources,1,x+330,y+22);
draw_text(x+348,y-2,string(floor(tile_fuel*100))+"%");
draw_text(x+348,y+20,string(floor(tile_ammo*100))+"%");