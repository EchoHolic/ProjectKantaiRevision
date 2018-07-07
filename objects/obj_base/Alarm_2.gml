/// @description SubMenu Transistor
// You can write your code in this editor
if(move_menu == true){
	move_menu = false;
	if(move_menu_dest!=0){
		base_visible = false;	
		alarm[3]=10;
		instance_create_layer(10,160,HUD_Button_Layer,obj_btnSideOrganize);
		instance_create_layer(10,233,HUD_Button_Layer,obj_btnSideResupply);
		instance_create_layer(10,306,HUD_Button_Layer,obj_btnSideRefitting);
		instance_create_layer(10,379,HUD_Button_Layer,obj_btnSideDocks);
		instance_create_layer(10,452,HUD_Button_Layer,obj_btnSideFactory);
	}
	else{
		base_visible = true;	
		alarm[3]=10;
	}
}