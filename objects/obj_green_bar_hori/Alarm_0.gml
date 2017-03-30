if(image_yscale<1){
   image_yscale+=0.05;
   alarm[0]=1;
}
else{
   instance_create_layer(x+150,y,obj_battlecontrol.layer_bar2,obj_scrolling_text);
   alarm[1]=100;
}

