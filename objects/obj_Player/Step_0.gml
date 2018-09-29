/// @description
if (obj_Gameplay_Room_Controller.state != gs_playing) exit;

if (fatal_collision) exit;

if (
	obj_OuterCircle.radius <=
	(obj_InnerCircle.radius + point_distance(obj_InnerCircle.x, obj_InnerCircle.y, obj_OuterCircle.x, obj_OuterCircle.y))
){
	fatal_collision = true;
}

else if (
	obj_Playpan.radius <=
	(obj_OuterCircle.radius + point_distance(obj_Playpan.x, obj_Playpan.y, obj_OuterCircle.x, obj_OuterCircle.y))
){
	fatal_collision = true;
}