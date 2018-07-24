/// @description Insert description here
// Background and Map
draw_set_alpha(0.1);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);
if(alarm[3] != -1){
draw_set_alpha(alarm[3]/60);	
}
draw_sprite(draw_map,0,room_width/2,room_height/2);

//HUD Overlay
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0,476,room_width,room_height,false);
draw_set_color(color.c_Bright_Blue);
draw_rectangle(0,473,room_width,476,false);

draw_set_alpha(0.5);
draw_set_color(color.c_Navy_Blue);
var i=476;
while(i<room_height){ //Draw the faded interlace
	draw_rectangle(0,i,room_width,i+2,false);
	i+=5;
}

draw_set_alpha(1);
draw_sprite_ext(spr_compass,0,50,531,0.85,0.85,315,c_white,1);
draw_sprite_ext(spr_compass_needle,0,50,531,0.85,0.85,314+compass_wobble2,c_white,1);

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
	}
	i++;
}