#ifndef EVENT_H
#define EVENT_H

#include "point.h"
#include "wall.h"

/*
  An event during a particle collision simulation. Each event contains
  the time at which it will occur (assuming no supervening actions)
  and pointers to the particles a and b involved.

    -  a and b both null:      render everything on screen
    -  a null, b not null:     collision with vertical wall
    -  a not null, b null:     collision with horizontal wall
    -  a and b both not null:  collision between a and b
*/
class Event{

  point* a; point* b;

  /* Collision count for each particle at event creation */
  int countA; int countB;

  /* Predicted collision time */
  double predicted_time;

  public:

    Event(double t, point* pA, point* pB);
  
    /* Updates everything on screen */
    void update();

    /* Getter for invalidated */
    bool get_invalidated();

    /* Returns points */
    point* get_a();
    point* get_b();

    /* Return predicted time */
    double get_predicted_time() const;
};

#endif 
