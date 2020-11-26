#include <bits/stdc++.h>
#include "vector_t.h"
#define A first
#define B second
#define rep(i, a, b) for(int i = a; i <= b; i++)
#define repinv(i, a, b) for(int i = a; i >= b; i--)

using namespace std;
using ll = long long;
using vi = vector<int>;
using ii = pair<int, int>;

int main(){
	ios_base::sync_with_stdio(0);
	cin.tie(0);
  vector_t v(1, 2);
  v[0] = -v[0];
	cout << v;

}


