//Generate Battle Results
//Generate Fleet
//Remember to assign values later
layer_bar=layer_create(5);
layer_ship=layer_create(10);
layer_bar2=layer_create(4);
ally_fleet[0,0]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_fleet[0,1]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_fleet[0,2]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_fleet[0,3]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_fleet[0,4]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_fleet[0,5]=instance_create_layer(0,0,layer_ship,obj_ship);
ally_formation=0;
ally_fleet_size=5;
combined_fleet=false;

enemy_fleet[0,0]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_fleet[0,1]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_fleet[0,2]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_fleet[0,3]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_fleet[0,4]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_fleet[0,5]=instance_create_layer(0,0,layer_ship,obj_ship);
enemy_formation=0;
enemy_fleet_size=5;

var i = 0;
repeat (100){
	battle_record[i]=-1;
	i++;
}
/*
//LOS Detection Phase
ally_los=get_fleet_los(0,0);
enemy_los=get_fleet_los(1,0);
air_status=0; 
//0= Air Parity 1= Air Superiority 2= Air Supremacy 3= Air Incapability 4= Air Denial -1= No Planes
if(ally_los>enemy_los){
   battle_fleet_spotted=true;
   acc_spotted=0.05;
   eva_spotted=0.05;
}
else
{
   battle_fleet_spotted=false;
   acc_spotted=0;
   eva_spotted=0;
}
//Air Combat Phase
if(check_ship_type(2,2,3,4,5,6,7,8,10,11,12,15)){
   ally_air=get_fleet_as(0);
   enemy_air=get_fleet_as(1);
   if(ally_air>floor(1.5*enemy_air)){
      if(ally_air>floor(3*enemy_air)){
         air_status=2; //Air Supremacy
      }
      else{
         air_status=1; // Air Superiority
      }
   }
   else if(enemy_air>floor(1.5*ally_air)){
      if(enemy_air>floor(3*ally_air)){
         air_status=4; //Air Denial
      }
      else{
         air_status=3; //Air Incapability
      }
   }
   else
   {
      air_status=0; //Air Parity
   }
   if(ally_air == 0 && enemy_air == 0){
      air_status=-1;//No Planes
   }
}
else
{
   air_status=-1;//No Planes
}
//Anti-Bomber Phase
remove_planes(air_status);
//Contact
if(air_status!=4){
   contact_plane=check_contact(0);
}
if(air_status!=2){
   contact_plane_e=check_contact(1);
}
//Anti-Air Cut In
aaci_ally=check_aaci(0);
aaci_enemy=check_aaci(1);
//Bombing Phase
*/
//Determine Shelling Order

//Shelling Phase


//Display Battle
//Spawn Ally Ships
alarm[0]=60;
ally_spawn_count=0;


