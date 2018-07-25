//Generate Battle Results
//Find current map handler.
map_handler=instance_find(asset_get_index("obj_map_"+string(obj_saver.sortie_world+1)+"_"+string(obj_saver.sortie_map)),0);

//Init temp variables
var comma1=1;
var comma2=1;
var i=0;
var ii=0;
var iii=0;
var iv=0;
var v=0;
var vi=0;

//Init layers
layer_bar=layer_create(5);
layer_ship=layer_create(10);
layer_bar2=layer_create(4);
layer_particle=layer_create(6);
//Init Particle system
explosion_handler=part_system_create_layer(layer_particle,false);
explosion_emitter=part_emitter_create(explosion_handler);
explosion=part_type_create();
part_type_sprite(explosion,spr_explosion,true,true,false);
part_type_size(explosion,0.55,0.75,0,0);
part_type_life(explosion,10,15);

//Generate Fleet
current_turn=1; //Current executed turn
battle_end=false;
m_alpha=0;
ally_formation=map_handler.formation_selected;
ally_fleet_size=fleet_size_get(obj_saver.sortie_fleet);
ally_combined_fleet=false; //Placeholder
ally_sunk_count=0;
repeat(6){
	ii=call_ship_uid(obj_saver.list_fleet[obj_saver.sortie_fleet,i]);
	if(ii!=-1){
		ally_fleet[0,i]=obj_saver.list_ship[call_ship_uid(obj_saver.list_fleet[obj_saver.sortie_fleet,i])];
	}
	else{
		ally_fleet[0,i]=-1;	
	}
	i++
}
i=0;
repeat(6){
	enemy_fleet[0,i]=-2;
	enemy_fleet[1,i]=-2;
	i++
}

//Retrieve enemy data from map handler
//Enemy Formation is held in enemy_fleet[0,6]
enemy_data=map_handler.node_enemy[map_handler.current_node,irandom_range(0,array_length_2d(map_handler.node_enemy,map_handler.current_node)-1)];
repeat(7){ 
	for(ii=1;ii<=string_length(enemy_data);ii++){
		if (string_char_at(enemy_data,ii)==","){
			comma1=comma2;
			comma2=ii;
			if (iii<6){
				create_enemy(string_copy(enemy_data,comma1,comma2-comma1));
			}
			else{
				enemy_formation=real(string_copy(enemy_data,comma1,comma2-comma1));
			}
			comma2++;
			iii++;
		}
	}
}

enemy_fleet_size=fleet_size_get_enemy(0);
enemy_combined_fleet=false; // Placeholder
enemy_sunk_count=0;

//Spawn ship tiles
switch(ally_fleet_size-1){
	case 5:
	ally_ship_tile[5]=instance_create_layer(-200,120+(5*48),layer_ship,obj_ship_tile);
	ally_ship_tile[5].fleetno=5;
	ally_ship_tile[5].is_enemy=false;
	with(ally_ship_tile[5]){event_user(0)};
	case 4:
	ally_ship_tile[4]=instance_create_layer(-200,120+(4*48),layer_ship,obj_ship_tile);
	ally_ship_tile[4].fleetno=4;
	ally_ship_tile[4].is_enemy=false;
	with(ally_ship_tile[4]){event_user(0)};
	case 3:
	ally_ship_tile[3]=instance_create_layer(-200,120+(3*48),layer_ship,obj_ship_tile);
	ally_ship_tile[3].fleetno=3;
	ally_ship_tile[3].is_enemy=false;
	with(ally_ship_tile[3]){event_user(0)};
	case 2:
	ally_ship_tile[2]=instance_create_layer(-200,120+(2*48),layer_ship,obj_ship_tile);
	ally_ship_tile[2].fleetno=2;
	ally_ship_tile[2].is_enemy=false;
	with(ally_ship_tile[2]){event_user(0)};
	case 1:
	ally_ship_tile[1]=instance_create_layer(-200,120+(1*48),layer_ship,obj_ship_tile);
	ally_ship_tile[1].fleetno=1;
	ally_ship_tile[1].is_enemy=false;
	with(ally_ship_tile[1]){event_user(0)};
	case 0:
	ally_ship_tile[0]=instance_create_layer(-200,120,layer_ship,obj_ship_tile);
	ally_ship_tile[0].fleetno=0;
	ally_ship_tile[0].is_enemy=false;
	with(ally_ship_tile[0]){event_user(0)};
	break;
}

//Spawn enemy ship tiles
switch(enemy_fleet_size-1){
	case 5:
	enemy_ship_tile[5]=instance_create_layer(room_width-160,120+(5*48),layer_ship,obj_ship_tile);
	enemy_ship_tile[5].fleetno=5;
	enemy_ship_tile[5].is_enemy=true;
	with(enemy_ship_tile[5]){event_user(0)};
	case 4:
	enemy_ship_tile[4]=instance_create_layer(room_width-160,120+(4*48),layer_ship,obj_ship_tile);
	enemy_ship_tile[4].fleetno=4;
	enemy_ship_tile[4].is_enemy=true;
	with(enemy_ship_tile[4]){event_user(0)};;
	case 3:
	enemy_ship_tile[3]=instance_create_layer(room_width-160,120+(3*48),layer_ship,obj_ship_tile);
	enemy_ship_tile[3].fleetno=3;
	enemy_ship_tile[3].is_enemy=true;
	with(enemy_ship_tile[3]){event_user(0)};
	case 2:
	enemy_ship_tile[2]=instance_create_layer(room_width-160,120+(2*48),layer_ship,obj_ship_tile);
	enemy_ship_tile[2].fleetno=2;
	enemy_ship_tile[2].is_enemy=true;
	with(enemy_ship_tile[2]){event_user(0)};
	case 1:
	enemy_ship_tile[1]=instance_create_layer(room_width-160,120+(1*48),layer_ship,obj_ship_tile);
	enemy_ship_tile[1].fleetno=1;
	enemy_ship_tile[1].is_enemy=true;
	with(enemy_ship_tile[1]){event_user(0)};
	case 0:
	enemy_ship_tile[0]=instance_create_layer(room_width-160,120,layer_ship,obj_ship_tile);
	enemy_ship_tile[0].fleetno=0;
	enemy_ship_tile[0].is_enemy=true;
	with(enemy_ship_tile[0]){event_user(0)};
	break;
}

//Initialize Battle Record
/*
Records how the generated battle so that the elements know how to perform.
First dimension is the turn; Second dimension is the information required for the turn.
Each second dimension array index contains the following variables:
-Phase type (Etc. 0,0)
	Indicates whether a phase starts and ends.
	0 - Battle Information
	1 - Recon Phase
	2 - Aerial Combat
	3 - Aerial Defense
	4 - Support
	5 - OASW
	6 - Opening Torpedo
	7 - Shelling/ASW
	8 - Closing Torpedo
	9 - Night Battle
- 0. Battle Information
  - Ally Formation
  - Enemy Formation
  - Engagement Modifier
  - Battle Type
    - (0) Day - Night
	- (1) Night Only
	- (2) Air - Air
	- (3) Enemy Air Only
	- (4) LBAS Raid
	- (5) Night - Day
  - Total Turns
  - Current Map (Replay use)
  - Current Node (Replay use)
  - Enemy Information  (Replay use)
- 7. Shelling
  - Origin Ship
  - Target Ship
  - Damage Amount
  - Hit/Crit/Miss
  - Attack Type
    - (1)Single Gun
	- (2)Double Gun
	- (3)Gun Cut-In
	- (4)Plane
	- (5)Plane Cut-In
	- (6)ASW
	- (7)ASW w/Plane
  - Is_Enemy Boolean (Refers to origin)
- 8. Closing Torpedo
  - Origin Ship
  - Target Ship
  - Damage Amount
  - Hit/Crit/Miss
  - Is_Enemy Boolean (Refers to origin)
- 9. Night Battle
  - Origin Ship
  - Target Ship
  - Damage Amount
  - Hit/Crit/Miss
  - Attack Type
    - (1)Single Gun
	- (2)Double Gun
	- (3)Gun Cut-In
	- (4)Torp Cut-In
	- (5)Mixed Cut-In
	- (4)Plane
	- (5)Plane Cut-In
  - Is_Enemy Boolean (Refers to origin)
- 10. End Battle
  - Rank
  - Experience Gained
- 11. Player Ship Sinking
  - Sunk Ship
  
If I want replays to work I have to save current ally ship data to battle record too. (Future work)
*/
i = 0;
ii = 0;
repeat (100){
	repeat (8){
		battle_record[i,ii]=-1; //Replay Array
		ii++
	}
	i++;
	ii=0;
}
turn=0;
//Determine Engagement
i=0;
battle_record[turn,0]=0;
battle_record[turn,1]=ally_formation;
battle_record[turn,2]=enemy_formation;
i=random_range(0,1);
if(i > 0.85){
	battle_record[turn,3]=0; //Green T
}
if(i <= 0.85 && i > 0.4){
	battle_record[turn,3]=1; //Parellel
}
if(i <= 0.4 && i > 0.1){
	battle_record[turn,3]=2; //Head-On
}
if(i <= 0.1){
	battle_record[turn,3]=3; // Red T; Saiun not implemented yet	
}
battle_record[turn,6]=map_handler.current_node;
battle_record[turn,7]=enemy_data;
turn++;
/*
//LOS Detection Phase
ally_los=get_fleet_los(0,0);
enemy_los=get_fleet_los(1,0);
air_status=0; 
//0= Air Parity 1= Air Superiority 2= Air Supremacy 3= Air Incapability 4= Air Denial -1= No Planes
if(ally_los>enemy_los){
   battle_fleet_spotted=true;
   acc_spotted=0.05;
   eva_spotted=0.05;
}
else
{
   battle_fleet_spotted=false;
   acc_spotted=0;
   eva_spotted=0;
}
//Air Combat Phase
if(check_ship_type(2,2,3,4,5,6,7,8,10,11,12,15)){
   ally_air=get_fleet_as(0);
   enemy_air=get_fleet_as(1);
   if(ally_air>floor(1.5*enemy_air)){
      if(ally_air>floor(3*enemy_air)){
         air_status=2; //Air Supremacy
      }
      else{
         air_status=1; // Air Superiority
      }
   }
   else if(enemy_air>floor(1.5*ally_air)){
      if(enemy_air>floor(3*ally_air)){
         air_status=4; //Air Denial
      }
      else{
         air_status=3; //Air Incapability
      }
   }
   else
   {
      air_status=0; //Air Parity
   }
   if(ally_air == 0 && enemy_air == 0){
      air_status=-1;//No Planes
   }
}
else
{
   air_status=-1;//No Planes
}
//Anti-Bomber Phase
remove_planes(air_status);
//Contact
if(air_status!=4){
   contact_plane=check_contact(0);
}
if(air_status!=2){
   contact_plane_e=check_contact(1);
}
//Anti-Air Cut In
aaci_ally=check_aaci(0);
aaci_enemy=check_aaci(1);
//Bombing Phase
*/
//Determine Shelling Order
i = 0;
repeat (25){
	battle_order[i]=-1; //Shelling Order Array
	i++;
}
i=0; //Whether its ally or enemy turn. 0 = Ally; 1 = Enemy
ii=0; //Turn counter
iii=5; //Longest range not yet ordered
iv=0; //Loop counter
v=0; //Check to see if Turn counter moved. If not, reduce range.
vi=5; //Enemy version of iii
while(1){
	//Start with longest range ships on both ends, and work downwards
	v=ii; //Set control to current turn
	if(i=0){
		for(iv=0; iv<ally_fleet_size; iv++){
			if(ally_fleet[0,iv] != -1){ //If slot is not empty
				if(ally_fleet[0,iv].base_range == iii && ally_fleet[0,iv].battle_order == 0){ //If ship is valid
					battle_order[ii]=ally_fleet[0,iv];
					ally_fleet[0,iv].battle_order=1;
					ii++;
					break;
				}
			}
		}
		if(v == ii){ //If no new ship is added to order, reduce range and find again
			iii--;
		}
		else{ //Else handover to enemy
			i=1;
		}
	}
	else{
		for(iv=0; iv<enemy_fleet_size; iv++){
			if(enemy_fleet[0,iv] != -1){ //If slot is not empty
				if(enemy_fleet[0,iv].base_range == vi && enemy_fleet[0,iv].battle_order == 0){ //If ship is valid
					battle_order[ii]=enemy_fleet[0,iv];
					enemy_fleet[0,iv].battle_order=1;
					ii++;
					break;
				}
			}
		}
		if(v == ii){ //If no new ship is added to order, reduce range and find again
			vi--;
		}
		else{ //Else handover to ally
			i=0;
		}
	}
	if(iii < 0 || vi < 0){ //If search starts going negative range, break loop.
		break;	
	}
}

//Shelling Phase
iv=ii; //Max turns
i=0;//Turn counter
ii=0;//Random number
iii=0;//Result of check_valid_target
v=0; //Counter for how many ships got checked
while(i<iv){
	if(enemy_sunk_count==enemy_fleet_size){
		break;	
	}
	battle_record[turn,0]=6; //Shelling Mode
	if(battle_order[i].currhp>1){ //If the ship is still alive
		battle_record[turn,1]=battle_order[i]; //Origin Ship
		while(1){
			v=0;
			if(battle_order[i].is_enemy == false){ //If Ally
				ii=irandom_range(0,(enemy_fleet_size-1)); //Randomly select ship; No flagship protection yet
				iii=check_valid_target(battle_order[i], enemy_fleet[0,ii]); //Check if target is valid
				if(iii){
					battle_record[turn,2]=enemy_fleet[0,ii]; //Target Ship
					battle_record[turn,5]=false;
					calculate_shelling(battle_record[turn,1],battle_record[turn,2],turn);
					turn++;
					if(enemy_fleet[0,ii].currhp <= 0){ //Check if enemy ship sunk
						enemy_sunk_count++;
					}
					break;
				}
				else{
					enemy_fleet[0,ii].target_attempted=true;	
				}
				for(var j=0; j<enemy_fleet_size; j++){ //Checks if all targets have already been attempted
					if(enemy_fleet[0,j].target_attempted==true){
						v++;
					}
				}
				if(v == (enemy_fleet_size-1)){
					break; //Ends the ship's turn if it cannot attack any ship in the enemy fleet
				}
			}
			else{ //If Enemy
				ii=irandom_range(0,(ally_fleet_size-1)); //Randomly select ship; No flagship protection yet
				iii=check_valid_target(battle_order[i], ally_fleet[0,ii]);
				if(iii){
					battle_record[turn,2]=ally_fleet[0,ii]; //Target Ship
					battle_record[turn,5]=true;
					calculate_shelling(battle_record[turn,1],battle_record[turn,2],turn);
					turn++;
					if(ally_fleet[0,ii].currhp <= 0){ //Check if player ship sunk
						//Placeholder
					}
					break;
				}
				else{
					ally_fleet[0,ii].target_attempted=true;
				}
				for(var j=0; j<ally_fleet_size; j++){ //Checks if all targets have already been attempted
					if(ally_fleet[0,j].target_attempted==true){
						v++;
					}
				}
				if(v == (ally_fleet_size-1)){
					break; //Ends the ship's turn if it cannot attack any ship in the enemy fleet
				}
			}
		}
	}
	for(var j=0; j<enemy_fleet_size; j++){ //Resets targets for enemy
		enemy_fleet[0,j].target_attempted=false;
	}
	for(var j=0; j<ally_fleet_size; j++){ //Resets targets for ally
		ally_fleet[0,j].target_attempted=false;
	}
	i++;
}
battle_record[0,4]=turn+1;
battle_record[turn+1,0]=10; //Battle End
//Determine rank
battle_record[turn+1,1]=0; //Placeholder

//Display Battle
alarm[0]=200;