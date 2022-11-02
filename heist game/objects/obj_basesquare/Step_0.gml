/// Changes color based on type, different actions based on type.
if(type=squareTypes.neutral)
{
image_blend=c_white;
}

if(type=squareTypes.movement)
{
image_blend=c_blue;
if(position_meeting(mouse_gui_x,mouse_gui_y,id))
{
	if(mouse_check_button_pressed(mb_left))
	{
		scr_move_minion(xCoOrdinate,yCoOrdinate,global.selectedMinion)
		scr_deselect();
	}

}

}
