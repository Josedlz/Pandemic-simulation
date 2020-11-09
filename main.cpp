#include <iostream>
#include "pandemic.h"

using namespace std;

int main() {
  pandemic simulation;

  while(simulation.get_running()){
    simulation.render();
  }
}