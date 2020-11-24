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
constexpr double HZ = 0.5;

struct comparator
{
  bool operator()(Event &e1, Event &e2)
  {
    return e1.get_predicted_time() < e2.get_predicted_time();
  }
};

/* Main class, simulates all */
class pandemic
{

  /* Time counter */
  double timer;

  /* True while running */
  bool running;

  /* Represens scenario of the simulation */
  int scene[WIDTH][HEIGHT];

  /* Limit for the simulation */
  double limit = 10000;

  point *points = new point[N_POINTS];

  void predict(point *a, double limit);

  /* Holds all future collisions */
  std::priority_queue<Event, std::vector<Event>, comparator> schedule;

  // Window
  sf::RenderWindow win;
  // Event
  sf::Event event;
  //Particulas
  sf::CircleShape *c1 = new sf::CircleShape[N_POINTS];

  sf::Clock *reloj1;
  sf::Time *tiempo1;

public:
  /* Constructor: sets everything for
    the first time */
  pandemic();

  ~pandemic();

  /* Getter for running */
  bool get_running() const;

  /* Setter for running */
  void set_running(bool val);

  /* Updates objects on screen */
  void update();

  /* Renders objects on screen */
  void render();

  void set_window();
};

#endif
