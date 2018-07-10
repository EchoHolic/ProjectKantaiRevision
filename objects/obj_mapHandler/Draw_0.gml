/// @description Insert description here
// You can write your code in this editor
if(obj_base.move_menu == false){
	if(obj_base.move_menu_dest == 7){
		draw_set_alpha(1);
	}
	
	if(obj_base.move_menu_dest != 7){
		instance_destroy();	
		exit;
	}
}
else{
	if(obj_base.move_menu_dest != 7){
		draw_set_alpha(obj_base.alarm[2]/10);
	}
	else{
		draw_set_alpha(1);
	}
}
if(selected == true && selectedMap > 0){
	if(alarm[0] != -1){
		draw_bev_rect(740+(((alarm[0]+1)*(220))/11),152,room_width,560,obj_saver.c_Dark_Blue,18,2,image_alpha);
		draw_bev_rect(742+(((alarm[0]+1)*(218))/11),154,room_width,560,obj_saver.c_Navy_Blue_2,17,2,image_alpha);
	}
	else{
		draw_bev_rect(740,152,room_width,560,obj_saver.c_Dark_Blue,18,2,image_alpha);
		draw_bev_rect(742,154,room_width,560,obj_saver.c_Navy_Blue_2,17,2,image_alpha);	
		switch(selectedMap){
			case 1:
			draw_set_font(f_MapInfoHeader);
			draw_set_halign(fa_right);
			draw_set_color(obj_saver.c_Dark_Orange);
			draw_text(946,165,"Sea in Front of the\nNaval Base");
			draw_set_color(obj_saver.c_Dark_Blue);
			draw_rectangle(820,221,946,223,false);
			draw_set_font(f_MapInfoText);
			draw_set_color(obj_saver.c_Pale_Bright_Blue);
			draw_text(946,230,"Operation Name");
			draw_text(946,290,"Task Description");
			draw_text(946,440,"Resources Discoverable");
			draw_set_color(obj_saver.c_Chalk_White);
			draw_text(946,250,"Coastal Waters Defense");
			draw_text(946,310,"Mobilize for a patrol\nof the waters outside\nthe naval base!");
			draw_text(946,460,"-None-");
			break;
		}
	}
}
if(selected == false && selectedMap == 0){
	if(alarm[0] != -1){
		draw_bev_rect(740+((220)*(11-alarm[0])/11),152,room_width,560,obj_saver.c_Dark_Blue,18,2,image_alpha);
		draw_bev_rect(742+((218)*(11-alarm[0])/11),154,room_width,560,obj_saver.c_Navy_Blue_2,17,2,image_alpha);
	}
}