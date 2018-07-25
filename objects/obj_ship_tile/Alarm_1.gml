action=3;
if(action_type>0){
	part_emitter_region(obj_battlecontrol.explosion_handler,obj_battlecontrol.explosion_emitter,x+20,x+90,y,y+22,ps_shape_rectangle,ps_distr_invgaussian);
	part_emitter_burst(obj_battlecontrol.explosion_handler,obj_battlecontrol.explosion_emitter,obj_battlecontrol.explosion,action_type);
	if(action_damage != -1){
		currhp-=action_damage;
	}
	if(currhp < 0){
		currhp=0;	
	}
	if(currhp < maxhp/2){	//Swap to damaged tile
		image_index=1;
		if(currhp < maxhp/4){
			if(currhp=0){
				damage_status=4;
			}
			else{
				damage_status=2;
			}
		}
		else{
			damage_status=3;	
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