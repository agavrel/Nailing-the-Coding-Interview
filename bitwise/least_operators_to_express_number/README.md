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

### Challenge
Solve this problem to make it work with negative integers

### Credit
This question was part of a Google On-Site Interview question as reported on [leetcode](https://leetcode.com/discuss/interview-question/371592/google-onsite-min-number-of-powers-of-2-to-get-an-integer)  
