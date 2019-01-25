### Out of Blue

##### Nujabes Biography

> Jun Seba (瀬葉 淳 Seba Jun, February 7, 1974 – February 26, 2010), better known by his stage name Nujabes (ヌジャベス Nujabesu), was a Japanese record producer, DJ, composer and arranger who produced atmospheric instrumental mixes sampling from hip hop and jazz and released three solo studio albums: Metaphorical Music (2003), Modal Soul (2005) and Spiritual State (released posthumously in 2011). Seba was founder of the independent label Hydeout Productions and released two collection compilations: Hydeout Productions 1st Collection (2003) and 2nd Collection (2007).  
> Additionally, Seba produced the soundtrack for Shinichirō Watanabe's anime series Samurai Champloo (Music Record: Departure and Impression) in 2004.

##### Aruarian Dance - Nujabes

<a href="https://www.youtube.com/watch?v=TYRDgd3Tb44
" target="_blank"><img src="http://img.youtube.com/vi/TYRDgd3Tb44/0.jpg"
alt="youtube link" width="240" height="180" border="10" /></a>

---

### Problem
*Write a function that, given a sorted array of integers, modifies it in order to retain only unique values and returns the number of unique values it contains.*

##### Prototype
```c++
int remove_duplicates(vector<int>& v) {; }
```

##### Assumptions
* The array is already sorted by ascending order

##### For example
* "{0, 0, 3, 7, 7, 8, 9, 9, 9}" -> "{0, 3, 7, 8, 9}" and returns 5

<pre>




























</pre>

### C++ Solution
```c++
#include <algorithm>
#include <vector>

int remove_duplicates(vector<int>& v) {
    v.erase(unique(v.begin(), v.end()), v.end());
    return v.size();
}
```

*This solution is make use of the [unique algorithm](https://en.cppreference.com/w/cpp/algorithm/unique) from the STL*

> Eliminates all but the first element from every consecutive group of equivalent elements from the range [first, last) and returns a past-the-end iterator for the new logical end of the range.

> Removing is done by shifting the elements in the range in such a way that elements to be erased are overwritten. Relative order of the elements that remain is preserved and the physical size of the container is unchanged. Iterators pointing to an element between the new logical end and the physical end of the range are still dereferenceable, but the elements themselves have unspecified values. A call to unique is typically followed by a call to a container's erase method, which erases the unspecified values and reduces the physical size of the container to match its new logical size.

```c++
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <cctype>

int main()
{
    // remove duplicate elements
    std::vector<int> v{1,2,3,1,2,3,3,4,5,4,5,6,7};
    std::sort(v.begin(), v.end()); // 1 1 2 2 3 3 3 4 4 5 5 6 7
    auto last = std::unique(v.begin(), v.end());
    // v now holds {1 2 3 4 5 6 7 x x x x x x}, where 'x' is indeterminate
    v.erase(last, v.end());
    for (int i : v)
      std::cout << i << " "; // 1 2 3 4 5 6 7
    std::cout << "\n";
}
```
