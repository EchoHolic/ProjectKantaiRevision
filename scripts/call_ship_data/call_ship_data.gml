//Searches for the row matching the api_id provided and returns it.
for(var i=0;i<array_height_2d(obj_saver.database_ship);i++){
	if(obj_saver.database_ship[i,0]=string(argument0)){
		return i;
	}
}