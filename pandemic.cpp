/* Based on Sedgewick's implementation of an event-driven simulation
found at: https://algs4.cs.princeton.edu/61event/
*/

#include "pandemic.h"
#include <random>

pandemic::pandemic()
{
  timer = 0;
  running = true; 

  /* TODO: random points set at the map
  with random velocities */

  /* Use mersenne twister algorithm */
  for(int i = 0; i < N_POINTS; i++){

  }

}

void pandemic::predict(point* a, double limit)
{
  if (a == nullptr) return;

    /* point-point collisions */
    for (int i = 0; i < N_POINTS; i++) 
    {
      double dt = a->time_to_hit(&points[i]);
      if (timer + dt <= limit)
        schedule.push(Event(timer + dt, a, &points[i]));
    }

    /* point-wall collisions */
    double dtV = a->time_to_hit_vertical_wall();
    double dtH = a->time_to_hit_horizontal_wall();
    if (timer + dtV <= limit) schedule.push(Event(timer + dtV, a, nullptr));
    if (timer + dtH <= limit) schedule.push(Event(timer + dtH, nullptr, a));
}

bool pandemic::get_running()
{
  return running;
}

void pandemic::update(double limit)
{
  for (int i = 0; i < N_POINTS; i++) 
  {
    predict(&points[i], limit);
  }
  //schedule.push(Event(0, nullptr, nullptr));        // redraw event

  // the main event-driven simulation loop
  while (not schedule.empty()) 
  { 
      // get impending event, discard if invalidated
      Event e = schedule.top();
      schedule.pop();
      if (e.get_invalidated()) continue;
      point* a = e.get_a();
      point* b = e.get_b();

      // physical collision, so update positions, and then simulation clock
      for (int i = 0; i < N_POINTS; i++)
        points[i].move(e.get_predicted_time() - timer);
      timer = e.get_predicted_time();

      // process event
      if      (a != nullptr && b != nullptr) a->bounce_off(b);                // particle-particle collision
      else if (a != nullptr && b == nullptr) a->bounce_off_vertical_wall();   // particle-wall collision
      else if (a == nullptr && b != nullptr) b->bounce_off_horizontal_wall(); // particle-wall collision
      //else if (a == nullptr && b == nullptr) redraw(limit);                   // redraw event

      // update the priority queue with new collisions involving a or b
      predict(a, limit);
      predict(b, limit);
  }
}

void pandemic::render(){
  //TODO: SFML part, here we render every component;
}
