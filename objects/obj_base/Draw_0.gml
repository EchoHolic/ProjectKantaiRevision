draw_set_alpha(1);
//Draw Secretary
var secretary = asset_get_index("ship_"+string_format_digit(obj_saver.list_ship[(obj_saver.list_fleet[0,0])].api_sortno)+"_main");
if(obj_saver.list_fleet[0,0]!=-1){
	if(sprite_exists(secretary)){
		draw_sprite_ext(secretary,0,480,90+secretary_bob,0.85,0.85,0,c_white,1);
	}
}

//Draw UI
draw_set_color(obj_saver.c_Navy_Blue);
draw_rectangle(3,0,10,room_height,false); //Side Bar
draw_rectangle(0,room_height-16,room_width,room_height,false); //Bottom Bar
draw_rectangle(0,20,room_width,86,false); //Top Menu Bar
draw_set_color(obj_saver.c_Pale_Blue);
draw_rectangle(0,0,room_width,20,false); //Top Stats Bar
draw_set_color(obj_saver.c_Chalk_White); // Chalk White
draw_rectangle(0,80,room_width,83,false); //Top Menu Separator
draw_rectangle(0,room_height-12,room_width,room_height-14,false); //Bottom Bar Separator
draw_set_color(obj_saver.c_Bright_Blue);
draw_rectangle(280,28,282,74,false);//Top Menu Button Separators
draw_rectangle(415,28,417,74,false);//Top Menu Button Separators
draw_rectangle(530,28,532,74,false);//Top Menu Button Separators
draw_rectangle(610,28,612,74,false);//Top Menu Button Separators
draw_sprite(spr_badgeTop,0,0,0);
draw_sprite(spr_primaryResRect,0,728,25);//Resource Counters (Primary)
draw_sprite(spr_primaryResRect,0,728,53);
draw_sprite(spr_primaryResRect,0,844,25);
draw_sprite(spr_primaryResRect,0,844,53);
draw_sprite(spr_secondaryResRect,0,613,0);//Resource Counters (Secondary)
draw_sprite(spr_secondaryResRect,0,728,0);
draw_sprite(spr_secondaryResRect,0,844,0);
draw_sprite(spr_resources,0,730,26); //Fuel
draw_sprite(spr_resources,1,730,54); //Ammo
draw_sprite(spr_resources,2,846,26); // Steel
draw_sprite(spr_resources,3,846,54); //Bauxite
draw_sprite(spr_resources,4,846,1); //Bucket
draw_sprite(spr_resources,5,730,1); //Dev Material
draw_sprite(spr_resources,6,613,1); //Screws
//Draw Internal Fade-in
if(move_menu){ //Fade In/Out Effect
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

//Draw Menu
draw_sprite(spr_menuBack,0,234,330);
draw_set_font(f_BaseName);
draw_set_color(obj_saver.c_Pale_Bright_Blue);
draw_set_halign(fa_left);
draw_text(300,2,"HQ Level:");
draw_set_color(obj_saver.c_Chalk_White);
draw_text(170,3,global.Name); //Draw Username
draw_text(405,2,global.HQ_Level); // Draw HQ Level
draw_set_halign(fa_right);
draw_text(945,1,string(obj_saver.res_bucket));//Resource Values
draw_text(830,1,string(obj_saver.res_devmat));
draw_text(715,1,string(obj_saver.res_screw));
draw_set_color(obj_saver.c_Bright_Blue);
draw_text(830,27,string(obj_saver.res_fuel));
draw_text(830,55,string(obj_saver.res_ammo));
draw_text(945,27,string(obj_saver.res_steel));
draw_text(945,55,string(obj_saver.res_bauxite));


draw_text(820,540,string(mouse_x)+", "+string(mouse_y));//Temporary