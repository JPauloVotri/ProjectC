/// inputCheckReleased(keyCheck);
keyCheck = argument0;

keyboard = keyboard_check_released(keyCheck);
mouse    = mouse_check_button_released(keyCheck);
//gamepad  = gamepad_button_check_released(device, key);

return (keyboard || mouse);
