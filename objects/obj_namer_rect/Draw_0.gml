if(obj_namer.btn_highlight>0){
   percentage_transform= (x-obj_namer.btn.x)/(obj_namer.btn2.x-obj_namer.btn.x);
   draw_set_color(merge_color(obj_saver.c_Bright_Blue,obj_saver.c_Dark_Orange,percentage_transform));
   draw_rectangle(x-25-(17*(1-percentage_transform)),y,x+25+(17*(1-percentage_transform)),y+3,false);
}

