///mapZoom(increase, view);
increase = argument0;
view     = argument1;

if (increase) amount = 0.5 else amount = 2;

// Limita o nivel de zoom
if (zoomLevel/amount > zoomMax) exit;
if (zoomLevel/amount < zoomMin) exit;
zoomLevel /= amount;

// Pega os novos limites da view
xOff = abs(view_wview[view]*amount - view_wview[view]);
yOff = abs(view_hview[view]*amount - view_hview[view]);

// Altera a escala da view
view_wview[view] = view_wview[view]*amount;
view_hview[view] = view_hview[view]*amount;

// Ajusta a posição da view baseado na escala
if (amount < 1){
  view_xview[view] += xOff/2;
  view_yview[view] += yOff/2;
}else if (amount > 1){
  view_xview[view] -= xOff/2;
  view_yview[view] -= yOff/2;
}
