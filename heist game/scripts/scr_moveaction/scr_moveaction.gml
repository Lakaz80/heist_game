// Run when obj_move_button clicked
// Gets attached square from selected minion and turns all squares within 3 of it movement
function scr_moveAction(){
	var startX=0;
	var startY=0;
with(global.selectedMinion)
{
	with(attachedSquare)
	{
	startX=xCoOrdinate;
	startY=yCoOrdinate;
	}
}
for(var i=0;i<array_length(global.squaresArray);++i)
{
if(abs(global.squaresArray[i].xCoOrdinate-startX)<3&&abs(global.squaresArray[i].yCoOrdinate-startY)<3)
{
	with(global.squaresArray[i])
	{
	type=squareTypes.movement;	
	}
}
}
}