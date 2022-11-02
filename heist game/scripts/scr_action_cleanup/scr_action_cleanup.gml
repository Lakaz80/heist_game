// Called by scr_move_minion
//Deselects everything and cleans up actionbar
function scr_action_cleanup(){
	for (var i=0; i<array_length(global.actionBarArray);i+=1)
	{
		instance_destroy(global.actionBarArray[i]);
	}
	scr_deselect();
}