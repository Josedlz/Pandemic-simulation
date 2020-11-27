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

void point::set_point(double x, double y, double vx , double vy)
{
  r = {x, y};
  v = {vx, vy};
}

void point::set_id(int x){
  point_id = x;
}

int point::get_id() const{
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
    std::cout << double(sqrt(drdr)) << std::endl;
    this->move(ret);
    other->move(ret);
    this->bounce_off(other);
    std::cout << double(sqrt(drdr)) << std::endl;
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
  std::cout << "Horizontal Wall\n";
  if      (v[1] > 0) return (HEIGHT - r[1] - radius) / v[1];
  else if (v[1] < 0) return (radius - r[1]) / v[1];
  return INF;
}

double point::magnitude(point* other) {
    vector_t dr = other->r - r;
    vector_t dv = other->v - v;
    double dvdr = dr.dot(dv);             // dv dot dr
    double dist = radius + other->radius;   // distance between particle centers at collison

    // magnitude of normal force
    return dvdr / dist;
}

void point::bounce_off(point* other)
{
  std::cout << "before bounce off point 1 " << this->get_id() << " velocity is: " << v << std::endl;
  std::cout << "before bounce off point 2 " << other->get_id() << " velocity is: " << other->v << std::endl;
  vector_t dr = other->r - r;
  double dist = other->radius + radius;
  
  double mag = magnitude(other);
  
  vector_t f = (mag * dr) / dist;
  
  v = v + f;
  //v = v / v.norm();
  other->v = other->v - f;
  //other->v = other->v / other->v.norm();

  /* Increment collision count for both particles */
  ++count;
  ++other->count;
  std::cout << "after bounce off point 1 " << this->get_id() << " velocity is: " << v << std::endl;
  std::cout << "after bounce off point 2 " << other->get_id() << " velocity is: " << other->v << std::endl;
}

int point::get_count()
{
  return count;
}

void point::bounce_off_wall(int dir){
  std::cout << "Bounce wall" << std::endl;
  /* Invert velocity's component */
  std::cout << "Bounce wall for point " << this->get_id() << " velocity is: " << v << std::endl;
  v[dir] = -v[dir];

  /* Increment collision count */
  ++count;
}
