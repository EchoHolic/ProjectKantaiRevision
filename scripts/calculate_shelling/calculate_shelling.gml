/// @function calculate_shelling(origin_ship, target_ship, turn)
/// @description Calculates shelling damage of origin ship, and applies it to the target ship.
/// @param origin_ship The ship dealing shelling damage
/// @param target_ship The targeted ship dealt damage
/// @param turn The current turn.

var firepower=0;
var armor=0;
var origin=argument0;
var target=argument1;
var turn=argument2;
var damage=0;
var accuracy=0;
var evasion=0;
var hit_rate=0;
var o_morale=0; //Accuracy modifier
var t_morale=0; //Evasion modifier
var o_formation=0;
var t_formation=0;

//Import formation
if(origin.is_enemy == false){
	o_formation=ally_formation;
	t_formation=enemy_formation;
}
else{
	o_formation=enemy_formation;
	t_formation=ally_formation;
}

//Determine Morale modifier
if(origin.morale >= 50){
	o_morale=1.2;	
}
if(origin.morale <= 49 && origin.morale >=30){
	o_morale=1;
}
if(origin.morale <= 29 && origin.morale >=20){
	o_morale=0.8;
}
if(origin.morale <=19){
	o_morale=0.5;	
}

if(target.morale >= 50){
	t_morale=0.7;
}
if(target.morale <= 49 && target.morale >=30){
	t_morale=1;
}
if(target.morale <= 29 && target.morale >=20){
	t_morale=1.2;
}
if(target.morale <=19){
	t_morale=1.4;	
}
//Determine damage and armor roll
firepower = 5+origin.base_firepower;
firepower = firepower*obj_saver.formation[o_formation,0];
armor = (target.base_armor*0.7)+floor(target.base_armor*random_range(0,0.6));

//Determine if attack landed
accuracy=floor((90 + (2*sqrt(origin.level)) + (1.5*sqrt(origin.base_luck)))*obj_saver.formation[o_formation,6]);

evasion=floor((target.base_evasion+sqrt(2*target.base_luck))*obj_saver.formation[t_formation,11]);

//Soft-cap Evasion
if(evasion >= 40){
	if(evasion >= 65){
		evasion=floor(55+(2*sqrt(evasion-65)));	
	}
	else{
		evasion=floor(40+(3*sqrt(evasion-40)));	
	}
}

hit_rate=floor(clamp((accuracy-evasion)*t_morale,10,96))+1;

//Check Hit/Crit/Miss
if(random_range(0,100) <= hit_rate){
	if(random_range(0,100) <= (1.3*sqrt(hit_rate))+1){
		obj_battlecontrol.battle_record[turn,4]=2;
	}
	else{
		crit=false;
		obj_battlecontrol.battle_record[turn,4]=1;
	}
}
else{
	crit=false;
	obj_battlecontrol.battle_record[turn,4]=0;
}

//Deal Damage
switch(obj_battlecontrol.battle_record[turn,4]){
	case 0:
	damage=0;
	break;
	case 1:
	damage=floor(firepower - armor);
	break;
	case 2:
	damage=floor((firepower*1.5) - armor);
	break;
}
if(damage < floor(target.currhp*0.06) ){ //Scratch damage if damage is less than 6% of target current hp
	damage = floor(target.currhp*random_range(0.06,0.14));
}

//Write Damage
obj_battlecontrol.battle_record[turn,3]=damage;
target.currhp-=damage;