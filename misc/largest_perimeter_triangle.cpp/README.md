### Out of the Blue

##### Bob Steagall “Fast Conversion From UTF-8 with C++, DFAs, and SSE Intrinsics

<a href="https://www.youtube.com/watch?v=h5oczBeib_M
" target="_blank"><img src="http://img.youtube.com/vi/h5oczBeib_M/0.jpg"
alt="C++ conference on youtube" width="240" height="180" border="10" /></a>


### Problem

*Write a function that, given an array of unsigned integers, return the largest perimeter triangle you can build with 3 of its elements. If it cannot build any triangle it should return 0.*

##### Tips

*You cannot build a triangle if the longest side is longer than the two other sides !*

##### Prototype
```c++
uint32_t largest_perimeter_triangle(vector<uint32_t>& A) {;}
```

##### For example
* If vector<uint32_t>& A contains {3, 5, 3, 4} it should return 0
* If vector<uint32_t>& A contains {3, 7, 3, 4} it should return (7 + 3 + 3) = 13

<pre>




























</pre>

### C++ Solution
```c++
uint32_t largest_perimeter_triangle(vector<uint32_t>& A) {
    sort(A.begin(), A.end(), std::greater<>()); // sort values given by descending order thank to std::greater<>()
    vector<uint32_t> B;

    for (auto& n : A)
    {
        B.push_back(n); // add the next biggest side to B
        if (B.size() == 3) // we could store the first three values in B to avoid this condition.
        {
            if (B[0] < B[1] + B[2]) // if the biggest side is strictly inferior to the other two sides then we can build a triangle
                return B[0] + B[1] + B[2];
            B.erase(B.begin()); // remove the biggest side
        }
    }

    return 0;
}
```
