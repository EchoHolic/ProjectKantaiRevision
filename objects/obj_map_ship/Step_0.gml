//Move to destination when needed
if(map_handler.move_allow == true){
	if(map_handler.node_pos_x[map_handler.current_node] < x && image_xscale > (-1)){
		image_xscale -= 0.05;
		exit;
	}
	if(map_handler.node_pos_x[map_handler.current_node] > x && image_xscale < 1){
		image_xscale += 0.05;
		exit;
	}
	if(distance_to_point(map_handler.node_pos_x[map_handler.current_node],map_handler.node_pos_y[map_handler.current_node])>0){
		move_towards_point(map_handler.node_pos_x[map_handler.current_node],map_handler.node_pos_y[map_handler.current_node],1.5);
	}
	else{
		map_handler.move_allow=false;
		map_handler.move_reached=true;
		map_handler.node_visited[map_handler.current_node]=true;
		map_handler.alarm[2]=30;
		speed=0;
	}
}
if(image_alpha<1){
	image_alpha+=1/60;	
}