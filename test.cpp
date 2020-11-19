#include <bits/stdc++.h>
#include <thread>
#include <mutex>
#define A first
#define B second
#define rep(i, a, b) for(int i = a; i <= b; i++)
#define repinv(i, a, b) for(int i = a; i >= b; i--)

using namespace std;
using ll = long long;
using vi = vector<int>;
using ii = pair<int, int>;

int x = 1;
mutex mtx;


void foo(){
  for(int i = 0; i < 10; i++){
    mtx.lock();
    x++;
    cout << x << " by foo" << endl;
    mtx.unlock();
  }
}

void foo1(){
  for(int i = 0; i < 10; i++){
    mtx.lock();
    x--;
    cout << x << " by foo1" << endl;
    mtx.unlock();
  }
}

int main(){
	ios_base::sync_with_stdio(0);
	cin.tie(0);

  thread suma(foo);
  thread resta(foo1);
	
  suma.join();
  resta.join();
}
