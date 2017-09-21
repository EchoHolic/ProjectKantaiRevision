if(argument0 < 100){
	if(argument0 < 10){
		return "00"+string(argument0);
	}
	return "0"+string(argument0);
}
return string(argument0);