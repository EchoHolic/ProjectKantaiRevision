draw_set_alpha(1);
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
draw_rectangle(295,28,297,74,false);//Top Menu Button Separators
draw_rectangle(430,28,432,74,false);//Top Menu Button Separators
draw_rectangle(546,28,548,74,false);//Top Menu Button Separators
draw_rectangle(630,28,632,74,false);//Top Menu Button Separators
draw_sprite(spr_badgeTop,0,0,0);
draw_sprite(spr_primaryResRect,0,728,25);//Resource Counters (Primary)
draw_sprite(spr_primaryResRect,0,728,53);
draw_sprite(spr_primaryResRect,0,844,25);
draw_sprite(spr_primaryResRect,0,844,53);
draw_sprite(spr_secondaryResRect,0,613,-1);//Resource Counters (Secondary)
draw_sprite(spr_secondaryResRect,0,728,-1);
draw_sprite(spr_secondaryResRect,0,844,-1);
draw_sprite(spr_resources,0,730,26); //Fuel
draw_sprite(spr_resources,1,730,54); //Ammo
draw_sprite(spr_resources,2,846,26); // Steel
draw_sprite(spr_resources,3,846,54); //Bauxite
draw_sprite(spr_resources,4,846,1); //Bucket
draw_sprite(spr_resources,5,730,1); //Dev Material
draw_sprite(spr_resources,6,613,1); //Screws
draw_set_font(f_BaseName);
draw_set_color(obj_saver.c_Pale_Bright_Blue);
draw_text(315,2,"HQ Level:");
draw_set_color(obj_saver.c_Chalk_White);
draw_text(184,3,global.Name); //Draw Username
draw_text(415,3,global.HQ_Level); // Draw HQ Level

