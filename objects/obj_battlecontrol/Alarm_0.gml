switch(ally_spawn_count){
   case 0:
   ally_ship_tile_1=instance_create(-160,120,obj_ship_tile);
   ally_ship_tile_1.fleetno=0;
   break;
   case 1:
   ally_ship_tile_2=instance_create(-160,120+(ally_spawn_count*48),obj_ship_tile);
   ally_ship_tile_2.fleetno=0;
   break;
   case 2:
   ally_ship_tile_3=instance_create(-160,120+(ally_spawn_count*48),obj_ship_tile);
   ally_ship_tile_3.fleetno=0;
   break;
   case 3:
   ally_ship_tile_4=instance_create(-160,120+(ally_spawn_count*48),obj_ship_tile);
   ally_ship_tile_4.fleetno=0;
   break;
   case 4:
   ally_ship_tile_5=instance_create(-160,120+(ally_spawn_count*48),obj_ship_tile);
   ally_ship_tile_5.fleetno=0;
   break;
   case 5:
   ally_ship_tile_6=instance_create(-160,120+(ally_spawn_count*48),obj_ship_tile);
   ally_ship_tile_6.fleetno=0;
   break;
}
audio_play_sound(snd_allyspawn,0,false);
if(combined_fleet=false && ally_spawn_count<5){
   ally_spawn_count+=1;
   alarm[0]=6;
}
else {
   alarm[1]=60;
}

