//Display setting
if(display_aa >= 6){
	display_reset(4,true);
}

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

//Formation Modifiers
//0 = Line Ahead, 1 = Double Line, 2 = Diamond, 3 = Echelon, 4 = Line Abreast
//0 = Shelling Mod, 1 = Torpedo Mod, 2 = ASW Mod, 3 = Night Mod, 4 = AA Mod 5 = Aerial Mod
//6 = Shelling Acc, 7 = Torpedo Acc, 8 = ASW Acc, 9 = Night Acc, 10= Aerial Acc
//11 = Shelling Eva, 12 = Torpedo Eva, 13 = ASW Eva, 14, Night Eva, 15 = Aerial Eva, 16 = Flagship Protection
//Line Ahead
formation[0,0]=1;
formation[0,1]=1;
formation[0,2]=0.6;
formation[0,3]=1;
formation[0,4]=1;
formation[0,5]=1;
formation[0,6]=1;
formation[0,7]=1;
formation[0,8]=1;
formation[0,9]=1;
formation[0,10]=1;
formation[0,11]=1;
formation[0,12]=1;
formation[0,13]=1;
formation[0,14]=1;
formation[0,15]=1;
formation[0,16]=0.4;

//Double Line
formation[1,0]=0.8;
formation[1,1]=0.8;
formation[1,2]=0.8;
formation[1,3]=1;
formation[1,4]=1.2;
formation[1,5]=1;
formation[1,6]=1.2;
formation[1,7]=0.8;
formation[1,8]=1.2;
formation[1,9]=0.9;
formation[1,10]=1;
formation[1,11]=1;
formation[1,12]=1;
formation[1,13]=1;
formation[1,14]=1;
formation[1,15]=1;
formation[1,16]=0.6;


//Diamond
formation[2,0]=0.7;
formation[2,1]=0.7;
formation[2,2]=1.2;
formation[2,3]=1;
formation[2,4]=1.6;
formation[2,5]=1;
formation[2,6]=1;
formation[2,7]=0.4;
formation[2,8]=1;
formation[2,9]=0.7;
formation[2,10]=1;
formation[2,11]=1.1;
formation[2,12]=1.1;
formation[2,13]=1;
formation[2,14]=1;
formation[2,15]=1;
formation[2,16]=0.75;


//Echelon
formation[3,0]=0.6;
formation[3,1]=0.6;
formation[3,2]=1;
formation[3,3]=1;
formation[3,4]=1;
formation[3,5]=1;
formation[3,6]=1.2;
formation[3,7]=0.6;
formation[3,8]=1.2;
formation[3,9]=0.8;
formation[3,10]=1;
formation[3,11]=1.2;
formation[3,12]=1.3;
formation[3,13]=1.3;
formation[3,14]=1.1;
formation[3,15]=1;
formation[3,16]=0.6;


//Line Abreast
formation[4,0]=0.6;
formation[4,1]=0.6;
formation[4,2]=1.3;
formation[4,3]=1;
formation[4,4]=1;
formation[4,5]=1;
formation[4,6]=1.2;
formation[4,7]=0.3;
formation[4,8]=1.2;
formation[4,9]=0.8;
formation[4,10]=1;
formation[4,11]=1.3;
formation[4,12]=1.4;
formation[4,13]=1.1;
formation[4,14]=1.2;
formation[4,15]=1;
formation[4,16]=0.6;


//Profile
global.HQ_Level=1;
global.Name="Newface";
global.New_Game=false;
global.Save_Exists=false;
global.Move_Room=0;
global.UniqueID_Ship=1;
global.UniqueID_Equip=1;


//Colors
//Comments show RGB order. However, Gamemaker accepts inputs in BGR order, take note.
enum color{
	c_Navy_Blue=5258796,  //44,62,80
	c_Navy_Blue_2=5653554, //50,68,86 Lighter ver
	c_Pale_Blue=6575171, //67,84,100
	c_Pale_Blue_2=8615786, //106,119,131 Lighter ver
	c_Chalk_White=15855852, //236,240,241
	c_Bright_Blue=12156969, //41,128,185
	c_Dark_Blue=3942420, //20,40,60
	c_Pale_Bright_Blue=14724708, //100,174,224
	c_Dark_Orange=3886310, //230,76,59
	c_Node_Red1=7895290, //250,120,120
	c_Node_Red2=1974005, //245,30,30
	c_Node_Green1=2551900 //92,240,38
}

//Colors for Map Nodes


//Init Variables
i=0;
iii=0;
repeat(300){ //Player Ships
   list_ship[i]=-2;
   list_equipment[i]=-2;
   list_equipment[i+300]=-2;
   list_equipment[i+600]=-2;
   list_equipment[i+900]=-2;
   i++;
}
list_furniture=0;
i=0;
repeat(6) { //Fleet Data
list_fleet[i,0]=-1;
list_fleet[i,1]=-1;
list_fleet[i,2]=-1;
list_fleet[i,3]=-1;
list_fleet[i,4]=-1;
list_fleet[i,5]=-1;
i++;
}
i=0;
ii=0;
repeat(1024){ //Data Storage
	repeat(55){
	database_ship[i,ii]=0;
	ii++;
	}
	i++;
	ii=0;
}
dock_repair=2; //Repair Docks
dock_build=2; //Construction Docks
//Resources
res_fuel=1000;
res_ammo=1000;
res_steel=1000;
res_bauxite=1000;
res_bucket=0;
res_devmat=10;
res_screw=0;

//Sortie Data Storage
sortie_fleet=0;
sortie_map=0;
sortie_world=0;
//Map Arrow Amount Numbers
map_arrow_num[0,0]=3;
map_arrow_num[0,1]=0;
map_arrow_num[0,2]=0;
map_arrow_num[0,3]=0;
map_arrow_num[0,4]=0;
map_arrow_num[0,5]=0;

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
10 - Max Mod HP(?)
11 - Start Armor
12 - Max Armor
13 - Start Firepower
14 - Max Firepower
15 - Start Torpedo
16 - Max Torpedo
17 - Start Anti-Air
18 - Max Anti-Air
19 - ASW
20 - Start Luck
21 - Max Luck
22 - Speed (5 Slow, 10 Fast, 15 Fast+, 20 Fastest)
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
39 - <<UNKNOWN>>
40 - Remodel Ammo
41 - Remodel Steel
42 - Refuel Fuel
43 - Refuel Ammo
44 - <<UNKNOWN>>

Self-added parameters
45 - ASW growth
46 - Evasion
47 - Evasion growth
48 - LOS
49 - LOS growth
50 - Stock Equip 1 ID
51 - Stock Equip 2 ID
52 - Stock Equip 3 ID
53 - Stock Equip 4 ID
54 - Is convertible
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
		i++; //Advance to next ship
	}
	file_text_close(shipData);
}