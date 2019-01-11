###Out of the Blue

#####Anri Shyness Boy

<a href="https://www.youtube.com/watch?v=ckRSn2zWt_o
" target="_blank"><img src="http://img.youtube.com/vi/ckRSn2zWt_o/0.jpg"
alt="Anri Shyness Boy on youtube" width="240" height="180" border="10" /></a>

Natsu no party de koe wo  
夏の Partyで声を  
*Your voice at a summer party*

Kakete kita no wa anata no Hou kara yo  
かけてきたのは あなたの方からよ  
*I called you, because I'd rather listen to you*

Itsumo denwa no koe wa  
いつも電話の声は  
*I always hear your voice on the phone*

Arikitari na koto bakari itteru no  
ありきたりな事ばかり 言ってるの  
*Are you saying those things already?*

You are my shyness boy Matteru no yo  
You are my shyness boy 待ってるのよ  
*You are my shyness boy, I am waiting for*

Sasoi no kotoba  
誘いの言葉  
*Those inviting words*

Modokashisa nara kyou Kagiri ni Shite hoshii  
もどかしさなら今日かぎりにしてほしい  
*If things are moving to slow, I want to see the end today*

I'm falling love・・・!  

Yoru no Doraivu no ato de  
夜のドライヴの後で  
*After driving late at night*

Osoi kara okuru yo nante Anmari ne  
遅いから送るよなんて あんまりね  
*I'm sending you a hint because you're too late, aren't you?*

Kyou wa Asa made zutto  
今日は朝までずっと  
*Today until morning*

Isshoni irareru you ni Shite aru no  
一緒にいられるようにしてあるの  
*It seems like we will have been together for so long*

You are my shyness boy jirettai no  
You are my shyness boy じれったいの  
*You are my shyness boy, your love*

Anata no ai wa  
あなたの愛は  
*Is so vexing*

Tabako motsu te mo furueteru wa  
タバコ持つ手もふるえてるわ  
*The hand holding that cigarette is trembling*

Dame na hito!  
ダメな人!!  
*You better watch out!!*

You are my shyness boy Matteru no yo  
You are my shyness boy 待ってるのよ  
*You are my shyness boy, I am waiting for*

Kimari-monku wo  
きまり文句を  
*It happens that your eyes*

Yasashisugiru anata no hitomi  
やさしすぎるあなたの瞳  
*Have the right thing to say*

Soko ga suki!!  
そこが好き!!  
*I like that!!*

You are my shyness boy Matteru no yo  
You are my shyness boy 待ってるのよ  
*You are my shyness boy, your love*

Sasoi no kotoba  
誘いの言葉  
*Is so vexing*

Modokashisa nara kyou Kagiri ni Shite hoshii  
もどかしさなら今日かぎりにしてほしい  
*The hand holding that cigarette is trembling*

You are my shyness boy matteru no yo  
You are my shyness boy 待ってるのよ  
*You are my shyness boy, I am waiting for*

Kimari-monku wo  
きまり文句を  
*It happens that your eyes*

Yasashisugiru anata no hitomi  
やさしすぎるあなたの瞳  
*Have the right thing to say*

Soko ga suki!!﻿  
そこが好き!!  
*I like that!!*

### Problem

*Write a function that, given two arrays (or vectors), will return the maximum match possible between both. Values from first array can only match another single one the other array when they both have at least 1 common bit set.*

##### Prototype
```c++
int match_maker(vector<uint32_t> v1, vector<uint32_t> v2) { ; }
```

##### For example
* For vector<uint32_t> v1 = {1, 3} and vector<uint32_t> v2 = {2, 5} the function would return 2 as we can match 1 with 5 (first bit) and 3 with 2 (second bit)

* For vector<uint32_t> v1 = {16, 3, 1} and vector<uint32_t> v2 = {3, 6, 17} the function would return 3 as 16 matches 17 (5th bit), 3 matches 6 (second bit), 1 matches 3 (first bit)

##### Write the most efficient algorithm for the following assumptions:
* Both array have the same size

<pre>




























</pre>


### C/C++ Solution
*WIP*

```c++
#include <vector>
#include <iostream>
#include <unordered_map>

using namespace std;

int main(void)
{

    vector<uint32_t> v1 = {1, 3, 4, 16};
    vector<uint32_t> v2 = {3, 6, 17, 4};

    cout << "result :" << match_maker(v1, v2) << endl; // should return 4

    return 0;
}
```
