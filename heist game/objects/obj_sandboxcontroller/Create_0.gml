/// @description Insert description here
// You can write your code in this editor
//Created By: On Sandbox room creation
//sets enums for squares,creates the grid, camera, UI and debug display, then creates minions and sets turn
global.debugText=0;
global.squaresArray=[];
global.minionsArray=[];
global.actionsArray=[];
global.actionBarArray=[];
global.selectedMinion=0;
enum gameStates{
playerTurn,
actionInProgress,
enemyTurn,
}
global.gameState=gameStates.playerTurn;
instance_create_layer(0,0,"layer_Grid",obj_Grid);
instance_create_layer(0,0,"layer_Grid",obj_debug_display);
instance_create_layer(0,0,"layer_UI",obj_camera);
instance_create_layer(0,0,"layer_UI",obj_par_UI);
enum squareTypes{
neutral,
movement,
occupiedAlly,
occupiedEnemy,
occupiedNeutral,
abilityTarget
};
enum actionTypes{
atk=1,
move=2,
}
scr_create_sandbox_minions();
global.minionTurn=global.minionsArray[0];
