for(var i=0;i<array_length_1d(obj_saver.list_ship);i++){
	if(obj_saver.list_ship[i]==-2){
		obj_saver.list_ship[i]=instance_create_depth(0,0,2411,obj_ship);
		var ii=call_ship_data(argument0);
		obj_saver.list_ship[i].unique_id=global.UniqueID_Ship;
		global.UniqueID_Ship++;
		obj_saver.list_ship[i].api_id=real(obj_saver.database_ship[ii,0]);
		obj_saver.list_ship[i].api_sortno=real(obj_saver.database_ship[ii,1]);;
		obj_saver.list_ship[i].jname=obj_saver.database_ship[ii,2];
		obj_saver.list_ship[i].yname=obj_saver.database_ship[ii,3];
		obj_saver.list_ship[i].ename=obj_saver.database_ship[ii,4];

		obj_saver.list_ship[i].maxhp=real(obj_saver.database_ship[ii,9]);
		obj_saver.list_ship[i].currhp=real(obj_saver.database_ship[ii,9]);
		obj_saver.list_ship[i].level=1;


		obj_saver.list_ship[i].class="";
		obj_saver.list_ship[i].remodel=0;
		obj_saver.list_ship[i].ship_type=real(obj_saver.database_ship[ii,5]);
		obj_saver.list_ship[i].class_type=real(obj_saver.database_ship[ii,6]);
		obj_saver.list_ship[i].boss_type=0

		obj_saver.list_ship[i].base_firepower=real(obj_saver.database_ship[ii,13]);
		obj_saver.list_ship[i].base_torpedo=real(obj_saver.database_ship[ii,15]);
		obj_saver.list_ship[i].base_antiair=real(obj_saver.database_ship[ii,17]);
		obj_saver.list_ship[i].base_armor=real(obj_saver.database_ship[ii,11]);
		obj_saver.list_ship[i].base_luck=real(obj_saver.database_ship[ii,20]);
		obj_saver.list_ship[i].base_asw=real(obj_saver.database_ship[ii,19]);
		obj_saver.list_ship[i].base_los=real(obj_saver.database_ship[ii,48]);
		obj_saver.list_ship[i].base_evasion=real(obj_saver.database_ship[ii,46]);
		obj_saver.list_ship[i].base_range=real(obj_saver.database_ship[ii,23]);
		obj_saver.list_ship[i].base_speed=real(obj_saver.database_ship[ii,22]);
		obj_saver.list_ship[i].base_divebomb=0;
		obj_saver.list_ship[i].base_weight=0;
		obj_saver.list_ship[i].base_accuracy=0;

		obj_saver.list_ship[i].aircraft[0]=real(obj_saver.database_ship[ii,25]);
		obj_saver.list_ship[i].aircraft[1]=real(obj_saver.database_ship[ii,26]);
		obj_saver.list_ship[i].aircraft[2]=real(obj_saver.database_ship[ii,27]);
		obj_saver.list_ship[i].aircraft[3]=real(obj_saver.database_ship[ii,28]);
		obj_saver.list_ship[i].aircraft[4]=real(obj_saver.database_ship[ii,29]);
		obj_saver.list_ship[i].aircraft_m[0]=real(obj_saver.database_ship[ii,25]);
		obj_saver.list_ship[i].aircraft_m[1]=real(obj_saver.database_ship[ii,26]);
		obj_saver.list_ship[i].aircraft_m[2]=real(obj_saver.database_ship[ii,27]);
		obj_saver.list_ship[i].aircraft_m[3]=real(obj_saver.database_ship[ii,28]);
		obj_saver.list_ship[i].aircraft_m[4]=real(obj_saver.database_ship[ii,29]);
		
		obj_saver.list_ship[i].fuel_m=real(obj_saver.database_ship[ii,41]);
		obj_saver.list_ship[i].ammo_m=real(obj_saver.database_ship[ii,42]);
		//Equipment still does not work
		obj_saver.list_ship[i].equip[0]=real(obj_saver.database_ship[ii,50]);
		obj_saver.list_ship[i].equip[1]=real(obj_saver.database_ship[ii,51]);
		obj_saver.list_ship[i].equip[2]=real(obj_saver.database_ship[ii,52]);
		obj_saver.list_ship[i].equip[3]=real(obj_saver.database_ship[ii,53]);
		obj_saver.list_ship[i].equip[4]=real(obj_saver.database_ship[ii,54]);
		var iii=0;
		while(iii<real(obj_saver.database_ship[ii,24])){
			obj_saver.list_ship[i].equip[iii]=0;
			iii++;
		}
		return obj_saver.list_ship[i].unique_id;
	}
}