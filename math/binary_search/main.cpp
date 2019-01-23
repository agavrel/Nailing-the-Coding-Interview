#include <iostream>

int binary_search(int *a, int len, int x)
{
    int begin = 0;
    int last = len - 1;
    int i = 0;

    while (begin <= last)
    {
        i = (begin + last) >> 1;
        if (a[i] < x)
            begin = i + 1;
        else if (a[i] > x)
            last = i - 1;
        else
            return i;
    }

    return -1;
}

int main(int ac, char **av)
{
    int     a[24] = {0, 3, 5, 6, 7, 9, 13, 14, 15, 16, 18, 19, \
                21, 24, 26, 29, 31, 35, 45, 76, 87, 91, 94, 97};

    std::cout << binary_search(a, sizeof(a) / sizeof(a[0]), 9) << std::endl;
    return 0;
}
