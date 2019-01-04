### Problem

*Write a function that, given an integer n, returns the longest gap of unset bits surrounded by set bits

##### Prototype
```c++
int     binary_gap(int n) {;}
```

##### For example
* Consider n = 0b100 the function should return 0 (same for any power of two).
* For n = 0b11 the function should also return 0.
* For n = 0b100101 the function should return 2. We want the longest streak


<pre>




























</pre>

### How to Start
1) So what doss it mean ? It means that we have to first go through the number and check each bit and see if it is set or not.

```c++
int binary_gap(int n) {
    int max = 0;

    while (n)
        {Do stuff}

    return max;
}
```

2) How do we go through a number to check its power of 2? It is simple we divide it by 2 and check the LSB (least significant bit, the bit on the extreme right) Dividing by 2 is done through right shifting '>> 1' (it is equivalent to '/ 2' since the compiler will optimize and use the right shift instruction in both cases).

```c++
int binary_gap(int n) {
    int max = 0;

    while (n)
    {
       {Do stuff}
       n >>=1;                // 2)
    }    
    return max;
}
```

3) The condition to start the counter is to have a bit set, it means n should be odd. We can easily check by using (n & 1) and then start a counter.

```c++
int binary_gap(int n) {
    int max = 0;

    while (n)
    {
       if (n & 1)                // 3)
       {
            {Do stuff}
       }
       n >>=1;
    }    
    return max;
}
```

4) As soon as we know that we are facing a 1 we want :

a) to move to the next bit with '(n >>= 1)' and

b) to check if it is a 0 with '!(n & 1)' If it is confirmed then we will increase our counter with '++count' equivalent to count = count + 1;

```c++
int binary_gap(int n) {
    int max = 0;
    int count;

    while (n)
    {
       if (n & 1)
       {
            while ((n >>= 1) && !(n & 1))    // a) and b)
                ++count;
            {Do stuff}
       }
       n >>=1;
    }    
    return max;
}
```

### Solution
5) We keep the counter as our new maximum if it was above the previously calculated maximums with 'if (count > max) max = count;'

```c++
int binary_gap(int n) {
    int max = 0;
    int count;

    while (n)
    {
       if (n & 1)
       {
            while ((n >>= 1) && !(n & 1))
                ++count;
            if (count > max)                    // 5)
                max = count;
       }
       n >>=1;
    }    
    return max;
}
```
