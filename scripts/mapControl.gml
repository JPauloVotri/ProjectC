/// mapControl(mapView);
view = argument0;

if (mouse_wheel_up())
  mapZoom(-0.1, view);
if (mouse_wheel_down())
  mapZoom(0.1, view);
  
mapDrag();
