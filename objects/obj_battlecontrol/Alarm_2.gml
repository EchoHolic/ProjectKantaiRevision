//Battle End
if(battle_end == false){
	battle_end=true;
	alarm[2]=40;
}
else{
	instance_create_depth(room_width/2,room_height/2,-1,obj_battlerank);	
}