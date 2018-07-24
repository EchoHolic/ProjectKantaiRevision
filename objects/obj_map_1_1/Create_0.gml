/// @description Insert description here
/*
Map Rules
Will be hardcoded into the handler.
The positions of the map arrows will be hardcoded into this handler too.

Drop Rates
No drop is indicated as ID 0; its a flat percentage rolled before rolling anything else.
Ships are assigned a drop value, totalled up and chance is drop value/total value.
Each ship is assigned a number range and is considered dropped if the number is within its range.
Drop rates are indicated in the associated CSV file.
*/

/*var i,ii,iii, dropData_string, comma1, comma2;
i=0;
ii=0;
repeat(20){
	repeat(100){
		drop_table[i,ii]=-1;
		ii++;
	}
	i++;
}

//Parse Map Drop CSV
i=0;
ii=0;
iii=0;
comma1=1;
comma2=1;
if(file_exists(working_directory+string(obj_saver.sortie_world)+"-"+string(obj_saver.sortie_map)+".csv")){
	var dropData= file_text_open_read(working_directory+string(obj_saver.sortie_world)+"-"+string(obj_saver.sortie_map)+".csv");
	file_text_readln(dropData);
	while(!file_text_eof(dropData)){
		dropData_string=file_text_readln(dropData);
		for(ii=1;ii<=string_length(dropData_string);ii++){
			if (string_char_at(dropData_string,ii)==","){
				comma1=comma2;
				comma2=ii;
				drop_table[i,iii]=string_copy(dropData_string,comma1,comma2-comma1);
				comma2++;
				iii++;
			}
		}
		comma1=1;
		comma2=1;
		iii=0;
		i++; //Advance to next ship
	}
	file_text_close(dropData);
}
*/

draw_map=asset_get_index("spr_map_1_1");
var i=0;
repeat(obj_saver.map_arrow_num[obj_saver.sortie_world,obj_saver.sortie_map]){
	draw_map_arrows[i]=asset_get_index("spr_map_"+string(obj_saver.sortie_world)+"_"+string(obj_saver.sortie_map)+"_"+string(i+1));
	i++;
}

//Positions of nodes in the map.
node_pos_x[0]=172; //Start
node_pos_y[0]=198;
node_pos_x[1]=316; //Node A
node_pos_y[1]=230;
node_pos_x[2]=466; //Node B
node_pos_y[2]=136;
node_pos_x[3]=440; //Node C
node_pos_y[3]=322;

//Current Node
//1-1
//Start  = 0
//Node A = 1
//Node B = 2
//Node C = 3
current_node=0;
move_allow=false; //Whether obj_map_ship is allowed to move to new location
move_reached=false; //Whether obj_map_ship has arrived at new location
compass_wobble=false;
compass_wobble2=0;
formation_selected=0 //Formation to pass to battlecontrol
//Formation
//0 - Line Ahead
//1 - Double Line
//2 - Diamond
//3 - Echelon
//4 - Line Abreast
//5 - Combined ASW
//6 - Combined Forward
//7 - Combined Ring
//8 - Combined Battle

//Visited Nodes
node_visited[0]=false;
node_visited[1]=false;
node_visited[2]=false;
node_visited[3]=false;

//Enemy Formations
node_enemy[0,0]=-1
//Node A
node_enemy[1,0]="1501,,,,,,0"; //DD I-Class
node_enemy[1,1]="1502,,,,,,0"; //DD Ro-Class
node_enemy[1,2]="1503,,,,,,0"; //DD Ha-Class
//Node B
node_enemy[2,0]="1501,1501,,,,,0"; // 2 DD I-Class
node_enemy[2,1]="1502,1501,,,,,0"; // DD Ro-Class / DD I-Class
node_enemy[2,2]="1503,1503,,,,,0"; // 2 DD Ha-Class
//Node C
node_enemy[3,0]="1505,1501,1501,,,,0"; //CL Ho-Class / 2 DD I-Class
node_enemy[3,1]="1505,1502,1502,,,,0"; //CL Ho-Class / 2 DD Ro-Class
node_enemy[3,2]="1505,1503,1503,,,,0"; //CL Ho-Class / 2 DD Ha-Class
node_enemy[3,3]="1505,1503,1502,1502,,,0"; //CL Ho-Class / DD Ha-Class / 2 DD Ro-Class

//Instance containers
ship=0;
radial1=instance_create_depth(node_pos_x[0],node_pos_y[0],-81,obj_radial);
radial2=instance_create_depth(node_pos_x[0],node_pos_y[0],-81,obj_radial);
radial2.image_xscale=0.5;
radial2.image_yscale=0.5;
radial1.map_handler=id;
radial2.map_handler=id;
alarm[0]=60;