#include <cstdint>
#include <iostream>
#include <time.h> // for clock()
#include <stdio.h>
#include <random>
#include <cstdlib> // for rand()
#include <vector>
// g++ -masm=intel a.cpp && ./a.out

using namespace std;

// https://leetcode.com/problems/number-complement/
// Given a positive integer, output its complement number.
// The complement strategy is to flip the bits of its binary representation.

// 	vector<int> v = {7, 13,17,23,29};




// mov esi, 1 contain vector index
//mov rdi, QWORD PTR [rbp-0x18]
// call   0x555555554ddc <_ZNSt6vectorIiSaIiEEixEm>  call vector that will return memory address of v[1] in eax
// mov    eax,DWORD PTR [rax]     mov the value at adresse rax to eax



// lea r8d, [rbx] rbx contain vector size
// lea r8d, [rdx] rdx contain value of i

// vector is either at rcx or rdi

class TestVec {
public:
    int foo(vector<int>& v, int i) {
        __asm__ __volatile__ (R"(
               lea rax, [rsi + 32]
               mov eax, [rax + rdx ]
       ;)");
    }
};

/*
//long d = (long)(v.data());

//int c = 5;
//c = v[0] + d % 30;

//    v[1] = 5;



lea rax, [rsi + 32]
mov rax, [rax + rdx ]
leave
ret

or

lea rax, [rbp + 64]
mov rax, [rax + rdx ]
leave
ret
*/

//was working without class
/*
__asm__ (R"(

       lea rax, [rdi + 32]
       mov rax, [rax + rdx ]



;)");

*/

/*
/*
"(xor eax, eax;)");
__asm__ __volatile__ (R"(lea rax, [rdi + 32 ];)");
__asm__ __volatile__ (R"(mov rax, [rax + rdx];
*/
/*
sub rdi, [rdx]
lea r8d, [rdi- [rdx]]
mov eax, [r8d]

lea eax, [rbp-0x20- ]
mov rax,QWORD PTR [rbp-0x20]
    mov eax, DWORD PTR [rax]
   not eax;


int e = 0;
//        long arr[2];
long d = (long)(v.data());
//        printf("%0X\n", d);
int c = d % 30;

//        bool a = true; // contained in esi
//    cout << d << endl;
int b = c + v[1];
//cout << b << endl;
if (v[1] == 0x97)
    v[1] == 4;
//int c = 0x56 + (int)d;
//        cout << "hey" << endl;
*/

int findComplement1(int num) {
    unsigned mask = ~0;
    while (num & mask) mask <<= 1;
    return ~mask & ~num;
}

// NB: function argument will either be stored either in edi (my cpu) or esi (leetcode)

int findComplement2(int num) {
    __asm__ __volatile__ (R"(
        bsr ecx, edi

        neg ecx
        add ecx, 31
        mov eax, edi
        not eax
        shl eax, cl
        shr eax, cl
    ;)");
}

int findComplement3(int num) { // NB: return 1 for num=0
    __asm__ __volatile__ (R"(
        bsr ecx, edi

        mov eax, 2
        shl eax, cl
        dec eax
        xor eax, edi
    ;)");
}

int findComplement4(int num) { // NB: return 1 for num=0
    __asm__ __volatile__ (R"(
        bsr ecx, edi

        xor eax, eax
        dec eax
        shl eax, cl
        or eax, edi
        not eax
    ;)");
}


/*
int findComplement2(int num) {
    __asm__ __volatile__ (R"(
        bsr ecx, edi    // get highest bit index from num and store it to ecx

        neg ecx         // ecx = -ecx
        add ecx, 31     // ecx += 31

        mov eax, edi    // our return value = num
        not eax         // our return value = ~num
        shl eax, cl     // rotate eax left then right
        shr eax, cl     // in order to get the bits above index out
    ;)");
}

int findComplement3(int num) {
    __asm__ (R"(.intel_syntax
        bsr ecx, esi    // get highest bit index from num and store it to ecx

        inc ecx         // ecx++
        xor eax, eax    // eax = 0
        inc eax         // eax++
        shl eax, cl     // shift eax left by ecx bits
        dec eax         // obtain final mask
        xor eax, esi    // xor with argument to obtain complement
    ;)");
    return num;
}

int findComplement4(int num) {
    __asm__ (R"(.intel_syntax
        bsr ecx, esi    // get highest bit index

        xor eax, eax    // eax = 0
        dec eax         // eax = 0 - 1 = 0bFFFFFFFF (mask)
        shl eax, cl     // remove cl most significant bits
        or eax, esi     // combine common bits to find complement
        not eax         // flip bits to obtain complement
    ;)");
    return num;
}
*/

#define N 1000000

float benchmark(int (*f)(int)) {
    clock_t start = clock();
    //static int test_number = 0;

	for (int i{}; i != N; ++i)
		f(rand());

	clock_t end = clock();
	float elapsed = (end - start) * (float)1000000000 / (CLOCKS_PER_SEC * N);
//	printf("Test %d tooks a total of %.02f on average\n", ++test_number, elapsed);
    return elapsed;
}


int main() {
	//srand (time (NULL));
	//vector<int> v = {7, rand(),17,23,29,85};
    vector<int> v = {7, rand(),17,279,29,85};
    for (int i = 0; i < 100; i+=4)
        printf("%0d\n", Solution().foo(v, i));
    cout << v[0] << endl;
//    cout << v[3] << endl;
/*	printf("%d\n", foo(v));


    int (*func_ptr[])(int) = {&findComplement1, &findComplement2, &findComplement3, &findComplement4};
    int len = sizeof(func_ptr) / sizeof(void*);
*/
/*    for (int a = 0; a < 10; a++) {
        cout << "Testing with: " << a << endl;
        for (int i = 0; i < len; i++)
            cout << func_ptr[i](a) << endl;
    }
    int battle = 100;
    float time_elapsed[len];
    int score[len] = {};
    while (battle--) {
        for (int i = 0; i < len; i++) {
            time_elapsed[i] = benchmark(func_ptr[i]);

        }
        int a = 0;
        float lowest_latency = __FLT_MAX_EXP__;
        for (int i = 0; i < len; i++) {
            if (time_elapsed[i] < lowest_latency) {
                lowest_latency = time_elapsed[i];
                a = i;
            }

        }
        score[a]++;
    }

    for (int i = 0; i < len; ++i) {
        printf("Function %d scored %d\n", i, score[i]);
    }
*/

/*
    Function 0 scored 0
    Function 1 scored 3
    Function 2 scored 43
    Function 3 scored 54
*/

	return 0;
}
