temp=0;
if(argument0==0){
   fleet_size=ally_fleet_size;
}
else{
   fleet_size=enemy_fleet_size;
}
for(as=0;as<=fleet_size;as++){
   for(as2=0;as2<4;as2++){
      if(argument0==0){
         equip_store=ally_fleet[0,as].equip[as2];
         aircraft_store=ally_fleet[0,as].aircraft[as2];
      }
      else{
         equip_store=enemy_fleet[0,as].equip[as2];
         aircraft_store=enemy_fleet[0,as].aircraft[as2];
      }
      switch(equip_store.equip_type){ //Check for planes
         case 7://Carrier Fighter
         temp+= sqrt(aircraft_store)*equip_store.equip_antiair;
         temp+= global.skill_fighter[equip_store.equip_proficiency];
         break;
         case 8://Dive Bomber
         case 9://Torp Bomber
         temp+= sqrt(aircraft_store)*equip_store.equip_antiair;
         temp+= global.skill_bomber[equip_store.equip_proficiency];
         break;
         case 13://Seaplane Bomber
         case 14://Seaplane Fighter
         temp+= sqrt(aircraft_store)*equip_store.equip_antiair;
         temp+= global.skill_seaplane[equip_store.equip_proficiency];
         break;
      }
   }
}
return floor(temp);
/*
argument0 - To check which side. 0 = Ally, 1 = Enemy
*/
