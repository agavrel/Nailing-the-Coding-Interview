### Out of the Blue

##### Rich Dad Poor Dad: What The Rich Teach Their Kids About Money - Robert T.Kiyosaki
> Being a product of two strong dads allowed me the luxury of observing the effects different thoughts have on one's life.  

> I noticed that people really do shape their life through their thoughts. For example, my poor dad always said, “I'll never be rich.” And that prophesy became reality.  

> My rich dad, on the other hand, always referred to himself as rich. He would say things like, “I'm a rich man, and rich people don't do this.” Even when he was flat broke after a major financial setback, he continued to refer to himself as a rich man. He would cover himself by saying, “There is a difference between being poor and being broke. -Broke is temporary, and poor is eternal.”

### Problem

*Write a function that, given an array of integers, return the array with values rotated by n.*

##### Assumptions

* If n is negative then it will rotate through the left, if n is positive it will rotate through the right side.

##### Prototype
```c++
void rotate_array(vector<int>& a, int n) {;}
```

##### For example
*If the vector contains {3, 5, 9, 4} and n = -7 (left rotation) then it will become a vector containing {4, 3, 5, 9}*

<pre>




























</pre>

### C++ Solution
```c++
void rotate_array(vector<int>& a, int n) {
    if (n == 0 || a.size() == 0)
            return;
    if (n > 0) // right side rotation
    {
        n %= a.size();
        reverse(a.begin(),a.end());
        reverse(a.begin(),a.begin() + n);
        reverse(a.begin() + n,a.end());
    }   
    else // left side rotation
        std::rotate(a.begin(), a.begin() - n, a.end());
}
```

*Runs in O (1)*
