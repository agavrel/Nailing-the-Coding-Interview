### Out of Blue

##### River flows in you : Yiruma : 이루마 : 리버 플로우즈 인 유

<a href="https://www.youtube.com/watch?v=axIIhcGxGmw
" target="_blank"><img src="http://img.youtube.com/vi/axIIhcGxGmw/0.jpg"
alt="youtube video" width="240" height="180" border="10" /></a>

---

### Problem

*Write a function that, given two sorted lists merges them into one sorted list and returns it*  

##### Prototype
```c++
struct Node {
      int   value;
      Node  *next;
      Node(int x) : value(x), next(NULL) {}
 };

Node* merge_sorted_lists(Node* l1, Node* l2) { ;}
```

##### For example
* Consider a list l1 containing {-1,0,1,2,2,4} and another one containing {-2,1,3}, the function should return a list containing {-2,-1,0,1,1,2,2,3,4}

<pre>




























</pre>



### Elegant Recursive C++ Solution
```c++
struct Node {
      int   value;
      Node  *next;
      Node(int x) : value(x), next(NULL) {}
 };

Node* merge_sorted_lists(Node* l1, Node* l2) {
    if (l1 == NULL)
        return l2;
	if (l2 == NULL)
        return l1;

    if (l1->value < l2->value) {
		l1->next = merge_sorted_lists(l1->next, l2);
		return l1;
	}
	l2->next = merge_sorted_lists(l1, l2->next);
	return l2;
}
```
