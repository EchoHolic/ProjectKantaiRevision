/// @function check_valid_target(origin_ship, target_ship)
/// @description Checks validity of the target and returns false if invalid, and true if valid.
/// @param origin_ship The ship dealing shelling damage
/// @param target_ship The targeted ship dealt damage

var origin=argument0;
var target=argument1;

//If target is a submarine, and origin is unable to attack submarines
if(target.ship_type == 13||target.ship_type == 14){
	switch(origin.ship_type){
		case 5: //Heavy Cruiser
		case 8: //Fast Battleship
		case 9: //Battleship
		case 11: //Standard Carrier
		case 13: //Submarine
		case 14: //Submarine w/Planes
		case 18: //Armored Carrier
		case 19: //Repair Ship
		case 20: //Submarine Tender
		return false;
		break;
		
		case 6: //Aviation Cruiser
		case 10: //Aviation Battleship
		case 16: //Seaplane Tender
		//Check for Seaplane Bomber equipped
		break;
		
		case 7: //Light Carrier
		case 22: //Fleet Oiler
		//Check for Torpedo/Dive Bomber equipped
		break;
	}
}

return true;