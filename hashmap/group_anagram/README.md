### Out of Blue

##### Plasmodium

*Plasmodium is a genus of unicellular eukaryotes that are obligate parasites of vertebrates and insects. The life cycles of Plasmodium species involve development in a blood-feeding insect host which then injects parasites into a vertebrate host during a blood meal. Parasites grow within a vertebrate body tissue (often the liver) before entering the bloodstream to infect red blood cells. The ensuing destruction of host red blood cells can result in disease, called malaria. During this infection, some parasites are picked up by a blood-feeding insect, continuing the life cycle.*

*Plasmodium is a member of the phylum Apicomplexa, a large group of parasitic eukaryotes. Within Apicomplexa, Plasmodium is in the order Haemosporida and family Plasmodiidae. Over 200 species of Plasmodium have been described, many of which have been subdivided into 14 subgenera based on parasite morphology and host range. Evolutionary relationships among different Plasmodium species do not always follow taxonomic boundaries; some species that are morphologically similar or infect the same host turn out to be distantly related.*

*Species of Plasmodium are distributed globally wherever suitable hosts are found. Insect hosts are most frequently mosquitoes of the genera Culex and Anopheles. Vertebrate hosts include reptiles, birds, and mammals. Plasmodium parasites were first identified in the late 19th century by Charles Laveran. Over the course of the 20th century, many other species were discovered in various hosts and classified, including five species that regularly infect humans: P. vivax, P. falciparum, P. malariae, P. ovale, and P. knowlesi. P. falciparum is by far the most lethal in humans, resulting in hundreds of thousands of deaths per year. A number of drugs have been developed to treat Plasmodium infection; however, the parasites have evolved resistance to each drug developed.*

### Problem

*Write a function that, given an array of strings, group the strings that are anagrams of each others and return them as an array of array of string. The order in which group of anagrams are return do not matter.

##### Assumptions

*Words length is reasonable*

##### Prototype
```c++
vector<vector<string>> group_anagrams(vector<string>& strs){;}
```

##### For example
*If vector<string>& strs contains {"tea, eat, hello"} then it should return a vector containing {{"tea, eat"}, {"hello"}}*

<pre>




























</pre>

### C++ Solution
```c++
static int lambda_0 = []() { std::ios::sync_with_stdio(false); cin.tie(NULL); return 0; }(); // small optimization to get faster runtime

uint32_t get_hash(const string &word) {
	static int primes[26] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101}; // the 26 first integers

	uint32_t hash = 1;
	for (char c : word) {
		int prime = primes[c - 'a']; // each letter will have a prime number assigned
		hash *= prime; // multiplication order does not matter since we are dealing with prime numbers
	}
	return hash; // it will generate a unique Hash value
}

vector<vector<string>> group_anagrams(vector<string>& strs) {
    unordered_map<uint64_t, vector<string>> anagram_hash_map;
    anagram_hash_map.reserve(strs.size() >> 3); // small optimization, play with the value that matches the average number of group of anagrams expected

    for (string& s : strs)
        anagram_hash_map[get_hash(s)].push_back(s); // we get the hash for the string and it will become

    vector<vector<string>> res;

    for (auto value : anagram_hash_map) // each group of anagrams has the same key, we return the value to obtain the vector<string>
         res.push_back(value.second);

    return res;
}
```

![Speed](./group_anagrams.jpg)
