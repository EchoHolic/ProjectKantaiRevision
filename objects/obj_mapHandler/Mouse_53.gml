/// @description Insert description here
// You can write your code in this editor
if(selected >= 1 && alarm[0] == -1){
	if(selected == 1 && mouse_x > 740 && (mouse_y > 152 && mouse_y < 560)){
		exit;	
	}
	if(selected == 2 && mouse_x > 318 && (mouse_y > 152 && mouse_y < 560)){
		exit;	
	}
	selected=0;
	selectedMap=0;
	with(obj_btnSortieBattleConfirm){instance_destroy()};
	with(obj_shiptile){instance_destroy()};
	with(obj_btnSortieRefitting){instance_destroy()};
	with(obj_btnSortieResupply){instance_destroy()};
	alarm[0]=10;
}