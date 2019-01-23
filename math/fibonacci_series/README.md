### Problem

*Write a function that, given an integer n, returns its Fibonacci value.*

##### Prototype
```c++
int fibonacci(int n) { ;}
```

##### For example
* Consider n = 6, the function should return 8.

##### Assumptions
* 0 <= n <= 46

<pre>




























</pre>


### Solution
```c++
int fibonacci(int n) {
    const int fibonacci_series[47] = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903};

    return fibonacci_series[n];
}
```

*We pre-compute the series until buffer overflow. Btw no protection added (if n > 46 return -1), to optimize for speed.*
