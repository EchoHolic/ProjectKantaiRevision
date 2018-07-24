/// @function fleet_size_get(fleet_id)
/// @description Returns the amount of ships in the requested fleet. argument0 is the fleet number (0-5).
/// @param {real} fleet_id The fleet no. to check (0-5)
//Returns -1 if fleet is invalid.
if(argument0 < 0 || argument0 > 5){
	return -1;
}

var i=0;
var ii=0;
repeat(6){
	if(obj_saver.list_fleet[argument0,i] !=-1){
		ii++;	
	}
	i++
}
return ii;