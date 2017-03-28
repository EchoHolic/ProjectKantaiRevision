switch(argument0){
   case -1:
   exit;
   break;
   case 0: //Air Parity
   chance1=30;
   chance2=75;
   shot_down=0.6;
   echance1=30;
   echance2=75;
   eshot_down=0.6;
   break;
   case 1: //Air Superiority
   chance1=20;
   chance2=45;
   shot_down=0.4;
   echance1=40;
   echance2=105;
   eshot_down=0.8;
   break;
   case 2: //Air Supremacy
   chance1=7;
   chance2=15;
   shot_down=0.1;
   echance1=65;
   echance2=150;
   eshot_down=1;
   break;
   case 3: //Air Incapability
   chance1=40;
   chance2=105;
   shot_down=0.8;
   echance1=20;
   echance2=45;
   eshot_down=0.4;
   break;
   case 4: //Air Denial
   chance1=65;
   chance2=150;
   shot_down=1;
   echance1=7;
   echance2=15;
   eshot_down=0.1;
   break;
}
for(as=0;as<6;as++){
   for(as2=0;as2<4;as2++){
      //Ally
      equip_store=ally_fleet[0,as].equip[as2];
      switch(equip_store.equip_type){ //Check for planes
         case 7://Carrier Fighter
         case 8://Dive Bomber
         case 9://Torp Bomber
         case 13://Seaplane Bomber
         case 14://Seaplane Fighter
         if(irandom(256)<=irandom_range(chance1,chance2)){
            ally_fleet[0,as].aircraft[as2]-=round(random(shot_down)*ally_fleet[0,as].aircraft[as2]);
         }
         break;
      }
      //Enemy
      equip_store=enemy_fleet[0,as].equip[as2];
      switch(equip_store.equip_type){ //Check for planes
         case 7://Carrier Fighter
         case 8://Dive Bomber
         case 9://Torp Bomber
         case 13://Seaplane Bomber
         case 14://Seaplane Fighter
         if(irandom(256)<=irandom_range(echance1,echance2)){
            enemy_fleet[0,as].aircraft[as2]-=round(random(eshot_down)*enemy_fleet[0,as].aircraft[as2]);
         }
         break;
      }
   }
}
