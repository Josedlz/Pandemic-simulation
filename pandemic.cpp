#include "pandemic.h"

pandemic::pandemic(){
  timer = 0;
  running = true; 
  /* TODO: random points set at the map
  with random velocities */
}

bool pandemic::get_running(){
  return running;
}

void pandemic::update(){
  

  ++timer; 
}