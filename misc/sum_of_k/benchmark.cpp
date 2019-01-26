#include <vector>
#include <iostream>
#include <array>
#include <random>
#include <chrono>
#include <unordered_set>
#include <random>
#include <algorithm>
#include <iterator>
#include <functional>
#include <climits>
#include <set>

using namespace std;

auto timeFuncInvocation =
    [](auto&& func, auto&&... params) {
        // get time before function invocation
        const auto& start =  chrono::high_resolution_clock::now();
        // function invocation using perfect forwarding
        std::forward<decltype(func)>(func)(std::forward<decltype(params)>(params)...);
        // get time after function invocation
        const auto& stop =  chrono::high_resolution_clock::now();
        return (stop - start)/100000/*largeNumber*/;
     };

vector<vector<int>> sum_of_k(vector<int>& array, int target, int k, int j);

 vector<vector<int>> sum_of_k_init(vector<int>& array, int target, int k) {
     if (array.size() < k)
         return vector<vector<int>> {0}; // protection

     sort(array.begin(), array.end());
     return sum_of_k(array, target, k, 0);
 }

 // DFS
vector<vector<int>> sum_of_k(vector<int>& array, int target, int k, int j) {
 	vector<vector<int>> res;

 	if (k == 2) // end of the recursive call when k = 2, we look for the two last integers
     {
         vector<int> tmp;
 		int k = array.size() - 1;

 		while (j < k)
         {
             int total = array[j] + array[k];
             if (total < target)
 				j++;
             else if (total > target)
                 k--;
             else
             {
 				tmp.clear();  // essential step
 				tmp.push_back(array[j]);
                 tmp.push_back(array[k]);
 				res.push_back(tmp); // array[j] is the penultimate value and array[k] the ultimate value we are looking for
 				while (array[j] == array[j++ + 1] && j < array.size() - 1) ;
 				while (array[k] == array[k-- - 1] && k > j) ;
 			}

 		}
 		return res;
     }

 	else
     {
 		for (int i = j; i < array.size() - k + 1; i++)
         {
 			vector<vector<int>> t;
 			int tmp = array[i];

 			if (i > j && array[i - 1] == tmp) // Skip duplicates
                 continue;

 			t = sum_of_k(array, target - tmp, k - 1, i + 1); // core recursive call

             for (int j = 0; j < t.size(); j++)
             {
                 t[j].push_back(tmp);
                 res.push_back(t[j]);
             }
 		}
 		return res;
 	}
 }

#define TARGET 87

int main(void)
{
    // First create an instance of an engine.
    random_device rnd_device;
    // Specify the engine and distribution.
    mt19937 mersenne_engine {rnd_device()};  // Generates random integers
    uniform_int_distribution<int> dist {0, INT_MAX}; // between 0 and INT_MAX

    auto gen = [&dist, &mersenne_engine](){
                   return dist(mersenne_engine);
               };

    vector<int> v(1000);
    generate(begin(v), end(v), gen);

    std::cout << timeFuncInvocation(sum_of_k_init, v, TARGET, 4).count() << std::endl;


/*
    vector<int> v2(100000);
    generate(begin(v2), end(v2), gen);
    std::cout << timeFuncInvocation(number_of_power_of_three, v2, 1).count() << std::endl;
*/
}
