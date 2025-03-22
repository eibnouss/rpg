keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(ord("V"));
keyItem = keyboard_check_pressed(vk_control);
inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0);

if (!global.gamePaused) script_execute(state);
depth = -bbox_bottom{

}