/// mapDraw();
ini_open('cities.ini');
cityCount = ini_read_real("count", "cityCount", 0);

for (i=0; i < cityCount; i+=1){
  cityX    = ini_read_real(string(i), "x", 0);
  cityY    = ini_read_real(string(i), "y", 0);
  cityName = ini_read_string(string(i), "name", "NULL");
  
  draw_set_colour(c_black);
  draw_set_halign(fa_center);
  draw_set_valign(fa_top);
  draw_text_transformed(cityX, cityY+32, cityName, 6/zoomLevel, 6/zoomLevel, 0);
}

ini_close();

if (mapDrawing != -1){
  draw_set_colour(c_red);
  draw_line(mapLineX1, mapLineY1, mapLineX2, mapLineY2);
  
  draw_set_halign(fa_right);
  draw_set_valign(fa_bottom);
  draw_text_transformed(mapLineX2, mapLineY2, string(mapLineAngle)+"°#"+string(mapLineDistance)+"Km", 6/zoomLevel, 6/zoomLevel, 0);
}
