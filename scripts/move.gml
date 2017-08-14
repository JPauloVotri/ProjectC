if (spd == 0){
  xRemainder = 0;
  yRemainder = 0;
}

angleCos = dcos(angle);
angleSin = -dsin(angle);

xSpeed      = angleCos*spd;
xSpeedAbs   = abs(xSpeed);
xSpeedFloor = floor(xSpeedAbs);
ySpeed      = angleSin*spd;
ySpeedAbs   = abs(ySpeed);
ySpeedFloor = floor(ySpeedAbs);

xDir = sign(xSpeed);
yDir = sign(ySpeed);

xRemainderAbs = abs(xRemainder);
yRemainderAbs = abs(yRemainder);

x += (xSpeedFloor + floor(xRemainderAbs))*xDir;
y += (ySpeedFloor + floor(yRemainderAbs))*yDir;

if (xRemainderAbs >= 1)
  xRemainder -= floor(xRemainderAbs)*xDir;
if (yRemainderAbs >= 1)
  yRemainder -= floor(yRemainderAbs)*yDir;
  
xRemainder += frac(xSpeed);
yRemainder += frac(ySpeed);

/*repeat(xSpeedFloor){
  x += xDir + floor(xRemainder);

  if (xRemainder >= 1)
    xRemainder -= floor(xRemainder);

  xRemainder += angleCos;
}

repeat(abs(ySpeedFloor)){
  y += yDir + floor(yRemainder);

  if (yRemainder >= 1)
    yRemainder -= floor(xRemainder);

  yRemainder += angleSin;
}*/
