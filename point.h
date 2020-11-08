#ifndef POINT_H
#define POINT_H

#define RADIUS 2

class point{

  /*Coordinates of the center */
  int x;
  int y;

  int radius = RADIUS;

  /* Vector of motion: dz = {dx, dy} */
  int dz[2];

  /* Updates point's vector of motion */
  void update(int dx, int dy);

  
  public:

    /* Constructor */
    point() = default;
    point(int x, int y, int dx, int dy);
    
    /* Displaces the point over the direction of its vector of
    motion */
    void move();

    /*Event needs to update a particle's
    vector of motion after a collision */
    friend class Event;
};

#endif