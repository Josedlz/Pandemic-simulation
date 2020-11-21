#include <iostream>
#include "pandemic.h"

using namespace std;

int main() {
  // Simulation
  pandemic simulation;
  simulation.set_window();
  simulation.set_running(true);
  simulation.update();
}
