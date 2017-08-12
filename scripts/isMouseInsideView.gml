viewId     = argument0;
viewX      = view_xview[viewId]
viewY      = view_yview[viewId]
viewWidth  = view_wview[viewId] + viewX;
viewHeight = view_hview[viewId] + viewY;
mouseViewX = window_view_mouse_get_x(viewId);
mouseViewY = window_view_mouse_get_y(viewId);

if (mouseViewX >= viewX &&
    mouseViewY >= viewY &&
    mouseViewX < viewWidth &&
    mouseViewY < viewHeight){
  return true;
}else{
  return false;
}
