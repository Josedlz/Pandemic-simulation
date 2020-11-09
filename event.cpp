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
	if(a == nullptr && a->get_count() != countA) return 0;
	if(b == nullptr && b->get_count() != countB) return 0;
	return 1;
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


