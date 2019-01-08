#include <bits/stdc++.h>

using namespace std;

bool is_nth_bit_set(int value, int n) {
    return (value >> (n - 1)) & 0b1;
}

bool is_nth_bit_set2(int value, int n) {
    return value & (0b1 << (n - 1));
}

int main(int ac, char **av)
{
    for (int i = 1; i < ac; i++)
    {
        cout << is_nth_bit_set(atoi(av[i]), 4) << endl;
        cout << is_nth_bit_set2(atoi(av[i]), 4) << endl;
    }
            return 0;
}

// g++ main.cpp && ./a.out 15 16 23 24
