/* Based on Sedgewick's implementation of an event-driven simulation
found at: https://algs4.cs.princeton.edu/61event/
*/

#include "pandemic.h"

pandemic::pandemic()
{
  timer = 0 ;

  // Use random_device to generate a seed for Mersenne twister engine.
  std::random_device rd{}; 
  // Use Mersenne twister engine to generate pseudo-random numbers.
  std::mt19937 engine{rd()};

  // 'Filter' MT engine's output to generate pseudo-random double values,
  // **uniformly distributed** on the closed interval [0, 1].
  // (Note that the range is [inclusive, inclusive].)
  std::uniform_real_distribution<double> dist1{0.0, std::min(HEIGHT, WIDTH)};
  std::uniform_real_distribution<double> dist2{0.0, 1};
  std::unordered_map<std::string, bool> mp;

  // Generate pseudo-random number.
    for(int i = 0; i < N_POINTS; i++){ 
      double x = dist1(engine);
      double y = dist1(engine);
      double vx = dist2(engine);
      double vy = dist2(engine);
      points[i] = point(x, y, vx, vy);
      points[i].set_id(i);
    }
}
pandemic::~pandemic()
{
  delete [] points;
}

void pandemic::predict(point* a, double limit)
{
  if (a == nullptr) return;
  std::cout << "Predicting for point " << a->get_id() << "\n";

    /* point-point collisions */
    for (int i = 0; i < N_POINTS; i++) 
    {
      double dt = a->time_to_hit(&points[i]);
      if(dt == -1) continue;
      if (timer + dt <= limit) {
        auto evt = Event(timer + dt, a, &points[i]);
        points[i].point_shape.setFillColor(sf::Color(255,0,0));
        if (evt.get_predicted_time() < 0)
        {
          std::cout << "agendada colision negativa con punto\n";
        }
        schedule.push(Event(timer + dt, a, &points[i]));
      }
    }

    /* point-wall collisions */
    double dtV = a->time_to_hit_vertical_wall();
    double dtH = a->time_to_hit_horizontal_wall();

    if (timer + dtV <= limit) {
      auto evt = Event(timer + dtV, nullptr, a);
      if (evt.get_predicted_time() < 0)
      {
        std::cout << "agendada colision negativa con pared vertical\n";
      }
      schedule.push(Event(timer + dtV, nullptr, a));
    }
    if (timer + dtH <= limit) {
      auto evt = Event(timer + dtH, a, nullptr);
      if (evt.get_predicted_time() < 0)
      {
        std::cout << "agendada colision negativa con pared horizontal\n";
      }
      schedule.push(Event(timer + dtH, a, nullptr));
    }

    /* render */
    //schedule.push(Event(timer + (1/HZ), nullptr, nullptr)); //--->borrar?
    std::cout << "siguiente tiempo para evento de renderizacion "<< schedule.top().get_predicted_time() - timer << '\n';
    std::cout << "##########################################################\n";
}

template <class ... Args>
void print_queue (std::priority_queue<Args...> queue)
{
    while (!queue.empty())
    {
        std::cout << queue.top().get_predicted_time() << " ";
        queue.pop();
    }
    std::cout << "\n##########################################################\n";
}

void pandemic::update()
{
  for (int i = 0; i < N_POINTS; i++) 
  {
    std::cout << "##########################################################\n";
    std::cout << "INITIALS: prediciendo para el punto " << i << std::endl;
    std::cout << "Posicion inicial: " << points[i].get_position() << std::endl;
    predict(&points[i], limit);
  }
  schedule.push(Event(0, nullptr, nullptr));        // render event

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
    std::cout << "##########################################################\n";
    std::cout << "Imprimiendo cola para esta iteracion\n";
    print_queue(schedule);

    // process event
    if      (a != nullptr && b != nullptr) a->bounce_off(b);        // particle-particle collision
    else if (a != nullptr && b == nullptr) a->bounce_off_wall(1);   // particle-horizontal-wall collision
    else if (a == nullptr && b != nullptr) b->bounce_off_wall(0);   // particle-vertical-wall collision
    else if (a == nullptr && b == nullptr) render();
    // update the priority queue with new event involving a or b
    predict(a, limit);
    predict(b, limit);
  }
}

void pandemic::render(){
  while(win.pollEvent(event)) {
    if(event.type == sf::Event::EventType::Closed) {
      win.close();
      exit(1);
    }
    if(event.type == sf::Event::EventType::KeyPressed) {
      if(event.key.code == sf::Keyboard::Escape) {
        win.close();
        exit(1);
      }
    }
  }
  // Clear screen
  win.clear(sf::Color::Black);

  for(int i = 0; i < N_POINTS; i++){
    win.draw(points[i].point_shape);//dibujar los puntos (se mueven deacuerdo a move() de point)
    points[i].point_shape.setFillColor(sf::Color(50, 250, 50));
  }
  win.display();

  /* Al final pusheamos un evento de render mas
  para garantizar nuestro regreso dentro de 1 / HZ segundos*/
  if(timer < limit) {
      std::cout << "Timestamp render event " << timer + 1.0 / HZ << std::endl;
      schedule.push(Event(timer + 1.0 / HZ, nullptr, nullptr));
  }
}

void pandemic::set_window() {
  win.create(sf::VideoMode(WIDTH, HEIGHT), "P01nts S1mul4t10n", sf::Style::Default);

  sf::Vector2u size = win.getSize();
}
