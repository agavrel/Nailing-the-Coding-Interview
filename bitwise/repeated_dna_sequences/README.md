### Problem

*All DNA is composed of a series of nucleotides abbreviated as A, C, G, and T, for example: "ACGAATTCCG". When studying DNA, it is sometimes useful to identify repeated sequences within the DNA.*  

*Write a function to find all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule.*

##### Prototype
```c++
vector<string> findRepeatedDnaSequences(string s);
```

##### For example
```
Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
Output: ["AAAAACCCCC", "CCCCCAAAAA"]
```


<pre>




























</pre>


### Solution
```c++
class Solution {
    private:
		string bits_to_dna(uint32_t b) {
			string s = "AAAAAAAAAA";
            static const constexpr unsigned char x[4] = {'A', 'C', 'T', 'G'};
			int i = 0;
            for (;b; b >>= 2)
				s[i++] = x[b & 0b11];

			return s;
		}
    
	public:
		vector<string> findRepeatedDnaSequences(string s) {
            if (s.size() <= 10)
				return {};

			uint32_t b = 0;
			for (int i = 0; i < 10; i++)
				b = (b >> 2) | ((s[i] & 0b110) << 17);
            
            unordered_map<uint32_t,unsigned short> m ={};
			++m[b];

            vector <string> r;
			for (int i = 10; i < s.size(); i++) {    
				b = (b >> 2) | ((s[i] & 0b110) << 17);
                if (m[b]++ == 1)
                    r.push_back(bits_to_dna(b));
			}  
			return r;
		}
};
```

*We use the fact that ```s[i] & 0b111``` will produce either 0, 1, 2 or 3 with the letters ATGC.

*Runtime: 56 ms*  
*Memory: 14.7 Mb*  
