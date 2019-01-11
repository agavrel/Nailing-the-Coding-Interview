### Problem

*Write a function that, given two arrays (or vectors), will return the maximum match possible between both. Values from first array can only match another single one the other array when they both have at least 1 common bit set.*

##### Prototype
```c++
int match_maker(vector<uint32_t> v1, vector<uint32_t> v2) { ; }
```

##### For example
* For vector<uint32_t> v1 = {1, 3} and vector<uint32_t> v2 = {2, 5} the function would return 2 as we can match 1 with 5 (first bit) and 3 with 2 (second bit)

* For vector<uint32_t> v1 = {16, 3, 1} and vector<uint32_t> v2 = {3, 6, 17} the function would return 3 as 16 matches 17 (5th bit), 3 matches 6 (second bit), 1 matches 3 (first bit)

##### Write the most efficient algorithm for the following assumptions:
* Both array have the same size

<pre>




























</pre>


### C/C++ Solution
*WIP*

```c++
#include <vector>
#include <iostream>
#include <unordered_map>

using namespace std;

int main(void)
{

    vector<uint32_t> v1 = {1, 3, 4, 16};
    vector<uint32_t> v2 = {3, 6, 17, 4};

    cout << "result :" << match_maker(v1, v2) << endl; // should return 4

    return 0;
}
```
