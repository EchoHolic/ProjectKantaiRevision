//Proficiency Tables. Not accurate to the original.
skill_fighter[0]=0;
skill_fighter[1]=2;
skill_fighter[2]=4;
skill_fighter[3]=8;
skill_fighter[4]=12;
skill_fighter[5]=16;
skill_fighter[6]=20;
skill_fighter[7]=25;

skill_bomber[0]=0;
skill_bomber[1]=1;
skill_bomber[2]=1;
skill_bomber[3]=2;
skill_bomber[4]=2;
skill_bomber[5]=3;
skill_bomber[6]=3;
skill_bomber[7]=4;

skill_seaplane[0]=0;
skill_seaplane[1]=1;
skill_seaplane[2]=2;
skill_seaplane[3]=3;
skill_seaplane[4]=4;
skill_seaplane[5]=5;
skill_seaplane[6]=6;
skill_seaplane[7]=10;

//AACI "Shot Down" Tables
aaci_shot_down[0]=0;//No AACI
aaci_shot_down[1]=7;
aaci_shot_down[2]=6;
aaci_shot_down[3]=4;
aaci_shot_down[4]=6;
aaci_shot_down[5]=4;
aaci_shot_down[6]=4;
aaci_shot_down[7]=3;
aaci_shot_down[8]=4;
aaci_shot_down[9]=2;
aaci_shot_down[10]=8;
aaci_shot_down[11]=6;
aaci_shot_down[12]=3;
aaci_shot_down[13]=2;
aaci_shot_down[14]=4;
aaci_shot_down[15]=3;
aaci_shot_down[16]=4;
aaci_shot_down[17]=2;
aaci_shot_down[18]=2;

//Profile
global.HQ_Level=1;
global.Name="";
global.New_Game=false;
global.Save_Exists=false;
global.Move_Room=0;


//Colors
c_Navy_Blue=make_color_rgb(44,62,80);
c_Pale_Blue=make_color_rgb(67,84,100);
c_Chalk_White=make_color_rgb(236,240,241);
c_Bright_Blue=make_color_rgb(41,128,185);
c_Pale_Bright_Blue=make_color_rgb(100,174,224);
c_Dark_Orange=make_color_rgb(230,76,59);

//Init Variables
i=0;
iii=0;
repeat(100){ //Player Ships
   list_ship[i]=0;
   i++;
}
list_equipment=0;
list_furniture=0;
i=0;
repeat(4) { //Fleet Data
list_fleet[i,0]=0;
list_fleet[i,1]=0;
list_fleet[i,2]=0;
list_fleet[i,3]=0;
list_fleet[i,4]=0;
list_fleet[i,5]=0;
i++;
}
i=0;
ii=0;
repeat(1024){ //Data Storage
	repeat(46){
	database_ship[i,ii]=0;
	ii++;
	}
	i++;
	ii=0;
}
dock_repair=2; //Repair Docks
dock_build=2; //Construction Docks
/*(
if(global.New_Game=false){
   file_exists(working_directory+"save.ttk");
}*/

/*Ship Data as follows:
0 - API ID
1 - API Sort
2 - Japanese Name
3 - Hiragana
4 - English Name
5 - Ship Type 
6 - Class Type
7 - Remodel Level
8 - Remodel ID
9 - HP
10 - <<Useless>>
11 - Start Armor
12 - Max Armor
13 - Start Firepower
14 - Max Firepower
15 - Start Torpedo
16 - Max Torpedo
17 - Start Anti-Air
18 - Max Anti-Air
19 -  ASW
20 - Start Luck
21 - Max Luck
22 - Speed (5 Slow, 10 Fast)
23 - Range (0 None, 1 Short, 2 Medium, 3 Long, 4 V.Long)
24 - No. of Slots
25 - Slot 1 Planes
26 - Slot 2 Planes
27 - Slot 3 Planes
28 - Slot 4 Planes
29 - Slot 5 Planes
30 - Build Time
31 - Scrap Fuel
32 - Scrap Ammo
33 - Scrap Steel
34 - Scrap Bauxite
35 - Mod. Firepower
36 - Mod. Torpedo
37 - Mod. AA
38 - Mod. Armor
39 - Remodel Ammo
40 - Remodel Steel
41 - Refuel Fuel
42 - Refuel Ammo
43 - <<USELESS>>
*/
//Parse Ship CSV
i=0;
ii=0;
iii=0;
comma1=1;
comma2=1;
if(file_exists(working_directory+"ShipData.csv")){
	shipData= file_text_open_read(working_directory+"ShipData.csv");
	file_text_readln(shipData);
	while(!file_text_eof(shipData)){
		shipData_string=file_text_readln(shipData);
		for(ii=1;ii<=string_length(shipData_string);ii++){
			if (string_char_at(shipData_string,ii)==","){
				comma1=comma2;
				comma2=ii;
				database_ship[i,iii]=string_copy(shipData_string,comma1,comma2-comma1);
				comma2++;
				iii++;
			}
		}
		comma1=1;
		comma2=1;
		iii=0;
		i++;
	}
	file_text_close(shipData);
}