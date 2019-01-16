#include <iostream>
#include <array>
#include <random>
#include <chrono>

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

 string generate_random_string(uint32_t len)
 {
     mt19937 generator{random_device{}()};
     uniform_int_distribution<int> distribution{'0', 'z'};
     string s(len, '\0');

     for(auto& c: s)
         c = distribution(generator);

     return s;
 }

constexpr auto lowercase_mask() {
    std::array<char, 0x100> v{0};
    for(uint8_t i = 0x41; i <  0x5B; ++i) {
        v[i] = 0x20;
    }
    return v; // generate an array with mask for uppercase letters
}

string str_to_lowercase(string& str) {
    constexpr auto v = lowercase_mask();

    for (char& c : str)
        c = c | v[c];

    return str;
}

string str_to_lowercase2(string& str) {
    for (char& c : str)
        c = toupper(c);

    return str;
}

string str_to_lowercase3(string& str) {
    for (char& c : str)
        if (isalpha(c))
            c |= 32;

    return str;
}

string str_to_lowercase4(string& str) {
    for (char& c : str)
        c |= (!!isalpha(c)) << 5; // as I suspected, it gives the same result as c = toupper(c);

    return str;
}

int main(void)
{
    size_t N = 3000000;
    vector <string> s;
    s.push_back(generate_random_string(N));
    s.push_back(generate_random_string(N));
    s.push_back(generate_random_string(N));
    s.push_back(generate_random_string(N));
//    cout << s[0] << endl;
    std::cout << timeFuncInvocation(str_to_lowercase, s[0]).count() << std::endl;
    std::cout << timeFuncInvocation(str_to_lowercase2, s[1]).count() << std::endl;
    std::cout << timeFuncInvocation(str_to_lowercase3, s[2]).count() << std::endl;
    std::cout << timeFuncInvocation(str_to_lowercase4, s[3]).count() << std::endl;
//    for (const string& str : s)
//    cout << str << endl;
//    cout << s[3] << endl;
}

/* g++ main.cpp -std=c++1z && ./a.out will display
347
319
408
404
Not that good right ?

But when compiling with: g++ main.cpp -O2 -std=c++1z && ./a.out
and
22
63
147
63
*/
