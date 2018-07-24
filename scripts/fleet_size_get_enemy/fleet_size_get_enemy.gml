/// @function fleet_size_get(fleet_no)
/// @description Returns the amount of ships in the enemy fleet. argument0 is the fleet number (0-1).
/// @param {real} fleet_no The fleet no. to check (0-1)
var i=0;
var ii=0;
repeat(6){
	if(obj_battlecontrol.enemy_fleet[argument0,i] !=-1 && obj_battlecontrol.enemy_fleet[argument0,i] !=-2){
		ii++;
	}
	i++
}
return ii;