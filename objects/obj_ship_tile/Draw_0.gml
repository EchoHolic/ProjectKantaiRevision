if(is_enemy == false){
	draw_sprite(stile_frame,38,x,y-3);
}
else{
	draw_sprite_ext(stile_frame,0,x,y,-1,1,0,c_white,1);
}
draw_self();

