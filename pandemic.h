#ifndef PANDEMIC_H
#define PANDEMIC_H

//in memoriam luis miranda

#include <SFML/Graphics.hpp>
#include <queue>
#include <vector>
#include <random>
#include "point.h"
#include "event.h"

/* Number of renderizations per clock tick */
#define HZ 1

struct comparator{
  bool operator()(Event& e1, Event& e2)
  {
    return e1.get_predicted_time() > e2.get_predicted_time();
  }
};

/* Main class, simulates all */
class pandemic{

  /* Time counter */
  double timer;

  /* Limit for the simulation */
  double limit = 10000;

  point* points = new point[N_POINTS];

  void predict(point* a, double limit);

  /* Holds all future collisions */
  std::priority_queue<Event, std::vector<Event>, comparator> schedule;

  // Window
  sf::RenderWindow win;
  // Event
  sf::Event event;

  public:
    /* Constructor: sets everything for
    the first time */
    pandemic();

    ~pandemic();

    /* Updates objects on screen */
    void update();

    /* Renders objects on screen */
    void render();

    void set_window();
};

#endif
