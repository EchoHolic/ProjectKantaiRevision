/// @description Insert description here
// You can write your code in this editor
if(drag == true){
	if((y+25) > (other.y)){
		if(tile < other.tile && other.alarm[1] == -1){
			var i = tile;
			tile = other.tile;
			other.tile = i;
			other.alarm[1]=10;
		}
	}
	if((y+15) < (other.y+40)){
		if(tile > other.tile && other.alarm[1] == -1){
			var i = tile;
			tile = other.tile;
			other.tile = i;
			other.alarm[1]=10;
		}
	}
}