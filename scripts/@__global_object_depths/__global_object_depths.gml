// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -90; // obj_base
global.__objectDepths[1] = -100; // obj_saver
global.__objectDepths[2] = 0; // obj_green_bar_hori
global.__objectDepths[3] = 0; // obj_battlecontrol
global.__objectDepths[4] = -1; // obj_namer
global.__objectDepths[5] = -2; // obj_namer_btn
global.__objectDepths[6] = 0; // obj_equip
global.__objectDepths[7] = -2; // obj_namer_rect
global.__objectDepths[8] = -2; // obj_namer_btn2
global.__objectDepths[9] = -1; // obj_notice
global.__objectDepths[10] = 0; // obj_ship
global.__objectDepths[11] = 0; // obj_start
global.__objectDepths[12] = -1; // obj_startership_arrow
global.__objectDepths[13] = 0; // obj_startership
global.__objectDepths[14] = 1; // obj_ship_tile
global.__objectDepths[15] = -1; // obj_startership_select
global.__objectDepths[16] = -1; // obj_scrolling_text


global.__objectNames[0] = "obj_base";
global.__objectNames[1] = "obj_saver";
global.__objectNames[2] = "obj_green_bar_hori";
global.__objectNames[3] = "obj_battlecontrol";
global.__objectNames[4] = "obj_namer";
global.__objectNames[5] = "obj_namer_btn";
global.__objectNames[6] = "obj_equip";
global.__objectNames[7] = "obj_namer_rect";
global.__objectNames[8] = "obj_namer_btn2";
global.__objectNames[9] = "obj_notice";
global.__objectNames[10] = "obj_ship";
global.__objectNames[11] = "obj_start";
global.__objectNames[12] = "obj_startership_arrow";
global.__objectNames[13] = "obj_startership";
global.__objectNames[14] = "obj_ship_tile";
global.__objectNames[15] = "obj_startership_select";
global.__objectNames[16] = "obj_scrolling_text";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for