/* Based on Sedgewick's implementation of an event-driven simulation
found at: https://algs4.cs.princeton.edu/61event/
*/

#include "pandemic.h"

pandemic::pandemic()
{
  timer = 0 ;
  running = false;

  // Use random_device to generate a seed for Mersenne twister engine.
  std::random_device rd{}; 
  // Use Mersenne twister engine to generate pseudo-random numbers.
  std::mt19937 engine{rd()};

  // 'Filter' MT engine's output to generate pseudo-random double values,
  // **uniformly distributed** on the closed interval [0, 1].
  // (Note that the range is [inclusive, inclusive].)
  std::uniform_real_distribution<double> dist1{0.0, 100.0};//100.0 DEBERIA SER EL MIN DE HIGT Y WEGTH
  std::uniform_real_distribution<double> dist2{0.0, 1000};

  // Generate pseudo-random number.
    for(int i = 0; i < N_POINTS; i++){ 
      double x = dist1(engine);
      double y = dist1(engine);

      double vx = dist2(engine);
      double vy = dist2(engine);
      points[i] = point(x, y, vx, vy);
    }

    reloj1 = new sf::Clock();

    tiempo1 = new sf::Time();
}

pandemic::~pandemic()
{
  delete [] points;
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

    /* render */
    schedule.push(Event(timer + 0.01, nullptr, nullptr));
    std::cout << "kk "<< schedule.top().get_predicted_time() - timer << '\n';
}

bool pandemic::get_running() const
{
  return running;
}

void pandemic::set_running(bool val)
{
  running = val;
}

void pandemic::update()
{
  for (int i = 0; i < N_POINTS; i++) 
  {
    predict(&points[i], limit);
  }
  //schedule.push(Event(0, nullptr, nullptr));        // redraw event

  // the main event-driven simulation loop
  while(not schedule.empty() && win.isOpen())
  {
    // get impending event, discard if invalidated
    Event e = schedule.top();
    schedule.pop();
    if (e.get_invalidated()) continue;
    point* a = e.get_a();
    point* b = e.get_b();

    // physical collision, so update positions, and then simulation clock
    for (int i = 0; i < N_POINTS; i++){
      points[i].move(e.get_predicted_time() - timer);
    }
    timer = e.get_predicted_time();

    // process event
    if      (a != nullptr && b != nullptr) a->bounce_off(b);        // particle-particle collision
    else if (a != nullptr && b == nullptr) a->bounce_off_wall(0);   // particle-wall collision
    else if (a == nullptr && b != nullptr) b->bounce_off_wall(1);   // particle-wall collision
    else if (a == nullptr && b == nullptr) render();
    // update the priority queue with new event involving a or b
    predict(a, limit);
    predict(b, limit);
  }
  running = false;
}

void pandemic::render(){
  while(win.pollEvent(event)) {
    if(event.type == sf::Event::EventType::Closed) {
      running = false;
      win.close();
      exit(1);
    }
    if(event.type == sf::Event::EventType::KeyPressed) {
      if(event.key.code == sf::Keyboard::Escape) {
        running = false;
        win.close();
        exit(1);
      }
    }
  }
  // Clear screen
  win.clear(sf::Color::Black);

  for(int i = 0; i < N_POINTS; i++){

    c1[i].setRadius(RADIUS);
    c1[i].setFillColor(sf::Color(100, 250, 50));
    c1[i].setPosition((float)points[i].get_position()[0]/1000,(float)points[i].get_position()[1]/1000);

    win.draw(c1[i]);
  }
  win.display();

  /* Al final pusheamos un evento de render mas
  para garantizar nuestro regreso dentro de 1 / HZ segundos*/
  if(timer < limit) {
      schedule.push(Event(timer + 1.0 / HZ, nullptr, nullptr));
  }
  *tiempo1 = reloj1->getElapsedTime();
}

void pandemic::set_window() {
  win.create(sf::VideoMode(WIDTH, HEIGHT), "P01nts S1mul4t10n", sf::Style::Default);

  sf::Vector2u size = win.getSize();
}