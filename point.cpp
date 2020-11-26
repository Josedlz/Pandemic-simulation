#include "point.h"

point::point(double x , double y , double vx , double vy )
{
  status = 0;
  count = 0;
  r = {x, y};
  v = {vx, vy};
  point_shape.setRadius(radius);
  point_shape.setFillColor(sf::Color(50, 250, 50));
}

[[maybe_unused]] void point::set_point(double x, double y, double vx , double vy)
{
  r = {x, y};
  v = {vx, vy};
}


void point::set_id(int x){
  point_id = x;
}

int point::get_id(){
  return point_id;
}

vector_t point::get_position() {
    return r;
}
void point::move(double dt)
{
  r = r + dt * v;
  point_shape.setPosition((float)get_position()[0],(float)get_position()[1]);
}

double point::time_to_hit(point* other)
{
  if (this == other) return INF;
  if(r[0] < 0 || r[0] > WIDTH) std::cout << "aca esta el cagon" << this->get_id()<< std::endl;
  assert(r[0] >= 0 && r[0] <= WIDTH);
  if(r[1] < 0 || r[1] > WIDTH) std::cout << "aca esta el cagon" << this->get_id() << std::endl;
  assert(r[1] >= 0 && r[1] <= HEIGHT);
  if(other->r[0] < 0 || other->r[0] > WIDTH) std::cout << "aca esta el cagon" << this->get_id() << std::endl;
  assert(other->r[0] >= 0 && other->r[0] <= WIDTH);
  if(other->r[1] < 0 || other->r[1] > WIDTH) std::cout << "aca esta el cagon" << this->get_id() << std::endl;
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
  
  if (d < 0)         return INF;

  double ret = -(dvdr + sqrt(d)) / dvdv;
  if(drdr < sigma*sigma) {
    std::cout << "#####################SEÑALIZADOR PARTICULAS SOBRELAPADAS####################\n";
    std::cout << "Between point " << this->get_id() << " and point " << other->get_id() << '\n';
    if(ret < 0) std::cout << "#####################SEÑALIZADOR DT NEGATIVO####################\n";
    std::cout << sqrt(drdr) << std::endl;
    this->move(ret);
    other->move(ret);
    this->bounce_off(other);
    std::cout << sqrt(drdr) << std::endl;
    return -1;
  }
  return ret;
}

double point::time_to_hit_vertical_wall()
{
  std::cout << "Vertical Wall\n";
  if      (v[0] > 0) return (WIDTH - r[0] - radius) / v[0];
  else if (v[0] < 0) return (radius - r[0]) / v[0];
  return INF;
}

double point::time_to_hit_horizontal_wall()
{
  std::cout << "Horzontal Wall\n";
  if      (v[1] > 0) return (HEIGHT - r[1] - radius) / v[1];
  else if (v[1] < 0) return (radius - r[1]) / v[1];
  return INF;
}

void point::bounce_off(point* other)
{
  std::cout << "Bounce off\n";
  vector_t dr = other->r - r;
  vector_t dv = other->v - v;
  double dvdr = dv.dot(dr);
  double dist = other->radius + radius;
  
  double magnitude = dvdr / dist;
  
  vector_t f = (magnitude * dr) / dist;
  
  v = v + f;
  other->v = other->v - f;

  /* Increment collision count for both particles */
  ++count;
  ++other->count;
}

int point::get_count()
{
  return count;
}

void point::bounce_off_wall(int dir){
  std::cout << "Bounce wall" << std::endl;
  /* Invert velocity's component */
  std::cout << "Bounce wall velocity" << v << std::endl;
  v[dir] = -v[dir];

  /* Increment collision count */
  ++count;
}
