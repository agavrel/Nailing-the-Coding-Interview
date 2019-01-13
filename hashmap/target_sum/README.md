### Out of the Blue

##### SSE instructions

*Streaming SIMD Extensions (SSE) is a single instruction, multiple data (SIMD) instruction set extension to the x86 architecture, designed by Intel*

```c++
#include <emmintrin.h>
#include <cmath>
#include <time.h>
#include <stdio.h>
#include <stdint.h>

using namespace std;

void normal(float* a, uint32_t N)
{
    for (uint32_t i = 0; i < N; ++i)
        a[i] = sqrt(a[i]);
}

void sse_original(float* a, uint32_t N)
{
  // We assume N % 4 == 0.
  int nb_iters = N / 4;
  \__m128* ptr = (\__m128*)a;

  for (uint32_t i = 0; i < nb_iters; ++i, ++ptr, a += 4)
    _mm_store_ps(a, _mm_sqrt_ps(*ptr));
}

void sse(float* a, uint32_t N)
{
    \__m128* ptr = (\__m128*)a; // use 128 bits register

    do
    {
        _mm_store_ps(a, _mm_sqrt_ps(*ptr++));
        a += 4;
    }
    while (N--);
}

uint32_t		ft_align_mask(uint32_t size, uint32_t mask)
{
	return ((size + mask) & ~mask);
}

int main(int argc, char** argv)
{
    if (argc != 2)
     return 1;
    uint32_t N = ft_align_mask(atoi(argv[1]), 3); // align N on 4

    float* a;
    posix_memalign((void**)&a, 16,  N * sizeof(float));

    for (uint32_t i = 0; i < N; ++i)
    a[i] = 3141592.65358;
    {
        clock_t t = clock();
        normal(a, N);
        t = clock() - t;
        printf ("No SSE: %lu clocks\n",t);
    }

    for (uint32_t i = 0; i < N; ++i)
    a[i] = 3141592.65358;
    {
        clock_t t = clock();
        sse_original(a, N);
        t = clock() - t;
        printf ("Original SSE: %lu clocks\n",t);
    }

    for (uint32_t i = 0; i < N; ++i)
    a[i] = 3141592.65358;
    {
        clock_t t = clock();
        sse(a, N >> 2);
        t = clock() - t;
        printf ("Optimized SSE: %lu clocks\n",t);
    }
}
```

---
##### Benchmark result
*g++ sse_benchmark.cpp && ./a.out 64000000*

* No SSE: 255000 clocks  
* Original SSE: 41500 clocks // credit : https://felix.abecassis.me/2011/09/cpp-getting-started-with-sse/  
* Optimized SSE: 38500 clocks // credit : agavrel, 3000 clocks saved, 8% increased speed  

---

##### Adding -O2 flag will also tremendously increase speed  

*g++ -O2 sse_benchmark.cpp && ./a.out 64000000*  
* No SSE: 198000 clocks  
* Original SSE: 22000 clocks  
* Optimized SSE: 20000 clocks  


##### Resulting assembly:
```c
sqrtps	(%rax), %xmm0
addq	$16, %rax
movaps	%xmm0, -16(%rax)
cmpq	%rax, %rdx
```



### Problem

*Write a function that, given an array of integers, return indices of the two numbers whose sum equals the target.*

##### Assumptions

*Unique solution, and can only use one element of the array once*

##### Prototype
```c++
vector<int> target_index(vector<int>& arr, int target){;}
```

##### For example
*If vector<int>& arr contains {3, 5, 9, 4} and the target is 12 then it should return a vector containing {3, 9}*

<pre>




























</pre>

### C++ Solution
```c++
vector<int> target_index(vector<int>& arr, int target) {
    map<int, int> map;

    for (int i = 0; i < arr.size(); i++) {
        int complement = target - arr[i];  // equivalent to complement + arr[i] = target
        if (map.count(complement)) // if complement was previously stored
            return vector<int> {map[complement], i}; // then we found the solution, we return the index of the complement and the one of the current number
        map[arr[i]] = i; // else we store current index as value for the corresponding key (value of current number) in the hashmap
    }      
}
```
