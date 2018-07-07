//Extremely silly code for selecting new game or continue
if((mouse_x<room_width/2) && (mouse_y>470 && mouse_y<540)){
   global.New_Game=true;
   if(!instance_exists(obj_namer)){
		instance_create_layer(0,0,layer_notice,obj_namer);
   }
}
if((mouse_x>room_width/2) && (mouse_y>470 && mouse_y<540)){
   if(global.Save_Exists=true){
      global.New_Game=false;
      global.Move_Room=1;
      alarm[0]=60;
      obj_saver.alarm[0]=600;
   }
	else {
		if(!instance_exists(obj_notice)){
			instance_create_layer(0,0,layer_notice,obj_notice);
		}
	}
}

