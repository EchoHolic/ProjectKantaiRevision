api_id=0;
api_sortno=0;
unique_id=0;
jname="";
yname="";
ename="";

maxhp=0;
currhp=0;
level=1;
morale=40;


class="";
remodel=0;
ship_type=0;
class_type=0;
boss_type=0
fleetno=0;

base_firepower=0;
base_torpedo=0;
base_antiair=0;
base_armor=0;
base_luck=0;
base_asw=0;
base_los=0;
base_evasion=0;
base_range=0;
base_speed=0;
base_divebomb=0;
base_weight=0;
base_accuracy=0;

aircraft[0]=0;
aircraft[1]=0;
aircraft[2]=0;
aircraft[3]=0;
aircraft[4]=0;
aircraft_m[0]=0;
aircraft_m[1]=0;
aircraft_m[2]=0;
aircraft_m[3]=0;
aircraft_m[4]=0;

fuel=1;
fuel_m=1;
ammo=1;
ammo_m=1;

equip[0]=0;
equip[1]=0;
equip[2]=0;
equip[3]=0;
equip[4]=0;
equip[5]=0;

equip_range=0;
//For battlecontrol use
battle_order=false;
is_enemy=false;
is_taiha=false;
target_attempted=false;
hp_start=0;
damage_dealt=0;
damage_taken=0;
fleetno=0;

/*
Range - 0 for Very Short, 1 for Short, 2 for Medium, 3 for Long, and 4 for Very Long

Speed - 0 for Slow, 1 for Fast

Weight - How heavy the guns can be before accuracy loss

fuel_m and ammo_m - The total value needed to refuel the ship.

fuel and ammo - Percentage of fuel/ammo remaining on a scale of 0-1. (50% = 0.5, etc)

Ship Type
1 - Kaiboukan
2 - Destroyer
3 - Light Cruiser
4 - Torpedo Cruiser
5 - Heavy Cruiser
6 - Aviation Cruiser
7 - Light Carrier
8 - Fast Battleship
9 - Battleship
10 - Aviation Battleship
11 - Standard Carrier
12 - ?
13 - Submarine
14 - Submarine w/Planes
15 - Transport Ship (Wa-class only)
16 - Seaplane Tender
17 - Amphibious Assault Ship
18 - Armored Carrier
19 - Repair Ship
20 - Submarine Tender
21 - Training Cruiser
22 - Fleet Oiler

Boss Type
0 - None
1 - Demon/Princess/Water Demon
2 - Installation 
3 - Pillbox

Fleet No - Which fleet if combined
*/
