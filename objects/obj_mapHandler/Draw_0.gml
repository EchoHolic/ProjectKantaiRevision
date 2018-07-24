/// @description Insert description here
// You can write your code in this editor
if(obj_base.move_menu == false){
	if(obj_base.move_menu_dest == 7){
		draw_set_alpha(1);
		borrowedAlpha=1;
	}
	
	if(obj_base.move_menu_dest != 7){
		instance_destroy();	
		exit;
	}
}
else{
	if(obj_base.move_menu_dest != 7){
		draw_set_alpha(obj_base.alarm[2]/10);
		borrowedAlpha=(obj_base.alarm[2]/10)
	}
	else{
		draw_set_alpha(1);
		borrowedAlpha=1;
	}
}
switch(selectedWorld){
	case 0:
	draw_sprite(spr_worldTitle,0,700,90);
}
if(selected >= 1 && selectedMap > 0){
	if(alarm[1] != -1 && alarm[1]!=0){
		xoffset=(11-(alarm[1]+1))*(-422/11);
	}
	if(alarm[0] != -1){
		draw_bev_rect(740+(((alarm[0]+1)*(220))/11),152,room_width,560,color.c_Dark_Blue,18,2,image_alpha);
		draw_bev_rect(742+(((alarm[0]+1)*(218))/11),154,room_width,560,color.c_Navy_Blue_2,17,2,image_alpha);
	}
	else{
		draw_bev_rect(740+xoffset,152,room_width,560,color.c_Dark_Blue,18,2,image_alpha);
		draw_bev_rect(742+xoffset,154,room_width,560,color.c_Navy_Blue_2,17,2,image_alpha);
		if(selectedWorld == 0){
			draw_set_font(f_MapInfoText);
			draw_set_halign(fa_right);
			draw_set_color(color.c_Dark_Blue);
			draw_rectangle(820+xoffset,222,946+xoffset,224,false); //Horizontal Separator
			if(selected == 2){
				draw_rectangle(room_width-1+xoffset,152,room_width+xoffset,560,false); //Vertical Separator
				draw_rectangle(982+xoffset,222,1372+xoffset,224,false); //Horizontal Separator
			}
			draw_set_color(color.c_Pale_Bright_Blue);
			draw_text(946+xoffset,230,"Operation Name");
			draw_text(946+xoffset,295,"Task Description");
			draw_text(946+xoffset,440,"Resources Discoverable");
			switch(selectedMap){ //Map Info when selected
				case 1:
				draw_set_font(f_MapInfoHeader);
				draw_set_color(color.c_Dark_Orange);
				draw_text(946+xoffset,165,"Sea in Front of the\nNaval Base");
				draw_set_font(f_MapInfoText);
				draw_set_color(color.c_Chalk_White);
				draw_text(946+xoffset,250,"Coastal Waters Defense");
				draw_text(946+xoffset,315,"Mobilize for a patrol\nof the waters outside\nthe naval base!");
				draw_text(946+xoffset,460,"-None-");
				break;
				case 2:
				draw_set_font(f_MapInfoHeader);
				draw_set_color(color.c_Dark_Orange);
				draw_text(946+xoffset,165,"Sea around the\nNansei Islands");
				draw_set_font(f_MapInfoText);
				draw_set_color(color.c_Chalk_White);
				draw_text(946+xoffset,250,"Nansei Islands Sea Defense");
				draw_text(946+xoffset,315,"Intercept the enemy's\nvanguard fleet in the seas\noff the Nansei Islands!");
				draw_text(946+xoffset,460,"-None-");
				break;
				case 3:
				draw_set_font(f_MapInfoHeader);
				draw_set_color(color.c_Dark_Orange);
				draw_text(946+xoffset,165,"Coastal Refinery\nZone");
				draw_set_font(f_MapInfoText);
				draw_set_color(obj_saver.c_Chalk_White);
				draw_text(946+xoffset,250,"Maritime Convoy Tactics");
				draw_text(946+xoffset,315,"Protect the supply lines\nfrom our coastal refineries!");
				draw_text(946+xoffset,460,"-None-");
				break;
				case 4:
				draw_set_font(f_MapInfoHeader);
				draw_set_color(color.c_Dark_Orange);
				draw_text(946+xoffset,165,"Hold the Line at\nthe Nansei Islands");
				draw_set_font(f_MapInfoText);
				draw_set_color(color.c_Chalk_White);
				draw_text(946+xoffset,250,"First Southern Operation\nTactics");
				draw_text(946+xoffset,315,"An enemy invasion fleet is\npressing on the defensive\nline in the Nansei Islands.\nSail out at full force\nand destroy them!");
				draw_text(946+xoffset,460,"-None-");
				break;
			}
		}
	}
}
if(selected == false && selectedMap == 0){
	if(alarm[0] != -1){
		if(xoffset < 0){
			draw_bev_rect(318+((room_width-318)*(11-alarm[0])/11),152,room_width,560,color.c_Dark_Blue,18,2,image_alpha);
			draw_bev_rect(320+((room_width-320)*(11-alarm[0])/11),154,room_width,560,color.c_Navy_Blue_2,17,2,image_alpha);
		}
		else{
			draw_bev_rect(740+((220)*(11-alarm[0])/11),152,room_width,560,color.c_Dark_Blue,18,2,image_alpha);
			draw_bev_rect(742+((218)*(11-alarm[0])/11),154,room_width,560,color.c_Navy_Blue_2,17,2,image_alpha);	
		}
	}
}