### Problem

*Write a function that, given an unsigned integer n, returns 1 if n is a power of 2 and 0 if it is not.*

##### Prototype
```c++
bool    is_power_of_two(uint32_t n) { ;}
```

##### For example
* Consider n = 25, n = 0 or n = 34, the function should return 0.
* If n = 32 the function should return 1.


<pre>




























</pre>


### Solution
```c++
bool    is_power_of_two(uint32_t n)
{
	return (n > 0 && !(n & (n - 1)));
}
```

*We use the fact that ```n & ( n - 1)``` returns 0 if n is a multiple of 2 as the mask will not catch the following bits.  
For example with n = 8 it will be ```1000 & 0111``` which is equal to 0.*

*We use the exclamation dot (not instruction) to reverse 0 to 1 and (x != 0) to 1.*

*lso n > 0 is not necessary in this case as if n = 0 it will underflow resulting in 0 & unsigned int*
