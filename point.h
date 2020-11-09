#ifndef POINT_H
#define POINT_H

#define RADIUS 2
#define INF 1e9;
/* Map dimensions */
#define DIM 1000

#include "math.h"
#include "vector_t.h"

class point{

  /*Position vector */
  vector_t r;

  /* Velocity vector: v = {dx, dy} */
  vector_t v;

  int radius = RADIUS;

  /* Count of collisions so far for this particle */
  int count;

  /* Updates point's vector of velocity */
  void update(double dx, double dy);

  
  public:

    /* Constructor */
    point() = default;
    point(double x, double y, double vx, double vy);

    /* Set point */
    void set_point(double x, double y, double dx, double dy);
    
    /* Displaces the point over the direction of its vector of
    motion */
    void move(double dt);

    /* Getter for count */
    int get_count(){
      return count;
    }

    /* Self explanatory */
    void increment_count(){
      ++count;
    }

    /* Calculates time to hit other particle */
    double time_to_hit(point* other);

    /* Self explanatory */
    double time_to_hit_vertical_wall();

    /* Self explanatory */
    double time_to_hit_horizontal_wall();

    /* Returns current kinetic energy */
    double kinetic_energy();

    /* Bounce both particles on opposite directions */
    void bounce_off(point* other);

    /* Bounce current particle with vertical wall */
    void bounce_off_vertical_wall();

    /* Bounce current particle with horizontal wall */
    void bounce_off_horizontal_wall();

};

#endif