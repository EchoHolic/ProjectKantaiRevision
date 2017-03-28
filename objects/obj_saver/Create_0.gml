//Proficiency Tables. Not accurate to the original.
global.skill_fighter[0]=0;
global.skill_fighter[1]=2;
global.skill_fighter[2]=4;
global.skill_fighter[3]=8;
global.skill_fighter[4]=12;
global.skill_fighter[5]=16;
global.skill_fighter[6]=20;
global.skill_fighter[7]=25;

global.skill_bomber[0]=0;
global.skill_bomber[1]=1;
global.skill_bomber[2]=1;
global.skill_bomber[3]=2;
global.skill_bomber[4]=2;
global.skill_bomber[5]=3;
global.skill_bomber[6]=3;
global.skill_bomber[7]=4;

global.skill_seaplane[0]=0;
global.skill_seaplane[1]=1;
global.skill_seaplane[2]=2;
global.skill_seaplane[3]=3;
global.skill_seaplane[4]=4;
global.skill_seaplane[5]=5;
global.skill_seaplane[6]=6;
global.skill_seaplane[7]=10;

//AACI "Shot Down" Tables
global.aaci_shot_down[0]=0;//No AACI
global.aaci_shot_down[1]=7;
global.aaci_shot_down[2]=6;
global.aaci_shot_down[3]=4;
global.aaci_shot_down[4]=6;
global.aaci_shot_down[5]=4;
global.aaci_shot_down[6]=4;
global.aaci_shot_down[7]=3;
global.aaci_shot_down[8]=4;
global.aaci_shot_down[9]=2;
global.aaci_shot_down[10]=8;
global.aaci_shot_down[11]=6;
global.aaci_shot_down[12]=3;
global.aaci_shot_down[13]=2;
global.aaci_shot_down[14]=4;
global.aaci_shot_down[15]=3;
global.aaci_shot_down[16]=4;
global.aaci_shot_down[17]=2;
global.aaci_shot_down[18]=2;

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
c_Dark_Orange=make_color_rgb(230,76,59);

//Init Variables
i=0;
iii=0;
repeat(100){
   list_ship[i]=0;
   i++;
}
list_equipment=0;
list_furniture=0;
i=0
repeat(4) {
list_fleet[i,0]=0;
list_fleet[i,1]=0;
list_fleet[i,2]=0;
list_fleet[i,3]=0;
list_fleet[i,4]=0;
list_fleet[i,5]=0;
i++;
}
dock_repair=2;
dock_build=2;
/*(
if(global.New_Game=false){
   file_exists(working_directory+"save.ttk");
}*/

/* */
/*  */
