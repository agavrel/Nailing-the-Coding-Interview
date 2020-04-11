### Out of Blue

##### My life for Aiur... mh... C language !

*On Wed, 5 Sep 2007, Dmitry Kakurin (about to be flamed) wrote:*  

>> When I first looked at Git source code two things struck me as odd:  
>> 1. Pure C as opposed to C++. No idea why. Please don't talk about portability,

*Linus Torvald's reply*
> it's BS. *YOU* are full of bullshit.  
C++ is a horrible language. It's made more horrible by the fact that a lot
of substandard programmers use it, to the point where it's much much
easier to generate total and utter crap with it. Quite frankly, even if
the choice of C were to do *nothing* but keep the C++ programmers out,
that in itself would be a huge reason to use C.  
In other words: the choice of C is the only sane choice. I know Miles
Bader jokingly said "to piss you off", but it's actually true. I've come
to the conclusion that any programmer that would prefer the project to be
in C++ over C is likely a programmer that I really *would* prefer to piss
off, so that he doesn't come and screw up any project I'm involved with.

### Problem

*Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.*

##### Example 1:
```
Input: 5
Output: 2
Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
```

##### Example 2:
```
Input: 1
Output: 0
Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
```

##### Note:

* The given integer is guaranteed to fit within the range of a 32-bit signed integer.  
* You could assume no leading zero bit in the integer’s binary representation.

##### Prototype
```c++
int find_complement(int num)
```


<pre>




























</pre>


### Solution

See .cpp file for explanations
```c++
int findComplement(int num) {
	__asm__ (R"(.intel_syntax
        bsr ecx, esi

        xor eax, eax
        dec eax
        shl eax, cl
        or eax, esi
        not eax
	;)");
	return num;
}
```

**agavrel to Linus**
> *In other words: the choice of Assembly is the only sane choice*
