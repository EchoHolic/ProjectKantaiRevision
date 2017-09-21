/// @description Insert description here
// You can write your code in this editor
if(!secretary_bobd){
	if(secretary_bob<4){
		secretary_bob+=0.20;
		alarm[0]=6;
	}
	else{
		secretary_bobd=true;
		alarm[0]=60;
	}
}
else{
	if(secretary_bob>-4){
		secretary_bob-=0.20;
		alarm[0]=6;
	}
	else{
		secretary_bobd=false;
		alarm[0]=60;
	}
}