### Out of Blue

##### Murder On The Dance Floor - Sophie Ellis Bextor

<a href="https://www.youtube.com/watch?v=eZOmsWovBGo
" target="_blank"><img src="http://img.youtube.com/vi/eZOmsWovBGo/0.jpg"
alt="youtube video" width="240" height="180" border="10" /></a>

---

### Problem

*Write a function that, given k sorted lists merges them into one sorted list*  

##### Prototype
```c++
struct Node {
      int   value;
      Node  *next;
      Node(int x) : value(x), next(NULL) {}
 };

Node* merge_k_sorted_lists(vector<Node*>& sorted_lists) { ;}
```

##### For example
* Consider vector containing a list l1 containing {-1,0,1,2,2,4} and another one containing {-2,1,3}, the function should return a list containing {-2,-1,0,1,1,2,2,3,4}

<pre>




























</pre>



### Elegant Recursive C++ Solution
```c++
struct Node {
      int   value;
      Node  *next;
      Node(int x) : value(x), next(NULL) {}
 };

Node* merge_k_sorted_lists(vector<Node*>& sorted_lists) {
    map<int, int> mymap;

    for (Node * l : sorted_lists)
    {
        while (l)
        {
            mymap[l->val]++;
            l = l->next;    
        }

    }

    Node *lst = new Node(0);;
    Node *head = lst;

    for (const auto & key_value : mymap )
    {
        int n = key_value.second;
        while (n--)
        {
            lst->next = new Node(key_value.first);
            lst = lst->next;
        }
    }

    return head->next;
}
```
