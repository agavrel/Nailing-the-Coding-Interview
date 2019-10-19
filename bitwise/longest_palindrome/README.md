### Out of Blue

##### Tonari No Totoro - Azumi Inoue / My Neighbor Totoro

<a href="https://www.youtube.com/watch?v=sjwU86fuwgk
" target="_blank"><img src="http://img.youtube.com/vi/sjwU86fuwgk/0.jpg"
alt="Tonari No Totoro on youtube" width="240" height="180" border="10" /></a>

### Problem

*Write a function that, given a string containing only characters (of value between 0 and 127) returns the longest palindrome that we can build.*  

##### Prototype
```c++
int longest_palindrome(string s)  { ;}
```

##### For example
* Consider a string "abaabc" we can build "ababa" or "abcba" so the longest palindrome length is 5.

##### Write the most efficient algorithm for the following assumptions:
* Characters are between 0 and 127;  
* 'a' is not equivalent to 'A'  

<pre>




























</pre>


### Solution
We can approach this problem by thinking this way: Every letter that pair will add 2, and if we have any extra unpaired letter it will add one to the solution.

##### C++ Solution
```c++
static int lambda_0 = []() { std::ios::sync_with_stdio(false); cin.tie(NULL); return 0; }(); // small optimization to get faster runtime

int longest_palindrome(string s) {
    __int128 letters = 0; // instead of using a vector or array of char we will store each letter on each bit of a 128 bits integer.
    int result = 0; // the return of our function
    int unpaired_letter = 0; // the "left overs" xD

    for (const char c : s)
    {
        bool letter = letters & ((__int128)1 << c); // used to check if the character had already appeared and was unpaired.
        letters ^= ((__int128)1 << c); // this will switch the bit corresponding to the character
        result += letter; // we add 2 to the result, but instead of operating a left shift during the loop we perform it during the return.
        unpaired_letter += !letter; // if there was no character previously it will add one
        unpaired_letter -= letter; // if there was already one, we remove one since the character is now paired with a former one.
    }
    return (result << 1) | !!unpaired_letter; // if any character was left without another one that matches it will add one.
}
```

This solution, thanks to memory optimization and branching avoidance, will gives better speed and better memory than 100% of other solutions on https://leetcode.com/problems/longest-palindrome/  
