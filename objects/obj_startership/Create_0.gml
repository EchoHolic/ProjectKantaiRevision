layer_bar=layer_create(6);
select=instance_create_layer(room_width/2,505,layer_bar,obj_startership_select);
arrow_left=instance_create_layer(100,505,layer_bar,obj_startership_arrow);
arrow_right=instance_create_layer(room_width-100,505,layer_bar,obj_startership_arrow);
arrow_right.image_xscale=-1;
selection=0;
i=0;

