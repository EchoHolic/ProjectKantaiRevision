los=0;
los2=0;
if(argument0==0){
   fleet_size=ally_fleet_size;
}
else{
   fleet_size=enemy_fleet_size;
}
for(as=0;as<=fleet_size;as++){
      if(argument0==0){
         los+=ally_fleet[0,as].base_los;
      }
      else{
         los+=enemy_fleet[0,as].base_los;
      }
      for(as2=0;as2<4;as2++){
         if(argument0==0){
            equip_store=ally_fleet[0,as].equip[as2];
         }
         else{
            equip_store=enemy_fleet[0,as].equip[as2];
         }
         if(equip_store.equip_los>0){
            switch(equip_store.equip_type){ //Check for LoS equipment
               case 10://Carrier Recon Plane
               case 11://Carrier Recon Plane (II)
               case 12://Recon Seaplane
               case 17://Large Flying Boat
               los2+=equip_store.equip_los*2;
               break;
               case 18://Small Air RADAR
               case 19://Small Surface RADAR
               case 20://Large Air RADAR
               case 21://Large Surface RADAR
               case 22://Large Air RADAR (II)
               case 32://Searchlight
               case 33://Searchlight (II)
               case 34://Lookouts
               los2+=equip_store.equip_los;
               break;
               default:
               los+=equip_store.equip_los;
               break;
            }
         }
      }
}
if (argument1==0){
   return sqrt(los)+los2;
}
else{
   return sqrt(los)+los2-(global.HQ_Level*0.5);
}
/*
argument0 - Which fleet to retrieve LoS from. 0 = Ally, 1 = Enemy.
argument1 - Whether to deduct HQ Level.
*/
