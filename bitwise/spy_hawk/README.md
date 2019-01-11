### Out of the Blue

##### Money as Debt
*Central banks, perhaps the biggest curse of our century?*

<a href="https://www.youtube.com/watch?v=2nBPN-MKefA
" target="_blank"><img src="http://img.youtube.com/vi/2nBPN-MKefA/0.jpg"
alt="C++ conference on youtube" width="240" height="180" border="10" /></a>

### Problem

A spy wants to send a message to his headquarters in order to warn for an upcoming danger.
The message is bamboozled and sent through hawks, each hawk having word position in the sentence (starting at 1) to the HQ. As a safeguard he decides to send many times the same words just in case.

You are given an array A consisting of X integers representing the number of hawks sent. A[i] represents the word carried by the hawk and i is the time they arrive at the HQ.

The goal is to find the earliest time when the full sentence is received by the HQ. It is done when each word from 1 to N have been received.

*Write a function that, given a non-empty array A consisting of X integers and integer N, returns the earliest time when HQ receives the full sentence. If the sentence is not fully transmitted to the HQ, the function should return −1.*

##### Prototype
```cs
class Solution { public int solution(int N, int[] A);}
```

##### For example
* Given integer N = 5 and array A such that A[0] = 1 A[1] = 3 A[2] = 1 A[3] = 4 A[4] = 2 A[5] = 3 A[6] = 5 A[7] = 4  
At index 6, the hawk carrying the 5th word arrives. This is the earliest time when HQ receives the full message. The function should hence return 6.

#####Assumptions
* 1 <= N and A length <= 100,000
* each element of array A is an integer within the range [1..N].

​


##### Write the most efficient algorithm for the following assumptions:
* Array/Vector length is an odd integer within the range [1..1,000,000];
* Each element of array V is an integer that can have any value;
* All but one of the values in V occur an even number of times.

<pre>




























</pre>

##### C# Solution

```cs
Solution
using System;
using System.Collections;
​
class Solution {
    public int solution(int N, int[] A) {
        BitArray B = new BitArray(N + 1);
​
        for (int i = 0; i < A.Length; ++i)
        {
            if (B.Get(A[i]) == false)
            {
                --N;
                if (N == 0)
                    return i;
                B.Set(A[i], true);
            }
        }
        return -1;
    }
}
```
