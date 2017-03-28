for(as=0;as<=fleet_size;as++){
   aaci_temp[0]=0; //HA Guns
   aaci_temp[1]=0; //Air Radars
   aaci_temp[2]=0; //25mm CD
   aaci_temp[3]=0; //AA Guns
   aaci_temp[4]=0; //Directors
   aaci_temp[5]=0; //Type 3 Shells
   if(argument0==0){
      ship_store=ally_fleet[0,as];
   }
   else{
      ship_store=enemy_fleet[0,as];
   }
   equip_store[0]=ship_store.equip[0];
   equip_store[1]=ship_store.equip[1];
   equip_store[2]=ship_store.equip[2];
   equip_store[3]=ship_store.equip[3];
   for(e=0;e<4;e++){ //Count everything relevant
      if(equip_store[e].equip_ha){
         aaci_temp[0]++;//Check for HA Guns
         if(equip_store[e].equip_director){
            aaci_temp[4]++;//Check for Director-type equipment
         }
         continue;
      }
      if(equip_store[e].equip_type==(18||20||22)){ //Test for voodoo. Probably won't work.
         aaci_temp[1]++;//Check for Air Radars
         continue;
      }
      if(equip_store[e].equip_id==131){
         aaci_temp[2]++;//Check for 25mm CD
         continue;
      }
      if(equip_store[e].equip_type==28){
         aaci_temp[3]++;//Check for AA Guns
         continue;
      }
      if(equip_store[e].equip_director){
         aaci_temp[4]++;//Check for Director-type equipment
      }
      if(equip_store[e]){
         aaci_temp[5]++;//Check for Type 3 Shells
         continue;
      }
      
   }
   //Test the different AACI Types
   if(ship_store.class=="Akizuki"){ //Check for Type 1-3
      if(aaci_temp[0]>0 && aaci_temp[1]>0){
         if(aaci_temp[0]>=2){
            if(random(10)<7){//Type 1
               return 1;
            }
            else{
               continue;
            }
         }
         else{
            if(random(10)<6){//Type 2
               return 2;
            }
            else{
               continue;
            }
         }
      }
      if(aaci_temp[0]>=2){
         if(random(10)<6){//Type 3
            return 3;
         }
         else{
            continue;
         }
      }
   }
   if(ship_store.ship_type==3){ //Battleship. Check for Type 4-5
      if(aaci_temp[4]>0 && aaci_temp[5]>0){ //Type 3 and Director
         if(aaci_temp[1]>=1){
            if(random(10)<6){//Type 4
               return 4;
            }
            else{
               continue;
            }
         }
         else{
            if(random(10)<5){//Type 5
               return 5;
            }
            else{
               continue;
            }
         }
      }
   }
   if(ship_store.ename=="Isuzu" && ship_store.remodel==2){
      
   }
   if(ship_store.ename=="Kasumi" && ship_store.remodel==3){
   
   }
   if(aaci_temp[0]>0 && aaci_temp[4]>0){//Check for Type 6-9
      if(aaci_temp[0]>=2 && aaci_temp[4]>=2){ //HA+FD x2 or more
         if(aaci_temp[1]>=1){
            if(random(10)<5){//Type 6
               return 6;
            }
            else{
               continue;
            }
         }
      }
      if(aaci_temp[0]>=1 && aaci_temp[4]>=1){ //HA+FD At least one
         if(aaci_temp[1]>=1){
            if(random(10)<4){//Type 7/8. Returning 7 makes more sense balance-wise
               return 7;
            }
            else{
               continue;
            }
         }
         else{
            if(random(10)<3){//Type 9
               return 9;
            }
            else{
               continue;
            }
         }
      }
   }
   if(ship_store.ename=="Maya" && ship_store.remodel==2){// Check for Type 10-11
      if(aaci_temp[0]>0 && aaci_temp[2]>0){
         if(random(10)<3){
            return 12;
         }
         else{
            continue;
         }
      }
   }
   if(aaci_temp[1]>0 && aaci_temp[2]>0 && aaci_temp[3]>0){//Check for Type 12
      if(random(10)<3){
         return 12;
      }
      else{
         continue;
      }
   }
   if(ship_store.ename=="Satsuki" && ship_store.remodel==2){// Check for Type 18
      if(aaci_temp[3]>0){
         if(random(10)<5){
            return 18;
         }
         else{
            continue;
         }
      }
   }
}
/*
AACI Table
1) [Akizuki-Class] HA Gun/HA Gun/Air Radar      70%  x1.7  (7 Shot Down)
2) [Akizuki-Class] HA Gun/Air Radar             60%  x1.7  (6 Shot Down)
3) [Akizuki-Class] HA Gun/HA Gun                60%  x1.6  (4 Shot Down)
4) [Battleship]    Gun/Type 3/FD/Air Radar      60%  x1.4  (6 Shot Down)
5) [Battleship]    Gun/Type 3/FD                50%  x1.5  (4 Shot Down)
6) [All Ships]     FD Gun/FD Gun/Air Radar      50%  x1.45 (4 Shot Down)
7) [All Ships]     HA Gun/FD/Air Radar          40%  x1.35 (3 Shot Down)
8) [All Ships]     FD Gun/Air Radar             40%  x1.4  (4 Shot Down)
9) [All Ships]     HA Gun/FD                    30%  x1.3  (2 Shot Down)
10)[Maya K2]       HA Gun/25mm CD/Air Radar     60%  x1.65 (8 Shot Down)
11)[Maya K2]       HA Gun/25mm CD               50%  x1.5  (6 Shot Down)
12)[All Ships]     25mm CD/AA Gun/Air Radar     50%  x1.25 (3 Shot Down)
13)???             ???                          ???
14)[Isuzu K2]      HA Gun/AA Gun/Air Radar      60%  x1.45 (4 Shot Down)
15)[Isuzu K2]      HA Gun/AA Gun                50%  x1.3  (3 Shot Down)
16)[Kasumi K2B]    HA Gun/AA Gun/Air Radar      60%  x1.4  (4 Shot Down)
17)[Kasumi K2B]    HA Gun/AA Gun                50%  x1.25 (2 Shot Down)
18)[Satsuki K2]    25mm CD                      50%  x1.2  (2 Shot Down)
19)[Kinu K2]       HA Gun/25mm CD               50%  x1.45 (5 Shot Down)
20)[Kinu K2]       25mm CD                      50%  x1.25 (3 Shot Down)

In General:
- Adding Air Radars add +10% and additional 1 Shot Down.
- Specific-type setups have a minimum 50% chance.
- I'm fuckin' lazy so FD and FD Guns are basically the same.
  - This means AACI 7 and 8 are the same.
  - BBs can use in-built directors too now but probably not a big deal.
  - I'll fix it if it ever becomes a problem.
*/
