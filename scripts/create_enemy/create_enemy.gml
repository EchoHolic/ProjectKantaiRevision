for(var i=0;i<array_length_1d(obj_battlecontrol.enemy_fleet);i++){
	if(obj_battlecontrol.enemy_fleet[i]==-2){
		if(argument0 = ""){
			obj_battlecontrol.enemy_fleet[i]=-1;
			return;	
		}
		var ii=call_ship_data(argument0);
		if(ii == -1){
			obj_battlecontrol.enemy_fleet[i]=-1;
			return;	
		}
		obj_battlecontrol.enemy_fleet[i]=instance_create_depth(0,0,2411,obj_ship);
		
		obj_battlecontrol.enemy_fleet[i].api_id=real(obj_saver.database_ship[ii,0]);
		obj_battlecontrol.enemy_fleet[i].api_sortno=real(obj_saver.database_ship[ii,1]);;
		obj_battlecontrol.enemy_fleet[i].jname=obj_saver.database_ship[ii,2];
		obj_battlecontrol.enemy_fleet[i].yname=obj_saver.database_ship[ii,3];
		obj_battlecontrol.enemy_fleet[i].ename=obj_saver.database_ship[ii,4];

		obj_battlecontrol.enemy_fleet[i].maxhp=real(obj_saver.database_ship[ii,9]);
		obj_battlecontrol.enemy_fleet[i].currhp=real(obj_saver.database_ship[ii,9]);
		obj_battlecontrol.enemy_fleet[i].level=1;


		obj_battlecontrol.enemy_fleet[i].class="";
		obj_battlecontrol.enemy_fleet[i].remodel=0;
		obj_battlecontrol.enemy_fleet[i].ship_type=real(obj_saver.database_ship[ii,5]);
		obj_battlecontrol.enemy_fleet[i].class_type=real(obj_saver.database_ship[ii,6]);
		obj_battlecontrol.enemy_fleet[i].boss_type=0

		obj_battlecontrol.enemy_fleet[i].base_firepower=real(obj_saver.database_ship[ii,13]);
		obj_battlecontrol.enemy_fleet[i].base_torpedo=real(obj_saver.database_ship[ii,15]);
		obj_battlecontrol.enemy_fleet[i].base_antiair=real(obj_saver.database_ship[ii,17]);
		obj_battlecontrol.enemy_fleet[i].base_armor=real(obj_saver.database_ship[ii,11]);
		obj_battlecontrol.enemy_fleet[i].base_luck=real(obj_saver.database_ship[ii,20]);
		obj_battlecontrol.enemy_fleet[i].base_asw=real(obj_saver.database_ship[ii,19]);
		obj_battlecontrol.enemy_fleet[i].base_los=real(obj_saver.database_ship[ii,48]);
		obj_battlecontrol.enemy_fleet[i].base_evasion=real(obj_saver.database_ship[ii,46]);
		obj_battlecontrol.enemy_fleet[i].base_range=real(obj_saver.database_ship[ii,23]);
		obj_battlecontrol.enemy_fleet[i].base_speed=real(obj_saver.database_ship[ii,22]);
		obj_battlecontrol.enemy_fleet[i].base_divebomb=0;
		obj_battlecontrol.enemy_fleet[i].base_weight=0;
		obj_battlecontrol.enemy_fleet[i].base_accuracy=0;

		obj_battlecontrol.enemy_fleet[i].aircraft[0]=real(obj_saver.database_ship[ii,25]);
		obj_battlecontrol.enemy_fleet[i].aircraft[1]=real(obj_saver.database_ship[ii,26]);
		obj_battlecontrol.enemy_fleet[i].aircraft[2]=real(obj_saver.database_ship[ii,27]);
		obj_battlecontrol.enemy_fleet[i].aircraft[3]=real(obj_saver.database_ship[ii,28]);
		obj_battlecontrol.enemy_fleet[i].aircraft[4]=real(obj_saver.database_ship[ii,29]);
		obj_battlecontrol.enemy_fleet[i].aircraft_m[0]=real(obj_saver.database_ship[ii,25]);
		obj_battlecontrol.enemy_fleet[i].aircraft_m[1]=real(obj_saver.database_ship[ii,26]);
		obj_battlecontrol.enemy_fleet[i].aircraft_m[2]=real(obj_saver.database_ship[ii,27]);
		obj_battlecontrol.enemy_fleet[i].aircraft_m[3]=real(obj_saver.database_ship[ii,28]);
		obj_battlecontrol.enemy_fleet[i].aircraft_m[4]=real(obj_saver.database_ship[ii,29]);
		
		obj_battlecontrol.enemy_fleet[i].fuel_m=1;
		obj_battlecontrol.enemy_fleet[i].ammo_m=1;
		
		obj_battlecontrol.enemy_fleet[i].is_enemy=true;
		//Equipment still does not work
		obj_battlecontrol.enemy_fleet[i].equip[0]=-1;
		obj_battlecontrol.enemy_fleet[i].equip[1]=-1;
		obj_battlecontrol.enemy_fleet[i].equip[2]=-1;
		obj_battlecontrol.enemy_fleet[i].equip[3]=-1;
		obj_battlecontrol.enemy_fleet[i].equip[4]=-1;
		var iii=0;
		while(iii<real(obj_saver.database_ship[ii,24])){
			obj_battlecontrol.enemy_fleet[i].equip[iii]=0;
			iii++;
		}
		return;
	}
}