// Runs on click of Qomandan.
//Destroys the old action bar, then creates the UI action bar
function scr_create_actionBar(actions,array){
	for (var i=0; i<array_length(global.actionBarArray);i+=1)
	{
		instance_destroy(global.actionBarArray[i]);
	}
	global.actionsArray=0;
	global.actionsArray=array;
with(instance_create_layer(0,0,"layer_UI",obj_par_actionBar))
{
other.actions=actions;	
};


barWidth=actions*25;
barStart=global.cameraWidth/2-(barWidth/2);

for(var i = 0;i<actions;i+=1)
{
	currentObj=global.actionsArray[i];
	array_push(global.actionBarArray,instance_create_layer(barStart+(25*i),global.cameraHeight-50,"layer_UI",currentObj))
}
}