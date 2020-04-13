### Out of Blue

##### Chrono Trigger Beyond Time Crashed Epoch Ending (BEST)

<a href="https://www.youtube.com/watch?v=QchosaSvyY4
" target="_blank"><img src="http://img.youtube.com/vi/QchosaSvyY4/0.jpg"
alt="Chrono Trigger Best Ending on youtube" width="240" height="180" border="10" /></a>



### Problem

*Given a range [m, n] where 0 <= m <= n <= 2147483647, return the bitwise AND of all numbers in this range, inclusive.*  

##### Example 1:
```
Input: [5,7]
Output: 4
```

##### Example 2:
```
Input: [0,1]
Output: 0
```

##### Note:

* The given integer is guaranteed to fit within the range of a 32-bit signed integer.  
* You could assume no leading zero bit in the integer’s binary representation.

##### Prototype
```c++
int rangeBitwiseAnd(int m, int n)
```


<pre>




























</pre>


### Solution

See .cpp file for explanations
```c++
class Solution {
public:
    int rangeBitwiseAnd(int m, int n) {
        __asm__ (R"(.intel_syntax
            xor ecx, ecx
            mov eax, esi
            xor esi, edx
            jz .end  
        .myloop:
            inc ecx
            shr eax
            shr edx
            cmp edx, eax
            jne .myloop  
        .end:
            shl eax, cl
            leave
            ret
        )");
        return 42;
    }
};
```

### C++ One liners

```c++
int rangeBitwiseAnd(int m, int n) {
	return ((n ^ m) == 0 || n==1) ? n : (n & (~( 0xFFFFFFFF >> __builtin_clz(n ^ m) )));
}
```

```c++
int rangeBitwiseAnd(int m, int n) {
	return (n > m) ? (rangeBitwiseAnd(m/2, n/2) << 1) : m;
}
```
