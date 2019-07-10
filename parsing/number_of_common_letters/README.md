### Out of Blue

##### Pyrrhic Victory

[A Pyrrhic victory](https://en.wikipedia.org/wiki/Pyrrhic_victory) is a victory that inflicts such a devastating toll on the victor that it is tantamount to defeat. Someone who wins a Pyrrhic victory has also taken a heavy toll that negates any true sense of achievement.

---


### Problem

*You're given strings S1 and S2. S1 has distinct letters. Count the occurrences of S1 letters in S2.*

##### Prototype
```c++
int common_letters(string S1, string S2) { ;}
```

##### For example
* Consider S1 = "aAb" and S2 = "ggorgkgeAAb", it will return 3 as S2 contains 2x 'A' and 1x 'b'.

<pre>




























</pre>



### C++ Solutions
```c++
int common_letters(string S1, string S2) {
    unordered_set<char> myset;
    int count = 0;

    for (const char & c : S1)
        myset.insert(c);

    for (const char & c : S2)
        if (myset.find(c) != myset.end())
            count++;

    return count;
}
```

```c++
int common_letters(string S1, string S2) {
    uint64_t a = 0;
    int count = 0;

    for (const char & c : S1)
        a |= (uint64_t)1 << (c - 'A');

    for (const char & c : S2)
        count += !!((a & ((uint64_t)1 << (c - 'A'))));

    return count;
}
```
