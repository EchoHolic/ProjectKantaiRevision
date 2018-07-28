image_speed=0;
image_alpha=0;
image_xscale=0.833;
image_yscale=0.833;
fleetno=0; //Position of the tile
is_enemy=-1; //Whether its ally or enemy
appear=false; //When to appear in the screen
ship_src=0; //Reference ship
maxhp=0;
currhp=0;
action=0; //Whether an action needs to be performed
damage_status=0;
action_type=0;
action_fire=0;
action_damage=0;
var i=0;
repeat(4){
	action_number[i]=0;//For damage display
	i++;
}
action_number_d=0; //If number is already spawned
action_number_l=0;
/*Action Types
0 - Firing shot
1 - Receiving shot (miss)
2 - Receiving shot (hit)
3 - Receiving shot (crit)

Damage Status
0 - Full HP
1 - Light Damage
2 - Medium Damage
3 - Heavy Damage
4 - Sunk
*/