/// @description Insert description here
// You can write your code in this editor
if(selected == 1){
	confirm_btn=instance_create_layer(760,520,obj_base.HUD_Button_Layer3,obj_btnSortieBattleConfirm);
	shiptile_1=instance_create_layer(986,235,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_1.tile=1;
	shiptile_2=instance_create_layer(986,290,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_2.tile=2;
	shiptile_3=instance_create_layer(986,345,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_3.tile=3;
	shiptile_4=instance_create_layer(986,400,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_4.tile=4;
	shiptile_5=instance_create_layer(986,455,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_5.tile=5;
	shiptile_6=instance_create_layer(986,510,obj_base.HUD_Button_Layer3,obj_shiptile);
	shiptile_6.tile=6;
	refitting_btn=instance_create_layer(986,160,obj_base.HUD_Button_Layer3,obj_btnSortieRefitting);
	resupply_btn=instance_create_layer(986,190,obj_base.HUD_Button_Layer3,obj_btnSortieResupply);
}
xoffset=0;