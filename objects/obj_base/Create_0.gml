secretary_bob=0;
secretary_bobd=false; //For reversing the bobbing
secretary_alpha=1; //For transistions
secretary = asset_get_index("ship_"+string_format_digit(obj_saver.list_ship[call_ship_uid(obj_saver.list_fleet[0,0])].api_id)+"_main");
move_alpha=0; // Alpha variable (duh)
move_menu_black=false; // Fade-in Transistion
move_menu=false; // If the menu is to be transistioned
move_menu2=false; //For 2nd phase transistion
move_menu_dest=0; // Menu Destination

menu_sortie_mode=0; //Selection of sortie mode; 0 = None, 1 = Battle, 2 = PvP, 3 = Expedition
base_visible=true; //If the base is fully visible
alarm[0]=5;
HUD_Button_Layer=layer_create(-90);
HUD_Button_Layer2=layer_create(-91);
HUD_Button_Layer3=layer_create(-92);
instance_create_layer(0,0,HUD_Button_Layer,obj_btnBadgeTop);
instance_create_layer(170,29,HUD_Button_Layer,obj_btnProfile);
instance_create_layer(300,29,HUD_Button_Layer,obj_btnLibrary);
instance_create_layer(430,29,HUD_Button_Layer,obj_btnItems);
instance_create_layer(545,29,HUD_Button_Layer,obj_btnQuests);
instance_create_layer(235,330,HUD_Button_Layer,obj_btnSortie);
instance_create_layer(235,197,HUD_Button_Layer,obj_btnOrganize);
instance_create_layer(120,259,HUD_Button_Layer,obj_btnResupply);
instance_create_layer(350,259,HUD_Button_Layer,obj_btnRefitting);
instance_create_layer(120,396,HUD_Button_Layer,obj_btnDocks);
instance_create_layer(350,396,HUD_Button_Layer,obj_btnFactory);
instance_create_layer(235,463,HUD_Button_Layer,obj_btnStrategy);
instance_create_layer(932,555,HUD_Button_Layer3,obj_btnOptions);

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