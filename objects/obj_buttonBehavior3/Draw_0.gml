if(obj_base.alarm[3] > 0){
	y+=5;
	image_alpha=(10-obj_base.alarm[3])/10;
	draw_self();
}
else{	
	if(obj_base.alarm[2] > 0){
		if(obj_base.move_menu_dest == 0){
			y-=5;
			image_alpha=obj_base.alarm[2]/10;
			draw_self();
			
		}
	}
	else{
		image_alpha=1;	
		draw_self();	
	}
}
if(obj_base.move_menu == false && obj_base.move_menu_dest == 0){
	instance_destroy();	
}