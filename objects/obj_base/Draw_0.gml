draw_set_alpha(1);
//Drawing Alpha-Dependant elements
if(move_menu == true){ //Main Menu Alpha
	if(move_menu_dest != 0 && base_visible == true){
		draw_set_alpha(alarm[2]/10);
		secretary_alpha=alarm[2]/10;
	}
	else{
		draw_set_alpha(0);
		secretary_alpha=0;
	}
}
else{
	if(move_menu2 == true && move_menu_dest == 0){
		draw_set_alpha((10-alarm[3])/10);
		secretary_alpha=(10-alarm[3])/10;
	}
	else{
		if(base_visible == true){
			draw_set_alpha(1);	
			secretary_alpha=1;
		}
		else{
			draw_set_alpha(0);
			secretary_alpha=0;
		}
	}
}

if(obj_saver.list_fleet[0,0]!=-1){ //Check for 1st Ship
	if(sprite_exists(secretary)){
		draw_sprite_ext(secretary,0,480,90+secretary_bob,0.85,0.85,0,c_white,secretary_alpha); //Draw Secretary
	}
}
draw_sprite(spr_menuBack,0,234,330); //Button Menu Frame
//Sub Menu Alpha
if(move_menu == true){
	if(move_menu_dest == 0 && base_visible == false){
		draw_set_alpha(alarm[2]/10);
	}
	else{
		draw_set_alpha(1);	
	}
}
else{
	if(move_menu2 == true && move_menu_dest != 0){
		draw_set_alpha((10-alarm[3])/10);
	}
	else{
		if(base_visible == false){
			draw_set_alpha(1);	
		}
		else{
			draw_set_alpha(0);
		}
	}
}
if(base_visible == false){
	draw_set_color(color.c_Navy_Blue);
	if(move_menu_dest != 0){
		draw_rectangle(40,0,47,(room_height*0.3)+(room_height*((10-alarm[3])/10)*0.7),false); //Side Menu Bar
	}
	else{
		draw_rectangle(40,0,47,(room_height*0.3)+(room_height*(alarm[2]/10)*0.7),false); //Side Menu Bar
	}
}
//Draw UI
draw_set_alpha(1);
draw_set_color(color.c_Navy_Blue);
draw_rectangle(3,0,10,room_height,false); //Side Bar
draw_rectangle(0,room_height-16,room_width,room_height,false); //Bottom Bar
draw_rectangle(0,20,room_width,86,false); //Top Menu Bar
draw_set_color(color.c_Pale_Blue);
draw_rectangle(0,0,room_width,20,false); //Top Stats Bar
draw_set_color(color.c_Chalk_White); // Chalk White
draw_rectangle(0,80,room_width,83,false); //Top Menu Separator
draw_rectangle(0,room_height-12,room_width,room_height-14,false); //Bottom Bar Separator
draw_set_color(color.c_Bright_Blue);
draw_rectangle(280,28,282,74,false);//Top Menu Button Separators
draw_rectangle(415,28,417,74,false);//Top Menu Button Separators
draw_rectangle(530,28,532,74,false);//Top Menu Button Separators
draw_rectangle(610,28,612,74,false);//Top Menu Button Separators
draw_bev_rect(728,25,728+110,25+22,color.c_Chalk_White,4,1,1); //Resource Counters (Primary)
draw_bev_rect(728,53,728+110,53+22,color.c_Chalk_White,4,1,1);
draw_bev_rect(844,25,844+110,25+22,color.c_Chalk_White,4,1,1);
draw_bev_rect(844,53,844+110,53+22,color.c_Chalk_White,4,1,1);
draw_bev_rect(613,0,613+110,20,color.c_Chalk_White,4,7,0.3);//Resource Counters (Secondary)
draw_bev_rect(728,0,728+110,20,color.c_Chalk_White,4,7,0.3);
draw_bev_rect(844,0,844+110,20,color.c_Chalk_White,4,7,0.3);
draw_sprite(spr_resources,0,730,26); //Fuel
draw_sprite(spr_resources,1,730,55); //Ammo
draw_sprite(spr_resources,2,846,26); // Steel
draw_sprite(spr_resources,3,846,54); //Bauxite
draw_sprite(spr_resources,4,846,1); //Bucket
draw_sprite(spr_resources,5,730,1); //Dev Material
draw_sprite(spr_resources,6,613,1); //Screws
//Draw Internal Fade-in
if(move_menu_black == true){ //Fade In/Out Effect
   switch(global.Move_Room){
      case 1: move_alpha=(60-alarm[1])/60;
      break;
      case 2: move_alpha=alarm[1]/60;
      break;
   }
   draw_set_alpha(move_alpha);
   draw_set_color(c_black);
   draw_rectangle(0,0,room_width,room_height,false);  
   draw_set_alpha(1);
}

/* Regarding above, holy shit past me actually foresaw and wrote a fadeout transistion
that goes underneath the UI. Future me 1 year later decided to go with a seamless solution
but I'll leave it in; in case I actually need it.
*/

//Draw Menu


draw_set_alpha(1);
draw_set_font(f_BaseName);
draw_set_color(color.c_Pale_Bright_Blue);
draw_set_halign(fa_left);
draw_text(300,2,"HQ Level:");
draw_set_color(color.c_Chalk_White);
draw_text(170,3,global.Name); //Draw Username
draw_text(405,2,global.HQ_Level); // Draw HQ Level
draw_set_halign(fa_right);
draw_text(945,0,string(obj_saver.res_bucket));//Resource Values
draw_text(830,0,string(obj_saver.res_devmat));
draw_text(715,0,string(obj_saver.res_screw));
draw_set_color(color.c_Bright_Blue);
draw_text(830,26,string(obj_saver.res_fuel));
draw_text(830,54,string(obj_saver.res_ammo));
draw_text(945,26,string(obj_saver.res_steel));
draw_text(945,54,string(obj_saver.res_bauxite));


