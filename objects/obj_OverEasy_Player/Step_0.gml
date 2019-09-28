/// @description
if (obj_OverEasy_Gameplay_Room_Controller.state != gs_playing) exit;

if (fatal_collision) exit;

if (
	obj_OverEasy_OuterCircle.radius <=
	(obj_OverEasy_InnerCircle.radius + point_distance(obj_OverEasy_InnerCircle.x, obj_OverEasy_InnerCircle.y, obj_OverEasy_OuterCircle.x, obj_OverEasy_OuterCircle.y))
){
	fatal_collision = true;
}

/*
else if (
	obj_OverEasy_Playpan.radius <=
	(obj_OverEasy_OuterCircle.radius + point_distance(obj_OverEasy_Playpan.x, obj_OverEasy_Playpan.y, obj_OverEasy_OuterCircle.x, obj_OverEasy_OuterCircle.y))
){
	fatal_collision = true;
}
*/

if (fatal_collision){
	scr_Play_SFX(snd_fx_fatal_collision);
}