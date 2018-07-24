if(appear==true){
	if(is_enemy==false) {
	   if(x <= -6){
	      x+=6;
	   }
	   else
	   {
	      x=0;
	   }
	}
	else{
	if(x >= room_width+6){
	      x-=6;
	   }
	   else
	   {
	      x=room_width;
	   }
	}
}

