### Out of Blue

##### [The Inside Story of the CryptoKitties Congestion Crisis](https://media.consensys.net/the-inside-story-of-the-cryptokitties-congestion-crisis-499b35d119cc)

*When Vancouver-based venture studio Axiom Zen launched CryptoKitties in October of 2017, it was intended to be a playful experiment of early stage blockchain technology. CryptoKitties users breed and trade unique digital kittens, upvote and engage with the community, and revel in the still-novel joy of a fully-functional application built on a distributed network. Conceptually somewhere between Neopets and futures trading, the disarmingly simple CryptoKitties game captured imaginations with the emergent blockchain community and beyond. Before long, the CryptoKitties craze had spiraled beyond anyone’s expectations— for better and worse.*  

*By early December, CryptoKitties had turned viral sensation, sending prices for some kittens well into the six figures, earning slightly bemused mentions from across mainstream news media, and clogging up the Ethereum network with so many transactions — a sixfold increase in total network requests in the first week of December alone — that many feared the entire Ethereum blockchain would grind to a halt before it ever even had a chance to achieve its promise.*  

*In response to what was unfolding to be an industry-wide dilemma, an impromptu taskforce of Ethereum developers from projects like MetaMask, Infura, and Grid+ came together and joined the CryptoKitties team in formulating short-term optimizations and longer-term scaling solutions that not only alleviated the immediate danger, but laid out roadmaps towards a more functional future. Perhaps even more importantly, the saga highlights the remarkably collaborative and cooperative nature of the blockchain space and developer community.*  

---

### Problem

*Write a function that, given an array with unsorted integers, returns the same array with all 0s moved at the back.*  

##### Prototype
```c++
void move_zeroes_back(vector<int>& v) { ;}
```

##### For example
* Consider an array containing {-1,0,1,0,-1,-4}, the function should return {-1,1,-1,-4, 0, 0};

<pre>




























</pre>


### Solution
```c++
void move_zeroes_back(vector<int>& v) {
    int cnt = 0;
    for (vector<int>::iterator it = v.begin(); it != v.end() - cnt; )
    {
        if (*it == 0){
            std::rotate(it, it + 1, v.end());
            cnt++;  
        }
        else
            it++;
     }         
}
```

### Explanation

*We use the std rotate function that will move the second parameter to the position of the first one which will be move at the position of the third parameter, here v.end(), the end of the array.*  
