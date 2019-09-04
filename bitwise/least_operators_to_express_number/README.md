### Problem

*Every number can be described in powers of 2. For example, 29 = 2^0 + 2^2 + 2^3 + 2^4.  
Write a function that, given an unsigned integer 0 < n < 10 000 000, returns the minimum number of additions and subtractions of 2^i to get n*

##### Prototype
```c
int32_t minPowersOfTwo(int32_t n)  {;}
```

##### For example
* Consider n = 0b1111 (15) the function should return 2: 0 + 0b10000 - 0b1 = 0b1111.
* For n = 0b100 (4) the function should return 1: 0 + 0b100
* For n = 0 the function should return 0.


<pre>




























</pre>

### How to Start
1) As it involves getting a minimum we can already design a helper function to compute the minimum between two integers :

```c
u_int32_t getMin(u_int32_t a, u_int32_t b) {
	return a < b ? a : b;
}
```

2) We then design a function that will give the complementary number of our integer n, which mean that this function will give the smallest number to make a power of two if we addition it with n

```c
u_int32_t getComple(int32_t n) {
	_Bool is_power_of_two = !(n & (n - 1));
	u_int32_t leading_zeros = __builtin_clz(n);
	return (1 << (32 - leading_zeros - is_power_of_two)) - n;
}
```

### Solution

3) We go through each number and check if the least significant bit is set with '& 1' (a). If it is set then we know that it will require an addition. It is the same for the comple_bit with will require a substraction. Finally we set add as the minimum between its current value and sub + 1 and reversely for sub.
We then take care to eliminate the bit with '>>= 1'

```
int32_t minPowersOfTwo(int32_t n) {
	if (n == 0) // we assume no negative integers are used, but it could be
		return 0;
    u_int32_t comple = getComple(n);
    u_int32_t add = 0;
	u_int32_t sub = 0;

    while (n) {
		_Bool bit = n & 1; // a
		add += bit;
		_Bool comple_bit = comple & 1; // a
        sub += comple_bit;
        add = getMin(add, 1 + sub);
		sub = getMin(sub, 1 + add);
		n >>= 1;
		comple >>= 1;
	}

    return add;
}
```

### Another solution

This solution is 8% faster:  

```c
int min_num_pow2(int n) {
	int ans = 0;
	int len = 0;

	for (int i = 0; i < 32; ++i) {
		if (n & (1 << i)) {
			++len;

		}
		else if (len > 0) {
	  		++ans;
	  		len = len == 1 ? 0 : 1;
		}
	}

	if (len > 1)
		++ans; //Check for overflow.

	return ans;
}
```

### Another solution: Quadratic equation

I found this interesting solution from another fellow developer (originally written in java):

As 2 n^2 + n = v  
We can then write that 2 n^2 + n - v = 0  
We just have to solve the quadratic equation  

```c
#include <math.h>

double getMaxFromDoubleType(double a, double b) {
	return a > b ? a : b;
}

// return the results for √(b2 − 4ac)
double root(double a, double b, double c){
	return sqrt((b * b) - (4 * a * c));
}

// *return the solutions of the quadratic equation for x = −b ± √(b2 − 4ac) / 2a. *
void quadratic(double a, double b, double c, double result[2]){
	double sqrt = root(a,b,c);
	double t2a = 2 * a;
	double x = (-b + sqrt) / t2a;
	double y = (-b - sqrt) / t2a;

	result[0] = x;
	result[1] = y;
}

// 2 n^2 + n = v -> 2 n^2 + n - v = 0
void possibleNumbers(int v, double *result) {
	const int a = 2;
	const int b = 1;
	const int c = -1 * v;
	quadratic(a,b,c, result);
}


int minNum(int v){
	double result[2];
	possibleNumbers(v, &result);
	int x = (int)getMaxFromDoubleType(result[0], result[1]);
	return x;
}
```

But I noticed that since s y will always be negative it can be discarded.  
Hence we do not neet to get the maximum number
Some refactoring later:

```c
#include <math.h>
int minPowerTwo2(int n){ return (-1 + sqrt(1 + (8 * n))) / 2; }
```

with gcc -O2 count_to_pw_of_2.c -lm  && ./a.out it is about the same speed as the one with the moving mask on the 32 bits.



### Challenge
Solve this problem to make it work with negative integers

### Credit
This question was part of a Google On-Site Interview question as reported on [leetcode](https://leetcode.com/discuss/interview-question/371592/google-onsite-min-number-of-powers-of-2-to-get-an-integer)  
