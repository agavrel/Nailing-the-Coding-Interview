### Problem

*Write a function that, given an integer n (the number of socks that the washing machine can clean), two arrays CleanSocks and DirtySocks (containing the color representations of N clean and M dirty socks respectively), returns the maximum number of pairs of socks that Bob can take on the trip.*

##### Prototype
```cs
public int solution(int n, int[] CleanSocks, int[] DirtySocks) { ;}
```

##### For example
* Consider CleanSocks = {4, 7, 4, 4}, DirtySocks contains {4, 8, 3, 7, 8} and n = 2.
* The function should return 3 with one '4' and one '7' cleaned which makes 3 pairs of clean ones.


<pre>




























</pre>

### Solution

```c++
using System;
​
public int solution(int n, int[] CleanSocks, int[] DirtySocks) {
    int ret = 0;
​
    int[] clean = new int[51];
    for (int i = 0; i < CleanSocks.Length; i++)
        clean[CleanSocks[i]]++;
​
    int[] dirty = new int[51];
    for (int i = 0; i < DirtySocks.Length; i++)
        dirty[DirtySocks[i]]++;
​
    // get the clean ones
    for (int i = 0; i <= 50; i++)
    {
        if ((clean[i] % 2 == 1) && (dirty[i] > 0) && n > 0) // if we have an odd number of clean one and at least one dirty one available and enough room (n) then we have one more pair washed.
        {
            ++clean[i];
            --dirty[i];
            --n;
        }
        ret += clean[i] / 2; // By dividing by 2 the clean ones we get the number of pairs available.
    }
​
    // Finally we use the remaining n to wash by pair the dirty socks
    for (int i = 0; i <= 50 && n > 1; i++)
        while ((dirty[i] -= 2) >= 0 && (n -=2) >= 0)
            ++ret;
​
    return ret;
}

```
