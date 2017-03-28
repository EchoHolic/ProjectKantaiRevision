if(image_xscale=1){
   if(obj_startership.selection>0){
      obj_startership.selection-=1;
   }
   else{
      obj_startership.selection=4;
   }
}
else{
   if(obj_startership.selection<4){
      obj_startership.selection+=1;
   }
   else{
      obj_startership.selection=0;
   }
}

