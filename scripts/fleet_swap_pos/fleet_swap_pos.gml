//Swaps the UIDs of two ships in the fleet. Use the position of the ships in the fleet as arguments.
//argument0 - Fleet to swap (0-5)
//argument1 - 1st ship position (0-5)
//argument2 - 2nd ship position (0-5)
//argument1 MUST be a valid ship.
//Returns -1 if either arguments or requirements are invalid. Returns 1 if it succeeds.
//Check if space is valid. Earlier slots may not be empty. If empty, move all ships upwards to fill space.
if(argument0 > 5 || argument1 > 5 || argument2 > 5){
	return -1;	
}
if(argument0 < 0 || argument1 < 0 || argument2 > 0){
	return -1;	
}
var transfer1 = obj_saver.list_fleet[argument0,argument1];
var transfer2 = obj_saver.list_fleet[argument0,argument2];
if(transfer1 = -1){
	return -1;
}
if(transfer2 = -1){
	var i=argument1;
	repeat(argument2-argument1){
		if((i+1) <= 6){
			if(obj_saver.list_fleet[argument0,i+1] != -1){
				obj_saver.list_fleet[argument0,i]=obj_saver.list_fleet[argument0,i+1];
				i++;
			}
			else{
				obj_saver.list_fleet[argument0,i]=transfer1;
				return 1;
			}
		}
	}
}
else{
	obj_saver.list_fleet[argument0,argument2] = obj_saver.list_fleet[argument0,argument1];
	obj_saver.list_fleet[argument0,argument1] = transfer2;
	return 1;
}