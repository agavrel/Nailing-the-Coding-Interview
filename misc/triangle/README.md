### Problem

*Write a function that, given an unsigned integer n, display the triangle.*

##### Prototype
```c++
void    triangle(unsigned int n) { ;}
```

##### For example
* Consider the following result for n = 5
```
    #
   ##
  ###
 ####
#####
```

<pre>




























</pre>

### solution

```cpp
#include <bits/stdc++.h>

using namespace std;


void triangle(unsigned int n) {
    string s;

    for (unsigned int i = 0; i < n; i++)
    {
        s.append(n - i - 1, ' ');
        s.append(i + 1, '#');
        s.append("\n");
    }
    cout << s;
}

int main()
{
    int n;
    cin >> n;

    staircase(n);

    return 0;
}
```
