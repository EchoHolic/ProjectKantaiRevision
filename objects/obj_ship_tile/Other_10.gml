///Set sprite
if(is_enemy == false){
	ship_src=obj_battlecontrol.ally_fleet[fleetno];
}
else{
	ship_src=obj_battlecontrol.enemy_fleet[fleetno];	
}
if(ship_src > 0){
	sprite_index=asset_get_index("ship_"+string_format_digit(ship_src.api_id)+"_tile");
	currhp=ship_src.currhp;
}