for(i=0;i<6;i++){
   if(argument[0]==0 || argument[0]==2){
      ii=1;
      repeat(argument_count-1){
         if (i<ally_fleet_size && argument[ii]==ally_fleet[0,i].ship_type) {
         return true;
         }
         ii++;
      }
   }
   if(argument[0]==1 || argument[0]==2){
      ii=1;
      repeat(argument_count-1){
         if (argument[ii]==enemy_fleet[0,i].ship_type) {
         return true;
         }
         ii++;
      }
   }
}
return false;
/*
argument0 - To check which side. 0 = Ally, 1 = Enemy, 2 = Check Both.
argument1-15 - What type of ships to check for. Extra arguments for extra checks.

Remember to make another function to search and return exact ship types.

Ship Type
0 - Destroyer
1 - Light Cruiser
2 - Heavy Cruiser
3 - Battleship
4 - Aviation Battleship
5 - Aviation Cruiser
6 - Light Carrier
7 - Standard Carrier
8 - Armored Carrier
9 - Submarine
10 - Submarine w/Planes
11 - Transport Ship
12 - Seaplane Tender
13 - Repair Ship
14 - Patrol Boat
15 - Installation
*/
