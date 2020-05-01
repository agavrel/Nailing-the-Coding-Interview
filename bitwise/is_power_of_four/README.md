### Out of Blue

##### Tatsuro Yamashita 山下達郎 - あまく危険な香り

<a href="https://www.youtube.com/watch?v=Ou-i2evi1yM
" target="_blank"><img src="http://img.youtube.com/vi/Ou-i2evi1yM/0.jpg"
alt="Tatsuro Yamashita on youtube" width="240" height="180" border="10" /></a>

### Problem

*Write a function that, given an integer, returns true if it is a power of four, false other wise.*

##### Prototype
```c++
bool is_power_of_four(int n)
```

##### For example
* n = 16, returns true
* n = 42, returns false

<pre>




























</pre>


### Solution

```c++
bool isPowerOfFour(int n) {
    return (__builtin_popcount(n) == 1)  && (!(__builtin_ctz(n) & 1));
}
```

Popcnt checks that it is a power of two.

Then ctz(n) check the the index of the bit.

Finally ```!(& 1)``` ensure that this index is an even number like all powers of four as 0b1 (index 0), 0b100 (4, index 2), 0b10000 (16, index 4)

*time 0ms
memory 6Mb*