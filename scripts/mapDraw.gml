/// mapDraw();
ini_open('cities.ini');
cityCount = ini_read_real("count", "cityCount", 0);

for (i=0; i < cityCount; i+=1){
  cityX    = ini_read_real(string(i), "x", 0);
  cityY    = ini_read_real(string(i), "y", 0);
  cityName = ini_read_string(string(i), "name", "NULL");
  
  draw_set_halign(fa_center);
  draw_set_valign(fa_top);
  draw_text_transformed(cityX, cityY+32, cityName, 6, 6, 0);
}

ini_close();
