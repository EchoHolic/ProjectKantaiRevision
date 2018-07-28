if(crit=true){
	sprite_index=spr_critical_text;	
}
if(bounce == false){
	if(ystart-y <= 10){
		y-=1;
	}
	else{
		bounce=true;
	}
}
else{
	if(y < ystart){
		y+=1;	
	}
	else{
		if(alarm[0] == -1){
			alarm[0]=8;
		}
	}
}