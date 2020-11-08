#include "point.h"


point::point(int x, int y, int dx, int dy){
  this->x = x; this->y = y;
  dz[0] = dx; dz[1] = dy;
}

void point::move(){
  x += dz[0];
  y += dz[1];
}

void point::update(int dx, int dy){
  dz[0] = dx;
  dz[1] = dy;
}