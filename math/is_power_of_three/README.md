### Out of the Blue

##### Spectre and Meltdown attacks

How do Spectre and Meltdown work?
To understand Spectre, you need to grasp the basics of how modern computer processors work.

Modern processors accelerate the rate at which they execute instructions by loading data into the processor's on-board cache memory ahead of when it's needed. Data can be retrieved from this on-board cache far more rapidly than from the computer's main memory.

If a processor is executing a set of instructions that branches depending on the input, then processors will try to guess which branch of instructions is most likely to be executed and load the necessary data into the processor's cache. These processes, called Branch Prediction and Speculative Execution, are what can be exploited by Spectre attacks. The attacker manipulates the processor so it loads a value from protected memory into the cache. They then follow up by attempting to load known data from unprotected memory. If one piece of this known data loads far more rapidly than the others, then they can infer that this data is being retrieved from the cache, and therefore is related to the value stored in protected memory.

Meltdown works slightly differently, taking advantage of a privilege escalation flaw that allows any user able to execute code on the system to access protected memory. This has the effect of neutralizing security models based on address space isolation and paravirtualized software containers.

##### New variantes discovered, credit : Graz University of Technology, imec-DistriNet, KU Leuven, & the College of William and Mary

![Alt text](new-meltdown-spectre-attacks.png?raw=true "Optional Title")

**New Meltdown attacks**

The new Meltdown attacks that the research team discovered are:

* Meltdown-BR - exploits an x86 bound instruction on Intel and AMD
* Meltdown-PK - bypasses memory protection keys on Intel CPUs

They also tried and failed to exploit other Meltdown attacks that targeted the following internal CPU operations:

* Meltdown-AC - tried to exploit memory alignment check exceptions
* Meltdown-DE - tried to exploit division (by zero) errors
* Meltdown-SM - tried to exploit the supervisor mode access prevention (SMAP) mechanism
* Meltdown-SS - tried to exploit out-of-limit segment accesses
* Meltdown-UD - tried to exploit invalid opcode exception
* Meltdown-XD - tried to exploit non-executable memory

[...]
--
---

### Problem

*Write a function that, given an uint32_t n, returns true if n is a power of 3 and false otherwise.*

##### Prototype
```c++
bool    is_power_of_three(uint32_t n) { ;}
```

##### For example
* Consider n = 25, n = 0 or n = 34, the function should return false.
* If n = 27 the function should return true.


<pre>




























</pre>


### Solution
```c++
return n > 0 && !(3486784401 % n); // only word with prime numbers
```

*Explanation : 0 is not a power of 3 and it also prevents to use mod 0 (% 0) to avoid undefined behavior*
> [...] If the second operand of / or % is zero the behavior is undefined; [...]

*3486784401, equivalent to 3^20 is the maximum value possible for uint32_t (1162261467, 3^19 for int32_t) before overflow (gets bigger than UINT_MAX or INT_MAX if signed integer int32_t).*  

*As 3 is a prime number it means that n has to be a multiple of 3486784401 (you can only reach this number by continuously multiplying by 3), hence if n is a power of three 3486784401 % n must equal 0.*
