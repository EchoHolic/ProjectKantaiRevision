if(compass_wobble=0){
	compass_wobble2=irandom_range(0,4);	
	compass_wobble=5;
}
else{
	compass_wobble--;	
}
if(alarm[3] != -1){
	m_alpha=alarm[3]/60;
}
if(ship_appear > 0){ //Fading in of ship CG then fading out to the left. Use ship_appear=3 for static image
	if(ship_alpha < 1 && ship_appear == 1){
		ship_alpha += 0.025;
	}
	else{
		if(ship_appear==1){
			ship_alpha=1;
			if(alarm[4] == -1){
				alarm[4]=30;
			}
		}
		if(ship_appear=2){
			if(ship_x > -10){
				ship_x -= 0.5;
				if(ship_alpha > 0){
					ship_alpha-=0.025;
				}
			}
			else{
				ship_x=50;
				ship_appear=0;
				ship_alpha=1;
			}
		}
	}
}