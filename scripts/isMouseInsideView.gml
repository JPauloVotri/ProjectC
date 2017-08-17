/// isMouseInsideView(view);
view       = argument0;
viewX      = view_xview[view]
viewY      = view_yview[view]
viewWidth  = view_wview[view] + viewX;
viewHeight = view_hview[view] + viewY;
mouseViewX = window_view_mouse_get_x(view);
mouseViewY = window_view_mouse_get_y(view);

if (mouseViewX >= viewX &&
    mouseViewY >= viewY &&
    mouseViewX < viewWidth &&
    mouseViewY < viewHeight){
  return true;
}else{
  return false;
}
