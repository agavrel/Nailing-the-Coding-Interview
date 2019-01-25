### Out of Blue

##### Best Programming Blogs

* http://cliffc.org/blog
* https://lemire.me/blog
* http://www.agner.org/optimize/

### Problem

*Write a function that, given a size_t n, align it on 32 bits.*

##### Prototype
```c++
#include <ctype.h>
size_t    align_on_32_bits(size_t n)
```

##### For example
* Consider n = 25, the function should return 32 (upper bound of 32 multiples)
* For n = 0, the function should return 0
* For n = 34, the function should return 64 (upper bound of 32 multiples)
* For n = 32 the function should return 32.

<pre>




























</pre>


### Solution

##### Solution A
We can use a combination of left and right shifts using the exponent of the power of two we want to align with.

* For exponent = 5 then it means that we will align on 2^5 = 32 bytes

```c++
#include <stdio.h>
#include <ctype.h>
​
size_t			ft_align_power_of_two(size_t size, size_t exponent)
{
	return (((size + (1 << exponent) - 1) >> exponent) << exponent);
}
​
unsigned long long    align_on_32_bits(unsigned long long n)
{
	return ft_align_power_of_two(n, 5); // as 2^5 = 32
}
```
*NB : exponent should be inferior to 32 to avoid overflow*

##### Solution B
Alternatively we can use a mask equal to any power of 2 minus 1:

* if size is 37 and we add the mask (31 or 0b11111) we get 64.
* Hence we only keep the bits above the 5th since '~mask' toggle bits will becomes 0b1...10000


```c++
#include <stdio.h>
#include <ctype.h>
​
size_t			ft_align_mask(size_t size, size_t mask)
{
	return ((size + mask) & ~mask);
}
​
unsigned long long    align_on_32_bits(unsigned long long n)
{
	return ft_align_mask(n, 0x1f)); // 0x1f + 1 = 0x20 = 32
}
```
*NB: mask must be set to a power of 2 minus 1*

##### main.c test file
```c++
int		main(void)
{
	int n = 37;
	printf("%lu\n", ft_align_power_of_two(n, 5)); // 2^5 = 32
	printf("%lu\n", ft_align_mask(n, 0x1f)); // 0x1f + 1 = 0x20 = 32
	return (0);
}
```

##### Bottom Line
We can observe that the function using the mask is more efficient by looking at the assembly code:

```asm
ft_align_power_of_two(unsigned long long, unsigned long long):
    mov rcx, rsi
    mov eax, 1
    sal eax, cl
    cdqe
    lea rax, [rdi-1+rax]
    shr rax, cl
    sal rax, cl
    ret
```

```asm
ft_align_mask(unsigned long long, unsigned long long):
    lea rax, [rdi+rsi]
    not rsi
    and rax, rsi
    ret
```
