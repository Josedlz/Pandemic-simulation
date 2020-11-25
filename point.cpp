#include "point.h"

point::point(double x , double y , double vx , double vy )
{
  status = 0;
  count = 0;
  r = {x, y};
  v = {vx, vy};
}

[[maybe_unused]] void point::set_point(double x, double y, double vx , double vy)
{
  r = {x, y};
  v = {vx, vy};
}

vector_t point::get_position() {
    return r;
}
void point::move(double dt)
{
  r = r + dt * v;
}

void point::update(double vx, double vy)
{
  v = {vx, vy};
}

double point::time_to_hit(point* other)
{
  if (this == other) return INF;
  assert(r[0] >= 0 && r[0] <= WIDTH);
  assert(r[1] >= 0 && r[1] <= HEIGHT);
  if(other->r[0] < 0 or other->r[0] > WIDTH) std::cout << "aca esta el cagon" << r << std::endl;
  assert(other->r[0] >= 0 && other->r[0] <= WIDTH);
  assert(other->r[1] >= 0 && other->r[1] <= HEIGHT);

  vector_t dr = other->r - r;
  vector_t dv = other->v - v;

  double dvdr = dv.dot(dr);
  if (dvdr > 0)      return INF;

  double dvdv = dv.dot(dv);
  if (dvdv == 0)     return INF;

  double drdr = dr.dot(dr);
  double sigma = radius + other->radius;
  double d = (dvdr*dvdr) - dvdv * (drdr - sigma*sigma);
  if(drdr < sigma*sigma) {
    std::cout << "#####################SEÑALIZADOR####################" << '\n';
    std::cout << r << '\n';
    std::cout << v << '\n';
  }
  if (d < 0)         return INF;


  auto ret = -(dvdr + sqrt(d)) / dvdv;
  if(ret < 0){
    std::cout << "CAUSANTE DEL DT NEGATIVO" << "\n";
    std::cout << other->r << '\n';
    std::cout << other->v << '\n';
    std::cout << "#####################SEÑALIZADOR####################" << '\n';
  }
  return ret;
}

double point::time_to_hit_vertical_wall()
{
  std::cout << "Vertical Wall\n";
  if      (v[0] > 0) return std::abs((WIDTH/10.0- r[0] - radius)) / v[0];
  else if (v[0] < 0) return std::abs((radius - r[0])) / v[0];
  else               return INF;
}

double point::time_to_hit_horizontal_wall()
{
  std::cout << "Horzontal Wall\n";
  if      (v[1] > 0) return std::abs((HEIGHT/10.0 - r[1] - radius)) / v[1];
  else if (v[1] < 0) return std::abs((radius - r[1])) / v[1];
  else               return INF;
}

void point::bounce_off(point* other)
{
  std::cout << "Bounce off Wall\n";
  vector_t dv = other->v - v;
  vector_t dr = other->r - r;
  double sigma = other->radius + radius;
  double J = (dv.dot(dr)) / sigma;

  /* Impulse vector */
  vector_t j = (J / sigma) * r;

  /* Update velocities for each particle */
  v = v + j;
  other->v = v - j;

  /* Increment collision count for both particles */
  ++count;
  ++other->count;
}

void point::bounce_off_vertical_wall()
{
  /* Invert velocity's vertical component */
  v[0] = -v[0];
  
  /* Increment collision count */
  ++count;
}

void point::bounce_off_horizontal_wall()
{
  /* Invert velocity's horizontal component */
  v[1] = -v[1];

  /* Increment collision count */
  ++count;
}


int point::get_count()
{
  return count;
}

void point::bounce_off_wall(int dir){
  /* Invert velocity's component */
  v[dir] = -v[dir];

  /* Increment collision count */
  ++count;
}
