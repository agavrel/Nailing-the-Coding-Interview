### Out of Blue

##### Fondation "The Psychohistorians" Summary - Isaac Asimov
>  This part is original to the 1951 book version and takes place in 0 F.E. ("Foundation Era"). The story begins on Trantor, the capital of the 12,000-year-old Galactic Empire, a powerful but slowly decaying empire. Hari Seldon, a mathematician and psychologist, has developed psychohistory, a new field of science and psychology that equates all possibilities in large societies to mathematics, allowing for the prediction of future events.

> By means of psychohistory, Seldon has discovered the declining nature of the Empire, angering the aristocratic members of the Committee of Public Safety, the de facto rulers of the Empire. The Committee considers Seldon's views and statements treasonous, and he is arrested along with young mathematician Gaal Dornick, who has arrived on Trantor to meet Seldon. Seldon is tried by the Committee and defends his beliefs, explaining his theories and predictions, including his belief that the Empire will collapse in 500 years and enter a 30,000-year dark age, to the Committee's members. He informs the Committee that an alternative to this future is attainable, and explains to them that creating a compendium of all human knowledge, the Encyclopedia Galactica, would not avert the inevitable fall of the Empire but would reduce the dark age to one millennium.

> The skeptical Committee, not wanting to make Seldon a martyr, offers him exile to a remote world, Terminus, with others who could help him create the Encyclopedia. He accepts their offer, prepares for the departure of the "Encyclopedists" and receives an imperial decree officially acknowledging his actions.

### Problem

*Write a function that, given an array of points, return the K points whose value is closest to the origin.*

##### Prototype
```c++
vector<vector<int>> closest_point_to_origin(vector<vector<int>>& points, int K) {;}
```

##### For example
* If points = {[3,-1],[2,2]} and K = 1  
  Output: {[2,2]} as sqrt(2*2 + 2*2) < sqrt(3*3 + -1*-1)

<pre>




























</pre>

### C++ Solution
```c++
vector<vector<int>> closest_point_to_origin(vector<vector<int>>& points, int K) {
    map<int, vector<int> > map;
    vector<vector<int>> sol;

    for (vector<int>& point : points)
    {
        int dist = point[0] * point[0] + point[1] * point[1]; // origin is {0, 0} so no need to substract and take absolute value !!
        map[dist] = point; // we hence don't need to compute the square root, it saves a lot of time !!
    }
    for (auto &i : map)
        sol.push_back(i.second);

    sol.resize(K); // could be make simpler by pushing K elements but we will have to check that the map contains enough elements
    return sol;
}
```

*PS: Probably not the most optimized (but still working) algo, send me an email / pull request if you know a better one*
