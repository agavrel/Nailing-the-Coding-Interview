### Out of Blue

##### Multithreading is the Answer, what is the Question

<a href="https://www.youtube.com/watch?v=GNw3RXr-VJk
" target="_blank"><img src="http://img.youtube.com/vi/GNw3RXr-VJk/0.jpg"
alt="C++ conference on youtube" width="240" height="180" border="10" /></a>

### Problem

*Write a function that, given an integer 'value', returns true or false if the value of the 'n'th bit is set.*

##### Prototype
```c++
bool is_nth_bit_set(int value, int n) { ; }
```

##### For example
* For value = 16 (0b10000) and n = 5, should return true
* For value = 15 (0b01111) and n = 5, should return false

##### Write the most efficient algorithm for the following assumptions:
* 1 <= n <= 32 (we consider that 1 is index 0)
* value is a signed integer

<pre>




























</pre>


### C/C++ Solution
*We can simply right shift value by (n - 1) bits and check if the bit is set.*

```c++
#include <bits/stdc++.h>

bool is_nth_bit_set(int value, int n) {
    return (value >> (n - 1)) & 0b1;
}
```

*Alternatively we can write the function the following way:*

```c++
#include <bits/stdc++.h>

bool is_nth_bit_set(int value, int n) {
    return value & (0b1 << (n - 1));
}
```
*We left shift 1 by (n - 1) to have the suitable mask that will check if the nth bit is set on 'value'. Since it is a bool function there is no need to use not instruction (!) twice which would help to return 1 for any value different from 0:*
```c++
return !!(value & (0b1 << (n - 1)));
```
*It would be required if the prototype function was returning an integer to avoid returning the mask 0b1 << (n - 1)*
```c++
int is_nth_bit_set(int value, int n) {;}
```
