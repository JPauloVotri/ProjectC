///mapZoom(amount, view);
amount = 1+argument0;
view   = argument1;

maxHeight = 4800;
minHeight = 480;

baseWidth  = 6400;
baseHeight = 4800;

// Limita o nivel de zoom
if (view_hview[view]*amount <= minHeight && amount < 1) exit;
if (view_hview[view]*amount >= maxHeight && amount > 1) exit;

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
