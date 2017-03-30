if((mouse_x<room_width/2) && (mouse_y>470 && mouse_y<540)){
   global.New_Game=true;
   instance_create_layer(0,0,layer_notice,obj_namer);
}
if((mouse_x>room_width/2) && (mouse_y>470 && mouse_y<540)){
   if(global.Save_Exists=true){
      global.New_Game=false;
      global.Move_Room=1;
      alarm[0]=120;
      obj_saver.alarm[0]=120;
   }
}

