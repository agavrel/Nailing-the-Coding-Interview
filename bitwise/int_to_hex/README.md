### Out of Blue

##### Blinded by Light (Boston Live 2014)

<a href="https://www.youtube.com/watch?v=JFC1KsUSTaU
" target="_blank"><img src="http://img.youtube.com/vi/JFC1KsUSTaU/0.jpg"
alt="Blinded by Light Concert on youtube" width="240" height="180" border="10" /></a>

---
### Problem

*Given an integer, write an algorithm to convert it to hexadecimal. For negative integer, two’s complement method is used.*

##### Note:
```
All letters in hexadecimal (a-f) must be in lowercase.
The hexadecimal string must not contain extra leading 0s. If the number is zero, it is represented by a single zero character '0'; otherwise, the first character in the hexadecimal string will not be the zero character.
The given number is guaranteed to fit within the range of a 32-bit signed integer.
You must not use any method provided by the library which converts/formats the number to hex directly.
```

##### Example 1:
```
Input:
26
Output:
"1a"
```

##### Example 2:
```
Input:
-1
Output:
"ffffffff"
```

##### Prototype
```c++
string int_to_hex(int num)
```

<pre>




























</pre>

---
### Solution
```c++
string int_to_hex(int num) {
    if (num == 0)
        return "0";

    const string x = "0123456789abcdef";
    string s;
    int count = 8;
    do {
        s = x[num & 0xf] + s;
        num >>= 4;
    } while (num && --count);

    return s;
}
``` 
