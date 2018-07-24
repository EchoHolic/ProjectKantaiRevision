/// @description Insert description here
// You can write your code in this editor
obj_saver.sortie_fleet=current_fleet;
obj_saver.sortie_map=selectedMap;
obj_saver.sortie_world=selectedWorld;
room_goto(asset_get_index("rm_map_"+string(selectedWorld+1)+"_"+string(selectedMap)));