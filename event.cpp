#include "event.h"

Event::Event(double t, point* pA, point* pB)
{
  predicted_time = t;
  a = pA;
  b = pB;
  if(pA != nullptr) countA = pA->get_count();
}

bool Event::get_invalidated()
{
  return invalidated;
}

void Event::set_invalidated(bool value)
{
  invalidated = value;
}

point* Event::get_a()
{
  return a;
}
point* Event::get_b()
{
  return b;
}

double Event::get_predicted_time()
{
  return predicted_time;
}


