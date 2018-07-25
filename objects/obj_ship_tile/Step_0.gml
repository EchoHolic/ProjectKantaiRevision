if(appear == true){ //Entering Battle
	if(is_enemy == false) {
	   if(x <= -5){
	      x+=7;
	   }
	   else
	   {
	      x=0;
		  appear=2;
	   }
	}
	else{
	if(image_alpha < 1){
	      image_alpha+=0.075;
	   }
	   else
	   {
	      image_alpha=1;
		  appear=2;
	   }
	}
}



if(action == 1){ //Sliding out
	if(action_type <= 3){
		if(is_enemy == false){
			if(x < 24){
				x+=6;
			}
			else{
				x=24;
				action=2;
				alarm[1]=21;
			}
		}
		else{
			if(x > room_width-180){
				x-=6;
			}
			else{
				x=room_width-180;
				action=2;
				alarm[1]=21;
			}
		}
	}
}
if(action == 3){ //Vibrate tile
	if(action_type == 0){ //Firing gun movement
		if(action_fire == false){
			if(is_enemy == false){
				x-=16;
				action_fire=true;
			}
			else{
				x+=16;
				action_fire=true;
			}
		}
		else{
			if(is_enemy == false){
				if(x < 24){
					x+=4;
				}
				else{
					x=24;
					action=4;
				}
			}
			else{
				if(x > room_width-180){
					x-=4;
				}
				else{
					x=room_width-180;
					action=4;
				}
			}
		}
	}
	if(action_type > 0 && action_type <= 3){ //Getting hit movement
		if(is_enemy==false){
			x=27+irandom_range(0,5);	
		}
		else{
			x=room_width-187-irandom_range(0,5);	
		}
	}
}
if(action == 5){ //Sliding back
	if(is_enemy == false){
		if(x > 0){
			x-=6;
		}
		else{
			x=0;
			action_fire=0;
			action_type=0;
			action_damage=0;
			action=0;
		}
	}
	else{
		if(x > room_width-160){
			x+=6;
		}
		else{
			x=room_width-160;
			action_fire=0;
			action_type=0;
			action_damage=0;
			action=0;
		}
	}
}