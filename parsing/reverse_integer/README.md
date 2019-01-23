### Problem

*Write a function that, given an integer, reverses it.  
If the reversed integer overflows then the function returns 0*  

##### Prototype
```c++
int reverse_integer(int x) { ;}
```

##### For example
* Consider a = 12345, the function should return 54321.
* If x = -678, the function should return -876.
* If x = 5678098243 the function should return 0 because the reversed value overflows (go beyond INT_MAX)

##### Assumption
* INT_MIN < x < INT_MAX
* You are dealing with a 32 bits environment (use of 'long' forbidden)

<pre>




























</pre>


### Solution
```c++
int reverse_integer(int x) {
    if (x == INT_MIN) // handle extreme min value
        return 0;  

    int sign = 1; // handle negative values
    if (x < 0)
    {
        sign = -1;
        x = abs(x);
    }

    int rev = 0;
    while (x)
    {
        if (rev > INT_MAX / 10)
            return 0; // overflow protection
        rev *= 10;
        if (rev == INT_MAX - INT_MAX % 10 && x % 10 > INT_MAX % 10)
            return 0;  // overflow protection
        rev += x % 10;
        x /= 10;
    }

    return rev * sign;
}
```

*This search will perform in O(log N) in the worst case because at each jump you remove half of the possibilities*
