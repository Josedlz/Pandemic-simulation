#ifndef PANDEMIC_H
#define PANDEMIC_H

//in memoriam luis miranda

#include <queue>
#include "point.h"

/* Map dimensions */
#define DIM 1000

/* Number of points */
#define N_POINTS 100

/* Main class, simulates all */
class pandemic{

  /* Time counter */
  unsigned long long timer;

  /* True while running */ 
  bool running;

  /* Represens scenario of the simulation */
  int scene[DIM][DIM];

  point* points = new point[N_POINTS];

  /* Holds all future collisions */
  std::priority_queue<hvd1, hvd2> schedule;

  public:
    /* Constructor: sets everything for
    the first time */
    pandemic();

    /* Getter for running */
    bool get_running();

    /* updates objects on screen */
    void update();
};

#endif