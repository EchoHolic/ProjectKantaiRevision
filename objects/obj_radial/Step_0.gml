if(instance_exists(obj_map_ship) == true){
	x=obj_map_ship.x;
	y=obj_map_ship.y;
}
if(map_handler.move_reached==false){
	image_alpha=0;
	exit;
}
if(image_xscale<1){
	image_xscale+=0.025;
	image_yscale+=0.025;
	image_alpha=(1-image_xscale)/1*map_handler.m_alpha;
}
else{
	if(alarm[0] == -1){
		alarm[0]=45;	
	}
}
