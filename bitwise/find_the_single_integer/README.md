### Out of Blue

##### Nir Friedman “Understanding Optimizers: Helping the Compiler Help You”

<a href="https://www.youtube.com/watch?v=8nyq8SNUTSc
" target="_blank"><img src="http://img.youtube.com/vi/8nyq8SNUTSc/0.jpg"
alt="Nir Friedman on youtube" width="240" height="180" border="10" /></a>

### Problem

*Write a function that, given an array of integer containing integers that can be paired with another of the same value except one with a single value, returns the value of the one that can't be paired.*

##### Prototype
```c++
int    find_the_single_integer(const vector <int> V) { ;}
```

##### For example
* Consider an array V such that A[0] = 6 A[1] = 34 A[2] = 6 A[3] = 7 A[4] = 42 A[5] = 7 A[6] = 34
* The function should return 42 which is the single one integer.

##### Write the most efficient algorithm for the following assumptions:
* Array/Vector length is an odd integer within the range [1..1,000,000];
* Each element of array V is an integer that can have any value;
* All but one of the values in V occur an even number of times.

<pre>




























</pre>


### Solution
We can simply go through every single number and use the XOR operator '^' using the fact that two numbered xored will cancel each other.

By xoring n we will be able to set bit when one or the other is set and unset bit when both bits are set . All duplicates will cancel each other and we will keep the remaining single one integer.

##### Example
* with V = {1, 3, 1} we have to return 3,
* n ^= 1 will equal 1
* then 0b01 ^ 0b11 will equal to 0b10
* and finally 0b10 ^ 0b01 will give us 0b11 (3)

##### C++ Solution
```c++
#include <vector>

int    find_the_single_integer(const vector <int> V) {
    int n = 0;

    for (const int ITEM : V) // for each item of the vector V
        n ^= ITEM;

    return n;
}
```

##### C# Solution

```cs
using System;
​

public int find_single_integer(const int[] V) {
    int n = 0;
​
    for (int i = 0; i < A.Length; ++i)
        n ^= V[i];
    return n;
}

```
