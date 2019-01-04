### Problem

*Write a function that, given an amount s and a structure Change c, returns true or false depending if a solution was possible as well as the optimal change of coins and bills.*

```c++
typedef struct {
	long coin2;
	long bill5;
	long bill10;
}	Change;
```

##### Prototype
```c++
static bool optimalChange(long s, Change &c) { ;}
```

##### For example
* With s = 9, the function should return True and Change c should contain 1 x bill5 and 2x coin2


<pre>




























</pre>

​
​
​
### Solution

```c++
#include <cmath>
#include <cstdlib>
#include <iostream>
​
using namespace std;
​
typedef struct {
	long coin2;
	long bill5;
	long bill10;
}	Change;
​
class Answer {
public:
	static bool optimalChange(long s, Change &c) {
		memset(&c, 0, sizeof(Change));
​
		if (s <= 0 || s == 1)
			return false;
		if (s == 3)
			c.coin2 = 1;
		else if (s % 2 == 1)
		{
			c.bill5 = 1;
			s -= 5;
		}
		c.bill10 = s / 10;
		s %= 10;
		c.coin2 = s / 2;
		s %= 2;
		return (!s);
	}
};
```

##### Test file

```c++
int main()
{
	Change c;
​
	for (long s = 0; s < 99; s++)
	{
		bool found = Answer::optimalChange(s, c);
		cout << c.coin2 << endl;
		cout << c.bill5 << endl;
		cout << c.bill10 << endl;
​
		long result = c.coin2 * 2 + c.bill5 * 5 + c.bill10 * 10;
​
		cout << endl << "s = "<< s << " change given = " << result << endl;
		cout << endl << "possible ? " << found << endl;
	};
}
```
