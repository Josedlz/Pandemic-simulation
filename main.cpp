#include <iostream>

#include <SFML/Graphics.hpp>
#include "pandemic.h"

using namespace std;

#define WIDTH 300
#define HEIGHT 300

int main() {
  float y = 0.1;

  // Simulation
  pandemic simulation;

  // Window
  sf::RenderWindow win;
  win.create(sf::VideoMode(WIDTH, HEIGHT), "P01nts S1mul4t10n", sf::Style::Default);

  sf::Vector2u size = win.getSize();
  sf::Event event;

  while(win.isOpen()) {
    /*
    ****************************************
    Simulation
    ****************************************
    */
    simulation.set_running(true);
    /*
    ****************************************
    Handle the input
    ****************************************
    */
    while(win.pollEvent(event)) {
      if(event.type == sf::Event::EventType::Closed)
        win.close();
      if(event.type == sf::Event::EventType::KeyPressed) {
        if(event.key.code == sf::Keyboard::Escape) {
          simulation.set_running(false);
          win.close();
        }
      }

      /*
      ****************************************
      Update the scene
      ****************************************
      */
      simulation.update();

      // Dot
      // sf::CircleShape c1(2);
      // c1.setFillColor(sf::Color(100, 250, 50));

      // Clear screen
      win.clear(sf::Color::Black);
      y++;

      sf::CircleShape c1(2);
      c1.setFillColor(sf::Color(100, 250, 50));

      c1.setPosition(0.1, (float)y);
      win.draw(c1);

      win.display();
      // c1.setPosition(1.3,2.3);
      // win.draw(c1);
    }
  }
}
