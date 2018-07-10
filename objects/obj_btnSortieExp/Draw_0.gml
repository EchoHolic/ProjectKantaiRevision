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
	if(obj_base.menu_sortie_mode == 3){
		if(sub_menu_move == true){
			draw_bev_rect(112+(((alarm[0]+1)*(848))/11),152,room_width,560,obj_saver.c_Pale_Blue_2,18,2,1);
		}
	}
	image_alpha=alarm[0]/10;
	draw_set_alpha(alarm[0]/10);
}
draw_rectangle(768,433,853,436,false); //Separators for Sortie Text
draw_set_font(f_BaseSortie); //Sortie Mode Description
draw_set_halign(fa_center);
draw_text_outline(816,455,obj_saver.c_Navy_Blue,obj_saver.c_Chalk_White,"Deploy expeditions to secure \nand supplies and trade routes.",2);
draw_self();
draw_set_alpha(1);