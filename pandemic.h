#ifndef PANDEMIC_H
#define PANDEMIC_H

//in memoriam luis miranda

#include <queue>
#include "point.h"
#include "event.h"
/* Number of points */
#define N_POINTS 100

struct comparator{
  bool operator()(Event& e1, Event& e2)
  {
    return e1.get_predicted_time() < e2.get_predicted_time();
  }
};

/* Main class, simulates all */
class pandemic{

  /* Time counter */
  double timer;

  /* True while running */ 
  bool running;

  /* Represens scenario of the simulation */
  int scene[DIM][DIM];

  point* points = new point[N_POINTS];

  void predict(point* a, double limit);


  /* Holds all future collisions */
  std::priority_queue<Event, vector<Event>, comparator> schedule;

  public:
    /* Constructor: sets everything for
    the first time */
    pandemic();

    /* Getter for running */
    bool get_running();

    /* Updates objects on screen */
    void update(double limit);

    /* Renders objects on screen */
    void render();
};

#endif