/// @description Insert description here
// You can write your code in this editor
if(obj_mapHandler.shiptile_dragMaster == true && drag == true){
	drag=false;
	obj_mapHandler.shiptile_dragMaster=false;
	fleet_swap_pos(obj_mapHandler.current_fleet,tile-1,tile_last-1)
	if(tile != tile_last){
		with(obj_mapHandler){event_user(0)}; //Resets fleet position
	}
	y=180+(tile*55);
}