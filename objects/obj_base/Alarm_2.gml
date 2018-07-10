/// @description SubMenu Transistor
// You can write your code in this editor
if(move_menu == true){
	move_menu = false;
	if(move_menu_dest!=0){
		if(base_visible == true){
			alarm[3]=10;
			instance_create_layer(10,160,HUD_Button_Layer,obj_btnSideOrganize);
			instance_create_layer(10,233,HUD_Button_Layer,obj_btnSideResupply);
			instance_create_layer(10,306,HUD_Button_Layer,obj_btnSideRefitting);
			instance_create_layer(10,379,HUD_Button_Layer,obj_btnSideDocks);
			instance_create_layer(10,452,HUD_Button_Layer,obj_btnSideFactory);
			switch(move_menu_dest){
				case 7:
				instance_create_layer(92,161,HUD_Button_Layer,obj_btnSortieBattle);
				instance_create_layer(396,164,HUD_Button_Layer,obj_btnSortiePvP);
				instance_create_layer(700,158,HUD_Button_Layer,obj_btnSortieExp);
				break;
			}
		}
		
		base_visible = false;	
	}
	else{
		base_visible = true;
		menu_sortie_mode= 0;
		alarm[3]=10;
	}
}