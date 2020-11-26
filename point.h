#ifndef POINT_H
#define POINT_H

#define INF 1000000.0
/* Number of points */
#define N_POINTS 10
#define WIDTH 400
#define HEIGHT 300
#define RADIUS 2
#include "vector_t.h"
#include <cmath>
#include <cassert>

class point{

  /* Point ID */
  int point_id;

  /*Position vector */
  vector_t r;

  /* Velocity vector: v = {dx, dy} */
  vector_t v;

  bool hit = false;

  int radius = RADIUS;

  /* Count of collisions so far for this particle */
  int count;

	// TODO: Include states HEALTHY, INFECTED, RECOVERED
  int status;
  
  public:

    /* Constructor */
    point() = default; 
    
    /* Another constructor */
    point(double x, double y, double vx, double vy);
    
    /* Point ID setter */
    void set_id(int x);

    /* Point ID getter */
    int get_id();

    /* Set point */
    [[maybe_unused]] void set_point(double x, double y, double vx, double vy);

    vector_t get_position();

    /* Displaces the point over the direction of its vector of
    motion */
    void move(double dt);

    /* Getter for count */
    int get_count();

    /* Calculates time to hit other particle */
    double time_to_hit(point* other);

    /* Self explanatory */
    double time_to_hit_vertical_wall();

    /* Self explanatory */
    double time_to_hit_horizontal_wall();

    /* Bounce both particles on opposite directions */
    void bounce_off(point* other);

    /* Bounce current particle with vertical wall */
    void bounce_off_vertical_wall();

    /* Bounce current particle with horizontal walbounce_off_walll */
    void bounce_off_horizontal_wall();

    /* bounce_off_wall */
    void bounce_off_wall(int dir);
};

#endif
