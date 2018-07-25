///Finds ship from ship list through Unique ID and returns array index.
for(var i=0;i<array_length_1d(obj_saver.list_ship);i++){
	if(obj_saver.list_ship[i] != -2){
		if(obj_saver.list_ship[i].unique_id=real(argument0)){
			return i;
		}
	}
}
return -1;