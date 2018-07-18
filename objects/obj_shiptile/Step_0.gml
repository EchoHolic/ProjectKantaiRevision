/// @description Insert description here
// You can write your code in this editor
if(obj_mapHandler.selected == 2 && obj_mapHandler.alarm[1] > 0){
	x-=422/10;
}
if(drag==true){
	y=clamp(mouse_y-20,235,510);
}
else{
	if(obj_mapHandler.shiptile_dragMaster == true){
		if(y < (180+(tile*55))){
			y+=5;
		}
		if(y > (180+(tile*55))){
			y-=5;
		}
	}
	else{
		y=180+(tile*55);
	}
}