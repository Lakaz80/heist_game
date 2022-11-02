// Run by obj_sandbox_controller
//Creates qomandans with set x and y co-ords.
//Might want to make that for loop it's own script for minion creation, but rn it's here. It assigns the attached square to the created minion.
function scr_create_sandbox_minions(){
var	lastMinion=instance_create_layer(0,0,"layer_squares",obj_Qomandan)
scr_place_minion(5,8,lastMinion);
with(lastMinion)
{
for(var i=0;i<array_length(global.squaresArray);++i)
{
	if(global.squaresArray[i].xCoOrdinate=5&&global.squaresArray[i].yCoOrdinate=8)
	{
		attachedSquare=global.squaresArray[i];
	}
}
}
array_push(global.minionsArray,lastMinion)
}