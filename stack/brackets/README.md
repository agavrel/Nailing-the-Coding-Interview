​
### Problem

*The 'Brackets' problem is quite popular and look if candidates are able to check if a string is properly formatted.*

*Write a function that, given a string S, returns true (1) or false (0) depending on if each opening bracket ('(', '{', '[') matches the corresponding closing bracket.*

##### Prototype
```cs
class Brackets {
    public int is_correctly_formatted(string S) {
        return {stuff};
    }
}
```

##### For example
* {}} -> invalid
* ()()[(){}] -> valid

##### Write the most efficient algorithm for the following assumptions:
* The string can have a very big Length


<pre>




























</pre>

​

​

​

​

​

​

​

​

​

### How to start
A) We know that is will be useful to check if we are facing an opening or a closing bracket so we will start by coding 2 boolean functions :

```cs
class Brackets {
    public bool is_opening_bracket(char c)
    {
        return (c == '{' || c == '(' || c == '[');
    }
​
    public bool is_closing_bracket(char c)
    {
        return (c == '}' || c == ')' || c == ']');
    }
​
    public int is_correctly_formatted(string S) {
        return {stuff};
    }
}
```

B) Now that we have these 2 helper functions let us focus on the main function. C# has implemented the [Stack class](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.stack-1?view=netframework-4.7.2) which is very handy for what we need : a LIFO (Last In, First Out) stack.

```cs
using System.Collections.Generic;            // Do not forget to add the library
​
public int is_correctly_formatted(string S) {
    char[] str = S.ToCharArray();        // split the string into a char array
    Stack<int> stack = new Stack<int>(); // b)
​
    foreach (char c in str) // in order to individually check every character.
    {
        if (is_opening_bracket(c))
            {do stuff}
        else if (is_closing_bracket(c))
            {do stuff}
    }
    return {stuff};
}
```

C) If we are facing an opening bracket we want to push it.  
We can do elegantly it with 'stack.Push(c >> 5)' (divide the character by 32).  

Although it hurts a little bit readability, we can notice that '(' and ')' are at equal to 40 and 41 in the ASCII table, '[' and ']' at 91 and 93 and '{' and '}' at 123 and 125.  

Dividing by 32 will allow us to store directly 1, 2 and 3 as (40 or 41) / 32 = 1, (91 or 93) / 32 = 2 and (123 or 125) / 32 = 3.

```cs
public int is_correctly_formatted(string S) {
    char[] str = S.ToCharArray();
    Stack<int> stack = new Stack<int>();
​
    foreach (char c in str)
    {
        if (is_opening_bracket(c))
            stack.Push(c >> 5);            // 3
        else if (is_closing_bracket(c))
            {do stuff};
    }
    return {stuff};
}
​```

D - Now when facing a closing bracket we have to check that :

a) the Stack is not empty with 'stack.Count == 0' and

b) that the last opening bracket stored is related to the new closing one with 'stack.Pop() != c >> 5'.If we have either case it means that the string is not correctly formatted.


```cs
public  is_correctly_formatted(string S) {
        char[] str = S.ToCharArray();
        Stack<int> stack = new Stack<int>();
​
        foreach (char c in str)
        {
            if (is_opening_bracket(c))
                stack.Push(c >> 5);
            else if (is_closing_bracket(c))
                if (stack.Count == 0 || stack.Pop() != c >> 5) // a) and b)
                    return (0);
        }
        return {stuff};
    }
```

### Final Solution

a) We finally check with a ternary operation that the Stack is empty with 'return (stack.Count == 0 ? 1 : 0);'

```cs
using System;
using System.Collections.Generic;
​
class Brackets {
    public bool is_opening_bracket(char c)
    {
        return (c == '{' || c == '(' || c == '[');
    }
​
    public bool is_closing_bracket(char c)
    {
        return (c == '}' || c == ')' || c == ']');
    }
​
    public int is_correctly_formatted(string S) {
        char[] str = S.ToCharArray();
        Stack<int> stack = new Stack<int>();
​
        foreach (char c in str)
        {
            if (is_opening_bracket(c))
                stack.Push(c >> 5);
            else if (is_closing_bracket(c))
                if (stack.Count == 0 || stack.Pop() != c >> 5)
                    return (0);
        }
        return (stack.Count == 0 ? 1 : 0);         // a)
    }
}
```

##### Another solution in C, but recursive:

```c
#include <unistd.h>
​
int	braclose(char *str, char c, int i, int b)
{
	while (b && *(++str) && (i++))
		if (*str == c || *str == c + c % 2 + 1)
			*str == c ? ++b : --b;
	return (i);
}
​
int	brackets(char *str, char c)
{
	if (*str == c)
		return (1);
	else if (!*str || *str == ')' || *str == '}' || *str == ']')
		return (0);
	else if (*str == '(' || *str == '{' || *str == '[')
		return (brackets(str + 1, *str + *str % 2 + 1)
			* brackets(str + braclose(str, *str, 1, 1), c));
	else
		return (brackets(str + 1, c));
}
​
int	main(int ac, char **av)
{
	int	i;
​
	i = 0;
	if (ac > 1)
		while (++i < ac)
			brackets(av[i], 0) ? write(1, "OK\n", 3) : write(1, "Error\n", 6);
	else
		write(1, "\n", 1);
	return (0);
}
```
