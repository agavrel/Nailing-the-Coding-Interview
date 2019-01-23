### Problem

*Write a function that, given a sorted integer array (ascending), its length len, and an integer x, returns its index.*  
*If the array does not contain x the function should return -1.*

##### Prototype
```c++
int binary_search(int *a, int len, int x) { ;}
```

##### For example
* Consider a = {0, 3, 5, 6, 7, 9, 13, 14, 15, 16, 18, 19, 21, 24, 26, 29, 31, 35, 45, 76, 87, 91, 94, 97}, len = 24, and x = 9 the function should return 5, the index of value 9 contained in the array a.
* For the same array if x = 2, the function should return -1.

##### Assumption
* 0 < len < 10000
* len is valid (corresponds to the array size)
* the array contains no duplicates

<pre>




























</pre>


### Solution
```c++
#include <iostream>

int binary_search(int *a, int len, int x)
{
    int begin = 0;
    int last = len - 1;
    int i = 0;

    while (begin <= last)
    {
        i = (begin + last) >> 1;
        if (a[i] < x)
            begin = i + 1;
        else if (a[i] > x)
            last = i - 1;
        else
            return i;
    }

    return -1;
}
```

*This search will perform in O(log N) in the worst case because at each jump you remove half of the possibilities*
