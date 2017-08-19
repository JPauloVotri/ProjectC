/// mapControl(mapView);
view = argument0;

if (mouse_wheel_up())
  mapZoom(true, view);
if (mouse_wheel_down())
  mapZoom(false, view);
  
mapDrag();
