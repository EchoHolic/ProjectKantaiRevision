//Hit Step
action=3;
if(action_type>0){
	//Spawn explosions
	part_emitter_region(obj_battlecontrol.explosion_handler,obj_battlecontrol.explosion_emitter,x+20,x+90,y,y+22,ps_shape_rectangle,ps_distr_invgaussian);
	part_emitter_burst(obj_battlecontrol.explosion_handler,obj_battlecontrol.explosion_emitter,obj_battlecontrol.explosion,action_type);
	if(action_damage != -1){ //If not missed
		currhp-=action_damage;
		var i=string(action_damage); //Set damage numbers to array
		for(var ii=1;ii<=string_length(i);ii++){
			action_number[ii-1]=real(string_char_at(i,ii));
		}
		action_number_l=string_length(i);
	}
	if(currhp < 0){ //If overkilled
		currhp=0;	
	}
	if(currhp < maxhp/2){	//Swap to damaged tile
		image_index=1;
		if(currhp < maxhp/4){
			if(currhp=0){
				damage_status=4;
			}
			else{
				damage_status=3;
			}
		}
		else{
			damage_status=2;	
		}
	}
	else{
		image_index=0;
		if(currhp < (maxhp*1.5)/2){
			damage_status=1;
		}
		else{
			damage_status=0;	
		}
	}
}
alarm[2]=21;