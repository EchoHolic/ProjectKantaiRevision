//Background blurring
var bsize = shader_get_uniform(sd_blur,"size");
shader_set(sd_blur)
shader_set_uniform_f(bsize,960,576,4*((24-alarm[0])/24))//size of background
if(surface_exists(background)){
	surface_set_target(background);
	draw_surface(application_surface,0,0);
	surface_reset_target();
   draw_surface(background,0,0);
}
else{
   background=surface_create(960,576);
   surface_set_target(background);
	draw_surface(application_surface,0,0);
	surface_reset_target();
   draw_surface(background,0,0);
}

shader_reset()//this ends the shader effect

//Drawing Name Box
draw_set_alpha((10-alarm[0])/10);
draw_set_color(obj_saver.c_Navy_Blue);
draw_rectangle(0,195+50*(alarm[0]/10),room_width,320+50*((10-alarm[0])/10),false); // Back Bar


draw_set_color(obj_saver.c_Pale_Blue);
draw_rectangle(316,265+alarm[0],644,310-alarm[0],false); //Name Box

draw_set_color(obj_saver.c_Chalk_White);
draw_set_font(f_Namer);
if string_length(keyboard_string) > 16
{
   keyboard_string = string_copy(keyboard_string, 1, 16);
}
draw_set_halign(fa_center);
draw_text(room_width/2,270,string_hash_to_newline(keyboard_string+"|"));
draw_set_halign(fa_left);

draw_sprite(spr_menu_name,0,room_width/2,214);

