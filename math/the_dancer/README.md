### Out of the Blue

##### Fast inverse square root
The following code is the [fast inverse square root](https://en.wikipedia.org/wiki/Fast_inverse_square_root) implementation from Quake III Arena, stripped of C preprocessor directives, but including the exact original comment text:
```c
float Q_rsqrt( float number )
{
	long i;
	float x2, y;
	const float threehalfs = 1.5F;

	x2 = number * 0.5F;
	y  = number;
	i  = * ( long * ) &y;                       // evil floating point bit level hacking
	i  = 0x5f3759df - ( i >> 1 );               // what the fuck?
	y  = * ( float * ) &i;
	y  = y * ( threehalfs - ( x2 * y * y ) );   // 1st iteration
//	y  = y * ( threehalfs - ( x2 * y * y ) );   // 2nd iteration, this can be removed

	return y;
}
```
**This algorithm computes ​1⁄√x by performing the following steps:**

* Alias the argument x to an integer, as a way to compute an approximation of log2(x)
* Use this approximation to compute an approximation of log2(​1⁄√x)
* Alias back to a float, as a way to compute an approximation of the base-2 exponential
* Refine the approximation using a single iteration of the Newton's method.

### Problem

*Write a function that, given an integer representing the time elapsed since the beginning of the dance, returns the final position of the dancer.*

##### Prototype
```c++
int32_t dancer_position(uint32_t time_elapsed) { ;}
```

##### For example
This dance follow a precise pattern:
Time 0 : The dancer is at position 0.
Time 1 : Take one step forward (+1 step)
Time 2 : Take two steps backward (-2 steps)

To follow, the steps as well as the direction you will have to take in your next move will each time be obtained thanks to a specific calculation: the number of steps you took on the previous time minus the number of steps you took on the penultimate time.

That is, on time 3, a dancer will have to take 3 steps backwards (-2 - 1).

<pre>




























</pre>

### Get started
I asked this question to my students specialized in econometric and computer science. They were struggling to design a recursive solution or an iterative one.  

However this problem checks if you are able to leave your keyboard, take a pen and a blank sheet to think about the pattern and notice similarities.

At time 3, the dancer is at position -4. time(n) = time(n-1) - time(n-2) pos(n) = pos(n-1) + time(n)

At time 4, the dancer is at position -5.

1) We notice the it moves repeatedly the following way: / 1 -2 -3 -1 2 3 repeat 1 -2 -3 -1 2 3 repeat 1 -2 .../

2) It results in the following position having a cycle every 6 steps, see table below :

| Starting Position | Movement | Final Position
|---|---|---|
|0|1|1
|1|-2|-1
|-1|-3|-4
|-4|-1|-5
|-5|2|-3
|-3|3|0
|0|1|1



*NB: To calculate the current position we take the last position and add the dancer's steps.*

### C++ Solution

Hence we only need to put it to put the 6 repeating positions (0,1,−1,−4.−5,−3,…) in an array and return the given number modulo 6.

```c++
const int a[6] = {0, 1, -1, -4, -5, -3};
​
int32_t dancer_position(uint32_t time_elapsed) {
    return a[time_elapsed % 6];
}
```

None of my students found the most optimized solution and some students complained that the solution was too simple. Yet this "simple solution" was elegant and O (1).
