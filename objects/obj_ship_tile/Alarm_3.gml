if(action_type == 3){
	var ii=15;
}
else{
	var ii=18;
}
var i=instance_create_layer(x+50+(ii*action_number_d),y+5,obj_battlecontrol.layer_damage,obj_damage_text);
i.image_index=action_number[action_number_d];
if(action_type=3){
	i.crit=true;
}
action_number_d++;
if(action_number_d<action_number_l){
	alarm[3]=3;
}