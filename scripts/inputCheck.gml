/// inputCheck(keyCheck);
keyCheck = argument0;

keyboard = keyboard_check(keyCheck);
mouse    = mouse_check_button(keyCheck);
//gamepad  = gamepad_button_check(device, key);

return (keyboard || mouse);
