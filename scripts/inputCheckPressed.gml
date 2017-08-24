/// inputCheckPressed(keyCheck);
keyCheck = argument0;

keyboard = keyboard_check_pressed(keyCheck);
mouse    = mouse_check_button_pressed(keyCheck);
//gamepad  = gamepad_button_check_pressed(device, key);

return (keyboard || mouse);
