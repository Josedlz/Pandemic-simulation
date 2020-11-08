#ifndef EVENT_H
#define EVENT_H

#include "point.h"
#include "wall.h"

/* Describes a generic event */
class Event{

  /* Involves at least one particle */
  point* p1;

  /* Predicted collision time */
  unsigned long long predicted_time;

  /* Event-driven simulation requires it */
  bool invalidated;

  public:

    Event();
  
    /* Executes collision with wall,
    updating particles involved */
    virtual void execute();

    /* Getter for invalidated */
    bool get_invalidated();

    /* Setter for invalidated */
    void set_invalidated(bool value);
};

/* Event representing point with
point collision */
class PP_collision: public Event{
  point* p2;

  public:
    PP_collision();

    /* Executes collision between 2
    particles, updating them */
    void execute(); 

};

/*Event representing point with
wall collision */
class PW_collision: public Event{

  public:
    PW_collision();

    /* Executes collision between 
    a particle and a wall, updating
    the particle */
    void execute();

};

#endif 