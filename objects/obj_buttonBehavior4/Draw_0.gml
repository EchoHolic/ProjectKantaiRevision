/// @description Insert description here
// You can write your code in this editor
if(obj_base.move_menu == false){
	if(obj_base.move_menu_dest == 7){
			image_alpha=1;
	}
	
	if(obj_base.move_menu_dest != 7){
		instance_destroy();	
		exit;
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
if(hover == true && obj_base.move_menu_dest == 7){
	draw_set_alpha(1);
	draw_sprite(spr_maptile_hover,0,x-1,y-1);
}
