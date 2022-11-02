// Script assets have changed for v2.3.0 see
//Iterates through the squares array until it finds the right starting square based on initial co-ords, records the attached square, and moves to those co-ordinates.
//Called by scr_create_sandbox_minions
function scr_place_minion(xCoOrdinate,yCoOrdinate,minion){
global.debugText=yCoOrdinate;
for(var i=0;i<array_length(global.squaresArray);++i)
{
if(global.squaresArray[i].xCoOrdinate=xCoOrdinate&&global.squaresArray[i].yCoOrdinate=yCoOrdinate)
{
	with(minion)
	{
	x=global.squaresArray[i].x;
	y=global.squaresArray[i].y;
	attachedSquare=global.squaresArray[i];
	}
}
}
}
