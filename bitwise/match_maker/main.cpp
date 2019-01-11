#include <vector>
#include <iostream>
#include <unordered_map>
#include <chrono>  // for high_resolution_clock

using namespace std;

// 0x55555555 is equivalent to 0b 0101 0101 0101 0101 0101 0101 0101 0101
// 0x33333333 is equivalent to 0b 0011 0011 0011 0011 0011 0011 0011 0011
// 0x0F0F0F0F is equivalent to 0b 0000 1111 0000 1111 0000 1111 0000 1111
// 0x01010101 is equivalent to 0b 0000 0001 0000 0001 0000 0001 0000 0001
// credit : 'parallel' or 'variable-precision SWAR algorithm'
uint32_t number_of_set_bits(uint32_t i)
{
     i = i - ((i >> 1) & 0x55555555);
     i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
     return (((i + (i >> 4)) & 0x0F0F0F0F) * 0x01010101) >> 24;
}

int match_maker(vector<uint32_t> v1, vector<uint32_t> v2) {
    int count = 0;

    unordered_map<uint32_t,uint32_t> hashmap1[33];
    unordered_map<uint32_t,uint32_t> hashmap2[33];

    for (const uint32_t & n : v1)
    {
        ++hashmap1[number_of_set_bits(n)][n];
        cout << number_of_set_bits(n)  << endl;
    }
    for (const uint32_t & n : v2)
    {
        ++hashmap2[number_of_set_bits(n)][n];
        cout << number_of_set_bits(n) << endl;
    }

    count += min(hashmap1[0][0], hashmap2[0][0]); // adding 0s
    for (int i = 0; i < 32; i++)
    {
        uint32_t tmp = min(hashmap1[1][0b1 << i],hashmap2[1][0b1 << i]);
        hashmap1[1][0b1 << i] -= tmp;
        hashmap2[2][0b1 << i] -= tmp;
        count += tmp;
        //if (tmp)
        //    cout << "hey" << i + 1 << endl;
    }
/*
    for (int i = 1; i < 33; i++)
    {
        for( const auto& n : hashmap1[i] )
        {
            if (n & )
        }

    }
    for (const uint32_t & n : v2)
    {

        cout << numberOfSetBits(n) << endl;
    }*/

    return count;
}

int main(void)
{
    // Record start time
    auto start = std::chrono::high_resolution_clock::now();
    vector<uint32_t> v1 = {1, 3, 4, 16};
    vector<uint32_t> v2 = {3, 6, 17, 4};

    cout << "result :" << match_maker(v1, v2) << endl;
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;

    std::cout << "Elapsed time: " << elapsed.count() * 1000 << " ms\n";
    __asm__(
      ".intel_syntax;"
      "push    rbp;"
        "mov rbp, rsp;"
        "mov rax, 1;"
    "leave");

    return 0;
}
