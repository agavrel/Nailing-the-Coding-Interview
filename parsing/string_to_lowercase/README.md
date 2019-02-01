### Out of Blue

##### My Inspirational Quotes Collections  
###### Elon Musk
> "When something is important enough, you do it even if the odds are not in your favor."

###### Bjarne Stroustrup
> “There are only two kinds of languages: the ones people complain about and the ones nobody uses.”
> “I have always wished for my computer to be as easy to use as my telephone; my wish has come true because I can no longer figure out how to use my telephone.”

###### Oscar Wilde
> “The only difference between the saint and the sinner is that every saint has a past, and every sinner has a future."  
> “The only way to get rid of temptation is to yield to it.”  
> “Nowadays people know the price of everything and the value of nothing.”  
> “Never marry at all, Dorian. Men marry because they are tired, women, because they are curious: both are disappointed.”  

###### Fyodor Dostoevsky
> “While nothing is easier than to denounce the evildoer, nothing is more difficult than to understand him.”

---

### Problem
*Write a function that, given a string, returns the string with all uppercase letters transformed into lowercase letters.*

##### Prototype
```c++
string str_to_lowercase(string & str) {; }
```

##### Assumptions
* The string contains only ASCII characters

##### For example
* "A beautiful Evening !" -> "a beautiful evening !"

<pre>




























</pre>

### C++ Solution
```c++
constexpr auto lowercase_mask() {
    std::array<char, 0x100> v{0};
    for(uint8_t i = 0x41; i <  0x5B; ++i) {
        v[i] = 0x20;
    }
    return v; // generate an array with mask for uppercase letters
}

string str_to_lowercase(string & str) {
    constexpr auto v = lowercase_mask();

    for (char& c : str)
        c = c | v[c];

    return str;
}
```

*This solution is 3x faster than libc toupper function (see benchmark.cpp)*

```c++
string str_to_lowercase2(string& str) {
    for (char& c : str)
        c = tolower(c);

    return str;
}
```

*Also Equivalent to:*

```c++
string str_to_lowercase4(string& str) {
    for (char& c : str)
        c |= (!!isalpha(c)) << 5; // as I suspected, it gives the same result as c = toupper(c);

    return str;
}
```

*Proof that we want to avoid the branch predictor, this function is even 2.5x slower than libc toupper:*
```c++
string str_to_lowercase3(string& str) {
    for (char& c : str)
        if (isalpha(c))
            c |= 32;

    return str;
}
```
