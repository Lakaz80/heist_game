/// Creates the grid, then creates a baseSquare in each grid section, and assigns them co-ordinates
//Inputs: obj_sandboxController
//Cellwidth and height determined partially by magic numbers, make this part of the generation later
var xCells=20;
var yCells=20;
var cellWidth=25;
var cellHeight=25;
global.gridID=mp_grid_create(0,0,xCells,yCells,cellWidth,cellHeight);
var xCellNumber=0;
var yCellNumber=0;
var lastSquare;
// Below creates one basesquare inside each grid square at the center. Lots of maths, try not to fuck with it. It also adds the item to an array for later use
for(var i=0;i<xCells*yCells;i+=1)
{
	yCellNumber=(1+floor(i/xCells));
	xCellNumber=i-(xCells*(yCellNumber-1));
lastSquare=instance_create_layer(xCellNumber*cellWidth+(0.5*cellWidth),yCellNumber*cellHeight+(0.5*cellHeight),"layer_Squares",obj_baseSquare);
with (lastSquare)
{
	xCoOrdinate=xCellNumber;
	yCoOrdinate=yCellNumber;
}
	array_push(global.squaresArray,lastSquare);
}