### Out of Blue

##### 杏里 Anri - Bi・Ki・Ni (1983) [FULL ALBUM]

<a href="https://www.youtube.com/watch?v=_cPJHqMBR7M
" target="_blank"><img src="http://img.youtube.com/vi/_cPJHqMBR7M/0.jpg"
alt="youtube video" width="240" height="180" border="10" /></a>

---

### Problem

*Write a function that, given an array with unsorted integers, returns all unique k values in the array whose sum equals to the targeted value.*  

##### Prototype
```c++
vector<vector<int>> k(vector<int>& array, int target, int k) { ;}
```

##### For example
* Consider an array containing {-1,0,1,2,-1,-4}, the function should return a vector containing 2 vectors: {-1,-1,2} and {-1,0,1} if k = 3.

##### Assumption
* The solution set must not contain duplicate arrays.

<pre>




























</pre>



### Elegant Recursive C++ Solution
*It is critical to sort the array to achieve [O (k - 1) time complexity](https://en.wikipedia.org/wiki/Big_O_notation).*

```c++
// DFS
vector<vector<int>> sum_of_k(vector<int>& array, int target, int k, int j) {
	vector<vector<int>> res;

	if (k == 2) // end of the recursive call when k = 2, we look for the two last integers
    {
        vector<int> tmp;
		int k = array.size() - 1;

		while (j < k)
        {
            int total = array[j] + array[k];
            if (total < target)
				j++;
            else if (total > target)
                k--;
            else
            {
				tmp.clear();  // essential step
				tmp.push_back(array[j]);  
                tmp.push_back(array[k]);
				res.push_back(tmp); // array[j] is the penultimate value and array[k] the ultimate value we are looking for
				while (array[j] == array[j++ + 1] && j < array.size() - 1) ;
				while (array[k] == array[k-- - 1] && k > j) ;
			}

		}
		return res;
    }

	else
    {
		for (int i = j; i < array.size() - k + 1; i++)
        {
			vector<vector<int>> t;
			int tmp = array[i];

			if (i > j && array[i - 1] == tmp) // Skip duplicates
                continue;  

			t = sum_of_k(array, target - tmp, k - 1, i + 1); // core recursive call

            for (int j = 0; j < t.size(); j++)
            {
                t[j].push_back(tmp);
                res.push_back(t[j]);
            }
		}
		return res;
	}
}

vector<vector<int>> sum_of_k_init(vector<int>& array, int target, int k) {
    if (array.size() < k)
        return vector<vector<int>> {0}; // protection

    sort(array.begin(), array.end());

    return sum_of_k(array, target, k, 0);
}
```

Credit: Adapted from [MingLiangYang's solution](https://github.com/MingLiangYang)
