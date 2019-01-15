### Problem

*Write a function that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.*

##### Prototype
```cs
class Solution { public int solution(int[] A); }
```

##### For example
* Given A = [1, 3, 6, 4, 1, 2], the function should return 5.
* Given A = [1, 2, 3], the function should return 4.
* Given A = [−1, −3], the function should return 1.

##### Constraints
* 1 <= N <= 100,000
* Each element of array A is an integer within the range [−1,000,000..1,000,000].

<pre>




























</pre>

### C# Solution
```cs
using System;
​
class Solution {
    public int solution(int[] A) {
        const int MAX = 1000000;
        bool[] check = new bool[MAX + 1];
​
        foreach (int a in A)
            if (a > 0) // each time we encouter a positive number we set it to true
                check[a] = true;
​
        if (check.Equals(new bool[MAX + 1])) // if array is empty
            return 1;
        for (int i = 1; i < MAX + 1; i++)
            if (check[i] == false)
                return i;
        return MAX + 1;
    }
}
```

### C++ Solution
```cs
class Solution {
public:
    int firstMissingPositive(vector<int>& nums) {
        const int MAX = 2000; // double size to store negative values
        bool check[MAX + 1] = { false };

        for (const auto& a : nums)
            check[a + 1000] = true;
        for (int i = 1001; i < MAX + 1; i++)
            if (check[i] == false)
                return i - 1000;  

        return MAX - 1000 + 1;
    }
};
```
