//Routing Logic 1-1
//Node A - 50% Node B, 50% Node C.
//This alarm is for moving nodes.
switch(current_node){
	case 0:
	current_node=1;
	move_allow=true;
	move_reached=false;
	break;
	
	case 1:
	current_node=irandom_range(2,3);
	move_allow=true;
	move_reached=false;
	break;
	
	case 2:
	case 3:
	//Sortie End
	break;
}