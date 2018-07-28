if(current_turn<=battle_record[0,4]){
	current_phase=battle_record[current_turn,0];
	switch(battle_record[current_turn,0]){
		case 6: //Shelling
		var ally=ally_ship_tile[battle_record[current_turn,1].fleetno];
		var enemy=enemy_ship_tile[battle_record[current_turn,1].fleetno];
		ally.action=true;
		enemy.action=true;
		if(battle_record[current_turn,5] == false){ //If Ally
			ally.action_type=0;
			if(battle_record[current_turn,3] > 40){ //If Dmg more than 40, crit
				enemy.action_type=3;
				enemy.action_damage=battle_record[current_turn,3];
			}
			else{
				enemy.action_type=battle_record[current_turn,4]+1;	
				if(battle_record[current_turn,4] != 0){ //If attack did not miss
					enemy.action_damage=battle_record[current_turn,3];
				}
				else{
					enemy.action_damage=-1;	
				}
			}
		}
		else{ //If Enemy
			enemy.action_type=0;
			if(battle_record[current_turn,3] > 40){ //If Dmg more than 40, crit
				ally.action_type=3;
				ally.action_damage=battle_record[current_turn,3];
			}
			else{
				ally.action_type=battle_record[current_turn,4]+1;
				if(battle_record[current_turn,4] != 0){ //If attack did not miss
					ally.action_damage=battle_record[current_turn,3];
				}
				else{
					ally.action_damage=-1;	
				}
			}
		}
		alarm[0]=100;
		break;
		case 10: //Battle End
		alarm[2]=60;
		break;
	}
	current_turn++;
}