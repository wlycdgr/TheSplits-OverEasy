/// @description Create the circles & init state
inner_circle = instance_create_layer(room_width / 2, room_height / 2, "InnerCircle", obj_InnerCircle);
outer_circle = instance_create_layer(room_width / 2, room_height / 2, "OuterCircle", obj_OuterCircle);

fatal_collision = false;