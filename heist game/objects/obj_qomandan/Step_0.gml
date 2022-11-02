/// @description Insert description here
// You can write your code in this editor
//If clicked on, runs Create Action Bar
if(global.gameState=gameStates.playerTurn)
{
if(mouse_check_button_pressed(mb_left))
{
	if collision_point(mouse_x,mouse_y,id,true,false)
	{
		image_alpha=1;
		global.selectedMinion=self;
		scr_create_actionBar(array_length(minionActionsArray),minionActionsArray)
	}
	if !(collision_point(mouse_x,mouse_y,id,true,false))
	{
		image_alpha=0.5;
	}
}
}