/// @description Insert description here
// You can write your code in this editor
switch(obj_startership.selection){
	case 0:
	obj_saver.list_fleet[0,0]=create_ship(9);
	break;
	case 1:
	obj_saver.list_fleet[0,0]=create_ship(37);
	break
	case 2:
	obj_saver.list_fleet[0,0]=create_ship(33);
	break
	case 3:
	obj_saver.list_fleet[0,0]=create_ship(46);
	break
	case 4:
	obj_saver.list_fleet[0,0]=create_ship(94);
	break
	case 5:
	obj_saver.list_fleet[0,0]=create_ship(410);
	break
	default:
	obj_saver.list_fleet[0,0]=create_ship(9);
	break;
}
global.Move_Room=1;
obj_startership.alarm[0]=100;
obj_saver.alarm[0]=100;