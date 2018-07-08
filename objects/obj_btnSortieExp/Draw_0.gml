/// @description Insert description here
// You can write your code in this editor
if(obj_base.move_menu == false){
	if(obj_base.move_menu_dest == 7){
		if(obj_base.move_menu2 == true){
			image_alpha=((10-obj_base.alarm[3])/10);
		}
		else{
			image_alpha=1;
		}
	}
	
	if(obj_base.move_menu_dest != 7){
		instance_destroy();	
	}
}
else{
	if(obj_base.move_menu_dest != 7){
		image_alpha=obj_base.alarm[2]/10;
	}
	else{
		image_alpha=1;
	}
}
draw_self();