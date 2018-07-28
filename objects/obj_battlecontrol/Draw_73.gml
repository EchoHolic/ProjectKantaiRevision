if(battle_end=true){ //Darken back when game ends
	draw_set_color(c_black);
	draw_set_alpha(0.5*m_alpha);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(color.c_Navy_Blue_2);
	draw_set_alpha(0.2*m_alpha);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	if(surface_exists(background)){
		surface_set_target(background);
		surface_copy(background,0,0,application_surface);
		surface_reset_target();
	   
	}
	else{
		background=surface_create(960,576);
		surface_set_target(background);
		surface_copy(background,0,0,application_surface);
		surface_reset_target();
	}
	var bsize = shader_get_uniform(sd_blur,"size");
	shader_set(sd_blur);
	shader_set_uniform_f(bsize,room_width,room_height,4*m_alpha);//size of background
	draw_surface(background,0,0);
	shader_reset()//this ends the shader effect
}

draw_sprite_ext(spr_battleframe,0,0,-4,1,1,0,c_white,0.8);
draw_sprite_ext(spr_battleframe,0,room_width-434,room_height+4,1,-1,0,c_white,0.8);

draw_set_alpha(1);
draw_set_color(c_white);
draw_sprite(spr_phaseframe,0,0,30);
draw_sprite_ext(spr_gearicon,0,24,54,1,1,r_gear,c_white,1);
draw_set_color(color.c_Chalk_White);
draw_set_font(f_BattlePhaseHeader);
switch(current_phase){
	case 6:
	draw_text(46,35,"Shelling Phase");
	draw_set_color(color.c_Pale_Bright_Blue);
	draw_set_font(f_MapInfoText);
	draw_text(46,60,"-1st Round-");
	break;
	case 10:
	draw_text(46,35,"Battle Results");
	switch(battle_record[current_turn-1,1]){
		case 0:
		draw_set_color(color.c_Pale_Bright_Blue);
		draw_set_font(f_MapInfoText);
		draw_text(46,60,"-Perfect Victory-")
		break;
		case 1:
		case 2:
		draw_set_color(color.c_Pale_Bright_Blue);
		draw_set_font(f_MapInfoText);
		draw_text(46,60,"-Victory-")
		break;
		case 3:
		draw_set_color(color.c_Pale_Bright_Blue);
		draw_set_font(f_MapInfoText);
		draw_text(46,60,"-Tactical Victory-")
		break;
		case 4:
		draw_set_color(color.c_Pale_Bright_Blue);
		draw_set_font(f_MapInfoText);
		draw_text(46,60,"-Tactical Defeat-")
		break;
		case 5:
		case 6:
		draw_set_color(color.c_Pale_Bright_Blue);
		draw_set_font(f_MapInfoText);
		draw_text(46,60,"-Defeat-")
		break;
	}
	break;
	default:
	draw_text(46,35,"Battle Start");
	break;
}