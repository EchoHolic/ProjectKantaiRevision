/// @description Insert description here
// Background and Map
if(room!=rm_battle){
	draw_set_alpha(0.1*m_alpha);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1*m_alpha);
	draw_sprite(draw_map,0,room_width/2,room_height/2);
	if(ship_appear > 0){
		draw_sprite_ext(ship_cg,0,ship_x,90,0.85,0.85,0,c_white,1*m_alpha*ship_alpha)	
	}

	//HUD Overlay
	draw_set_alpha(0.7*m_alpha);
	draw_set_color(c_black);
	draw_rectangle(0,476,room_width,room_height,false);
	draw_set_color(color.c_Bright_Blue);
	draw_rectangle(0,473,room_width,476,false);

	draw_set_alpha(0.5*m_alpha);
	draw_set_color(color.c_Navy_Blue);
	var i=476;
	draw_set_alpha(0.2*m_alpha);
	while(i<room_height){ //Draw the faded interlace
		draw_rectangle(0,i,room_width,i+2,false);
		i+=6;
	}
	draw_set_alpha(1*m_alpha);
	draw_sprite_ext(spr_compass,0,50,531,0.85,0.85,315,c_white,1*m_alpha);
	draw_sprite_ext(spr_compass_needle,0,50,531,0.85,0.85,314+compass_wobble2,c_white,1*m_alpha);

	var i=0;
	while(i<array_length_1d(node_visited)){
		if(i == 0){
			i++;
			continue;
		}
		if(node_visited[i] == true){
			draw_set_color(color.c_Node_Red2);
			draw_circle(node_pos_x[i],node_pos_y[i],13,false);
			draw_set_color(color.c_Node_Red1);
			draw_circle(node_pos_x[i],node_pos_y[i],9,false);
			switch(i){
				case 1:
				draw_sprite(spr_map_1_1_1,0,216,207);
				break;
			}
		}
		i++;
	}
}