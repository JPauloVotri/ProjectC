/// keyCheck(action, release-0/pressed-1/direct-2);
action = argument0;
type   = argument1;

ini_open('config.ini');

returnValue = ini_read_real("keys", action, 0);
if (returnValue >= 1 && returnValue <= 3) input = 0;


switch (input){
  case 0:
    switch (type){
      case 0:
        mouse_check_button_released(key);
      break;
    
      default:
        STATEMENT;
    }
     
  break;

  default:
}
 


ini_close();

return returnValue;
