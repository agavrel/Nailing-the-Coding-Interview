### Out of Blue

#### UNIX: Making Computers Easier To Use -- AT&T Archives film from 1982, Bell Laboratories

<a href="https://www.youtube.com/watch?v=XvDZLjaCJuw
" target="_blank"><img src="http://img.youtube.com/vi/XvDZLjaCJuw/0.jpg"
alt="UNIX: Making Computers Easier To Use on youtube" width="240" height="180" border="10" /></a>

---
### Problem

*Write a function that return true if the array is valid utf-8 array, false if not*

##### Prototype
```c++
bool validUtf8(vector<int>& data)
```

Refer to wikipedia for utf-8 spec : https://en.wikipedia.org/wiki/UTF-8

<pre>




























</pre>


### Solution

[One solution using bitmask](https://leetcode.com/problems/utf-8-validation/discuss/528963/C%2B%2B-two-4-ms-solutions-using-bitset-and-bit-mask):
```c++
bool validUtf8(vector<int>& data) {
        int count = 0;
        for(const int b: data) {
            if(count) {
                if((b&m1) != m1) return false;
                --count;
            }
            else {
                if((b&m5) == m5) return false;
                if((b&m4) == m4) count = 3;
                else if((b&m3) == m3) count = 2;
                else if((b&m2) == m2) count = 1;
                else if((b&m1) == m1) return false;
            }
        }
        return count == 0;
    }
    const int m5 = 0b11111000;	// invalid
    const int m4 = 0b11110000;	// 3 continuation bytes
    const int m3 = 0b11100000;	// 2
    const int m2 = 0b11000000;	// 1
    const int m1 = 0b10000000;	// invalid
```

However, although it is good to understand the logic, there is nothing faster than lookup tables when it comes to comparison.


### Solution using lookup table

First generate a lookup table with the following function:

```c
const int m5 = 0b11111000;
const int m4 = 0b11110000;
const int m3 = 0b11100000;
const int m2 = 0b11000000;
const int m1 = 0b10000000;
int n ;
for (int b = 0; b < 256; b++) {
	if (!(b & 0b10000000)) n = 1;
	else if((b&m5) == m5) n = 0;
	else if((b&m4) == m4) n = 4;
	else if((b&m3) == m3) n = 3;
	else if((b&m2) == m2) n = 2;
	else if((b&m1) == m1) n = 0;
	printf("%d,", n);
	if ((b & 0x1f) == 0x1f)
	printf("\n");
}
```

Then use it:
```c++
static inline const int utf8d[256] = {
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,
    };
    
bool validUtf8(vector<int>& data) {
	int count = 1;
	int *ptr = &data[0];
	int len = data.size();
	while (len--) {
		if (!--count)
			count = utf8d[*ptr];
		else if (*ptr <= 127)
			return false;
		ptr++;
	}
	return count == 1;
}
```
