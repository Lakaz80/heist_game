// Script assets have changed for v2.3.0 see
//Does cleanup, then iterates through the squares array until it finds the right starting square based on initial co-ords, records the attached square, and moves to those co-ordinates.
//Called by scr_create_sandbox_minions,obj_base_square
function scr_move_minion(xCoOrdinate,yCoOrdinate,minion){
	global.gameState=gameStates.actionInProgress;
	scr_action_cleanup();
global.debugText=yCoOrdinate;
for(var i=0;i<array_length(global.squaresArray);++i)
{
if(global.squaresArray[i].xCoOrdinate=xCoOrdinate&&global.squaresArray[i].yCoOrdinate=yCoOrdinate)
{
	var movePath=path_add();

	with(minion)
	{
		path_set_closed(movePath,false);
		path_add_point(movePath,x,y,4);
		path_add_point(movePath,global.squaresArray[i].x, global.squaresArray[i].y,4);
		
	path_start(movePath,10,path_action_stop,true);
	attachedSquare=global.squaresArray[i];
	path_delete(movePath);
	}
}
}
}
