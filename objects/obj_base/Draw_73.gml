/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_color(obj_saver.c_Dark_Blue);
draw_set_font(f_BaseName);
draw_set_halign(fa_left);
draw_text(750,540,string(mouse_x)+", "+string(mouse_y)+", "+string(instance_count));//Temporary