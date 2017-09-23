/// @description Insert description here


#macro BTN_A ord("Z")
#macro BTN_B ord("X")
#macro BTN_U vk_up
#macro BTN_D vk_down
#macro BTN_L vk_left
#macro BTN_R vk_right

enum InputReceiver{
	cursor,
	worldTeamFlag


}


var isA=keyboard_check_pressed(BTN_A);
var isB=keyboard_check_pressed(BTN_B);
var dx=keyboard_check_pressed(BTN_R)-keyboard_check_pressed(BTN_L);
var dy=keyboard_check_pressed(BTN_D)-keyboard_check_pressed(BTN_U);

var reciever;
switch(global.inputReceiver){
	case InputReceiver.worldTeamFlag:
		reciever=worldTeamFlag_pointer;
		break;
	case InputReceiver.cursor:
		reciever=global.cursor_pointer;
		break;
}

reciever.isA=isA;
reciever.isB=isB;
reciever.input_dx=dx;
reciever.input_dy=dy;
