### Problem

*Write a function that, given an array with unsorted integers, returns all unique triplets in the array whose sum equals zero.*  

##### Prototype
```c++
vector<vector<int>> sum_of_three(vector<int>& array) { ;}
```

##### For example
* Consider an array containing {-1,0,1,2,-1,-4}, the function should return a vector containing 2 vectors: {-1,-1,2} and {-1,0,1}.

##### Assumption
* The solution set must not contain duplicate triplets.

<pre>




























</pre>


### Solution
```c++
#include <vector>
#define TARGET 0

vector<vector<int>> sum_of_three(vector<int>& array) {
    if (array.size() == 0) return {}; // protection against empty array

    vector<vector<int>> ret; // what we will return
    int begin, end, sum;

    sort(array.begin(), array.end());

    for (int i = 0; array[i] <= 0 && i < array.size(); i++)
    {
        if (i > 0 && array[i] == array[i - 1])
            continue;
        begin = i + 1;
        end = array.size() - 1;

        while (begin < end)
        {
            sum = array[begin] + array[end] + array[i];
            if (sum < TARGET)
                begin++;
            else if (sum > TARGET)
                end--;
            else
            {
                ret.push_back({array[i], array[begin], array[end]});

                while (begin < end && array[begin] == ret.back()[1])
                    begin++;
            }
        }
    }

    return ret;
}
```

*This search will perform in O(N^2).*  

*Alternatively we can squeeze out 10% extra performance by extracting from the loop the ```(i > 0)``` added before ```if (array[i] == array[i - 1])``` and check for the very first item in order to avoid performing a check for each array's item.*  

```c++
#include <vector>
#define TARGET 0

vector<vector<int>> sum_of_three(vector<int>& array) {
    if (array.size() == 0) return {};

    int begin, end, sum;
    vector<vector<int>> ret;

    sort(array.begin(), array.end());

    if (array[0] <= 0 && 0 < array.size())
    {
        begin = 1;
        end = array.size() - 1;

        while (begin < end)
        {
            sum = array[begin] + array[end] + array[0];
            if (sum < TARGET)
                begin++;
            else if (sum > TARGET)
                end--;
            else
            {
                ret.push_back({array[0], array[begin], array[end]});

                while (begin < end && array[begin] == ret.back()[1])
                    begin++;
            }
        }
    }

    for (int i = 1; array[i] <= 0 && i < array.size(); i++)
    {
        if (array[i] == array[i - 1])
            continue;
        begin = i + 1;
        end = array.size() - 1;

        while (begin < end)
        {
            sum = array[begin] + array[end] + array[i];
            if (sum < TARGET)
                begin++;
            else if (sum > TARGET)
                end--;
            else
            {
                ret.push_back({array[i], array[begin], array[end]});

                while (begin < end && array[begin] == ret.back()[1])
                    begin++;
            }
        }
    }

    return ret;
}
```
