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

if(obj_base.menu_sortie_mode != 0){//Drawing menu if pressed
	if(obj_base.menu_sortie_mode == 2){
		if(sub_menu_move == true){
			draw_bev_rect(112+(((alarm[0]+1)*(848))/11),152,room_width,560,color.c_Pale_Blue_2,18,2,1);
			
		}
	}
	image_alpha=alarm[0]/10;
	draw_set_alpha(alarm[0]/10);
}
draw_rectangle(460,433,545,436,false); //Separators for Sortie Text
draw_set_font(f_BaseSortie); //Sortie Mode Description
draw_set_halign(fa_center);
draw_text_outline(504,455,color.c_Navy_Blue,color.c_Chalk_White,"Practice with your allies and \ngain experience safely!",2);
draw_self();
draw_set_alpha(1);