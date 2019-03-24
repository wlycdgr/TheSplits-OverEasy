/// @description Create the circles & init state
instance_create_layer(room_width / 2, room_height / 2, "InnerCircle", obj_OverEasy_InnerCircle);
instance_create_layer(room_width / 2, room_height / 2, "OuterCircle", obj_OverEasy_OuterCircle);

fatal_collision = false;