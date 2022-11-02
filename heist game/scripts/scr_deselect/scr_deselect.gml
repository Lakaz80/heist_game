// Deselects squares and minion
//Run by obj_move_button, scr_action_cleanup
function scr_deselect(){
global.selectedMinion=0;
for(var i=0;i<array_length(global.squaresArray);++i)
{

	with(global.squaresArray[i])
	{
	type=squareTypes.neutral;	
	}


}
}