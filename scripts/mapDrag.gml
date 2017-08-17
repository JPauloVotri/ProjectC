/// mapDrag();

// Verifica se o jogador quer agarrar o mapa ou não e impede que agarre fora da view
if (mouse_check_button_pressed(mb_right) && isMouseInsideView(view)){
  mapDragging = true;
  mapDragX    = mouse_x;
  mapDragY    = mouse_y;
}

if (mouse_check_button_released(mb_right))
  mapDragging = false;

// Arrasta o mapa
if (mapDragging){
  view_xview[view] = view_xview[view] + mapDragX - window_view_mouse_get_x(view);
  view_yview[view] = view_yview[view] + mapDragY - window_view_mouse_get_y(view);
}

// Impede que a view saia da room
view_xview[view] = max(0, min(view_xview[view], room_width - view_wview[view]));
view_yview[view] = max(0, min(view_yview[view], room_height - view_hview[view]));
