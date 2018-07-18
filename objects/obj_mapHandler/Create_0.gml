/// @description Insert description here
// You can write your code in this editor
selected=false;
selectedMap=0;
selectedWorld=0;
borrowedAlpha=0;
xoffset=0;
current_fleet=0;
confirm_btn=0; //Container variables for created instances
refitting_btn=0;
resupply_btn=0;
shiptile_dragMaster=false; //Control to tell every other shiptile that one is being dragged.
shiptile_1=0;
shiptile_2=0;
shiptile_3=0;
shiptile_4=0;
shiptile_5=0;
shiptile_6=0;

instance_create_layer(130,165,obj_base.HUD_Button_Layer2,obj_maptile_1_1);
instance_create_layer(525,165,obj_base.HUD_Button_Layer2,obj_maptile_1_2);
instance_create_layer(130,335,obj_base.HUD_Button_Layer2,obj_maptile_1_3);
instance_create_layer(525,335,obj_base.HUD_Button_Layer2,obj_maptile_1_4);
instance_create_layer(130,510,obj_base.HUD_Button_Layer2,obj_btnSortieWorld1);