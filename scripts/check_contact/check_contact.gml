for(as=0;as<=fleet_size;as++){
   for(as2=0;as2<4;as2++){
      if(argument0==0){
         equip_store=ally_fleet[0,as].equip[as2];
      }
      else{
         equip_store=enemy_fleet[0,as].equip[as2];
      }
      switch(equip_store.equip_type){ //Check for planes
         case 9://Torp Bomber
         if(random(100)<=2){
            return equip_store;
         }
         break;
         case 12://Recon Seaplane
         if(equip_store.equip_special==4){
            if(random(100)<=5){
               return equip_store;
            }
         }
         else{
            if(random(100)<=20){
               return equip_store;
            }
         }
         break;
         case 10://Carrier Recon Plane
         case 11://Carrier Recon Plane (II)
         if(random(100)<=60){
            return equip_store;
         }
         break;
         case 17://Large Flying Boat
         if(random(100)<=70){
            return equip_store;
         }
         break;
      }
   }
}
return -1;
