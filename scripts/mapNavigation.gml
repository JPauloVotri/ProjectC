/// mapNavigation();

mapLineAngle     = point_direction(mapLineX1, mapLineY1, mapLineX2, mapLineY2);
mapLineDistance  = point_distance(mapLineX1, mapLineY1, mapLineX2, mapLineY2);
mapLineDistance /= 4;

if !(isMouseInsideView(2)) exit;

if (mapDrawing){
  mapLineX2 = mouse_x;
  mapLineY2 = mouse_y;
}

tempCity = instance_position(mouse_x, mouse_y, oCity);

if (inputCheckPressed(mb_left)){
  if (!mapDrawing){
    if (tempCity != noone){
      mapLineX1 = tempCity.x;
      mapLineY1 = tempCity.y;
    }else{
      mapLineX1 = mouse_x;
      mapLineY1 = mouse_y;
    }

    mapDrawing = true;
  }else{
    if (tempCity != noone){
      mapLineX2 = tempCity.x;
      mapLineY2 = tempCity.y;
    }

    mapDrawing = false;
  }
}
