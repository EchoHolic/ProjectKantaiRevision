/// @description Insert description here
// You can write your code in this editor
if(obj_base.move_menu == true){
	if(obj_base.move_menu_dest != 0 && obj_base.base_visible == true){
		image_alpha=obj_base.alarm[2]/10;
	}
}
else{
	if(obj_base.base_visible == true){
		if(obj_base.move_menu2 == true){
			image_alpha=((10-obj_base.alarm[3])/10);
		}
		else{
			image_alpha=1;	
		}
	}
	else{
		image_alpha=0;
	}
}
draw_self();