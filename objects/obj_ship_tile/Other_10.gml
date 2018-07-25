///Set sprite
//This will not work for the future replay feature; Need to store basic stats into battle_record.
if(is_enemy == false){
	ship_src=obj_battlecontrol.ally_fleet[fleetno];
	image_alpha=1;
	alarm[0]=20+12*fleetno;
}
else{
	ship_src=obj_battlecontrol.enemy_fleet[fleetno];
	alarm[0]=70+12*obj_battlecontrol.ally_fleet_size;
}
if(ship_src > 0){
	sprite_index=asset_get_index("ship_"+string_format_digit(ship_src.api_id)+"_tile");
	currhp=ship_src.currhp;
	maxhp=ship_src.maxhp
	ship_src.fleetno=fleetno;
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