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

bool    is_power_of_three(uint32_t n) {
    return n > 0 && !(1162261467 % n); // only word with prime numbers
}

 bool    is_power_of_three2(uint32_t n) {
     const set<int> set = {1, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147, 531441, 1594323, 4782969, 14348907, 43046721, 129140163, 387420489, 1162261467};
     return set.count(n);
 }


 int    number_of_power_of_three(vector<int> v, int func_ptr_index)
 {
     static bool (*pf[])(uint32_t) = {is_power_of_three, is_power_of_three2};

     int count = 0;
     for (const int& n : v)
        count += pf[func_ptr_index](n);
    return count;
}

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

    vector<int> v(100000);
    generate(begin(v), end(v), gen);
    std::cout << timeFuncInvocation(number_of_power_of_three, v, 0).count() << std::endl;

    vector<int> v2(100000);
    generate(begin(v2), end(v2), gen);
    std::cout << timeFuncInvocation(number_of_power_of_three, v2, 1).count() << std::endl;

}
