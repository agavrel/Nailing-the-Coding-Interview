### Out of the Blue

##### Rich Dad Poor Dad: What The Rich Teach Their Kids About Money - Robert T.Kiyosaki
> Being a product of two strong dads allowed me the luxury of observing the effects different thoughts have on one's life.  

> I noticed that people really do shape their life through their thoughts. For example, my poor dad always said, “I'll never be rich.” And that prophesy became reality.  

> My rich dad, on the other hand, always referred to himself as rich. He would say things like, “I'm a rich man, and rich people don't do this.” Even when he was flat broke after a major financial setback, he continued to refer to himself as a rich man. He would cover himself by saying, “There is a difference between being poor and being broke. -Broke is temporary, and poor is eternal.”

### Problem

*Write a function that, given an array of integers, return the array with values rotated on the left side by n.*

##### Assumptions

* If n is negative then it will rotate on the right.

##### Prototype
```c++
vector<int> rotate_array(vector<int> a, int n) {;}
```

##### For example
*If the vector contains {3, 5, 9, 4} and n = 7 then it will become a vector containing {4, 3, 5, 9}*

<pre>




























</pre>

### C++ Solution
```c++
vector<int> rotate_array(vector<int> a, int n) {
    int len = a.size();
    a.reserve(len << 1);
    std::copy_n(a.begin(), len << 1, std::back_inserter(a));
    vector<int> b(std::next(a.begin(),n),std::next(a.begin(), n + len));
    return b;
}
```

*PS: Probably not the most optimized (but still working) algo, send me an email / pull request if you know a better one*
