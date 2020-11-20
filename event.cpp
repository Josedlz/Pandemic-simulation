#include "event.h"

Event::Event(double t, point* pA, point* pB)
{
  predicted_time = t;
  a = pA;
  b = pB;
  if(pA != nullptr) countA = pA->get_count();
  else              countA = -1;
  if(pB != nullptr) countB = pB->get_count();
  else              countB = -1;
}

bool Event::get_invalidated()
{
	if(a != nullptr && a->get_count() != countA) return true;
	if(b != nullptr && b->get_count() != countB) return true;
	return false;
}

point* Event::get_a()
{
  return a;
}
point* Event::get_b()
{
  return b;
}

double Event::get_predicted_time() const
{
  return predicted_time;
}
