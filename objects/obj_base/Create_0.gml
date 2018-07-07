secretary_bob=0;
secretary_bobd=false; //For reversing the bobbing
secretary_alpha=1; //For transistions
move_alpha=0; // Alpha variable (duh)
move_menu_black=false; // Fade-in Transistion
move_menu=false; // If the menu is to be transistioned
move_menu2=false; //For 2nd phase transistion
move_menu_dest=0; // Menu Destination
base_visible=true; //If the base is fully visible
alarm[0]=5;
HUD_Button_Layer=layer_create(-90);
instance_create_layer(0,0,HUD_Button_Layer,obj_btnBadgeTop);
instance_create_layer(170,28,HUD_Button_Layer,obj_btnProfile);
instance_create_layer(300,28,HUD_Button_Layer,obj_btnLibrary);
instance_create_layer(430,28,HUD_Button_Layer,obj_btnItems);
instance_create_layer(545,28,HUD_Button_Layer,obj_btnQuests);
instance_create_layer(235,330,HUD_Button_Layer,obj_btnSortie);
instance_create_layer(235,197,HUD_Button_Layer,obj_btnOrganize);
instance_create_layer(120,259,HUD_Button_Layer,obj_btnResupply);
instance_create_layer(350,259,HUD_Button_Layer,obj_btnRefitting);
instance_create_layer(120,396,HUD_Button_Layer,obj_btnDocks);
instance_create_layer(350,396,HUD_Button_Layer,obj_btnFactory);
instance_create_layer(235,463,HUD_Button_Layer,obj_btnStrategy);
instance_create_layer(932,555,HUD_Button_Layer,obj_btnOptions);

/*
move_menu_dest
0 = Main Menu
1 = Organization
2 = Loadout
3 = Construction
4 = Repair
5 = Strategy
6 = Logistics
7 = Sortie
*/