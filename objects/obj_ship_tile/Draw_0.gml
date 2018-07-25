if(is_enemy == false){
	draw_set_alpha(1);
	draw_sprite(stile_frame,0,x,y-3);
}
else{
	draw_sprite_ext(stile_frame,0,x+160,y-3,-1,1,0,c_white,image_alpha);
}
draw_self();

//Draw HP
var i=merge_color(color.c_Node_Green1,color.c_Node_Red2,1-(currhp/maxhp));
draw_set_color(i);
draw_set_alpha(image_alpha)
if(is_enemy==false){
	draw_rectangle(x+161,y+(38*(1-(currhp/maxhp))),x+164,y+38,false);
}
else{
	draw_rectangle(x-5,y+(38*(1-(currhp/maxhp))),x-2,y+38,false);	
}
draw_set_color(color.c_Chalk_White);
draw_set_font(f_BattleHP);
if(is_enemy==false){
	draw_set_halign(fa_left);
	draw_text(x+178,y+11,string(currhp)+"/"+string(maxhp));
}
else{
	draw_set_halign(fa_right);
	draw_text(x-18,y+11,string(currhp)+"/"+string(maxhp));
}
