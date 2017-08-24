/// key(action);
action = argument0;

ini_open('config.ini');

returnValue = ini_read_real("keys", action, 0);

ini_close();

return returnValue;
