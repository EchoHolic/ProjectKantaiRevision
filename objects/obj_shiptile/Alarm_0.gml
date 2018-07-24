var i = -1;
var ii = 0;
if(tile != 0){
	if(obj_saver.list_fleet[0,tile-1] != -1){
		ii = obj_saver.list_ship[call_ship_uid(obj_saver.list_fleet[0,tile-1])];
		i = asset_get_index("ship_"+string_format_digit(ii.api_id)+"_tile");
		tile_name = ii.ename;
		tile_level= ii.level
		tile_fuel= ii.fuel;
		tile_ammo= ii.ammo;
	}
	if(sprite_exists(i)){
		sprite_index = i;
	}
	else{
		noship=true;
	}
	y=180+(tile*55);
}