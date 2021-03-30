---
layout: default
primes: [0,1,2,2,3,3,4,4,4,4,8,10,12,15,17,19,22,24,25,46,62,78,95,109,125,139,154,168]
object: [2,8,3,33,60,4,99,57,47,13,55,76,65,98,59,24,22,63,58,49,66,64,61,62,48,5,9,110]
method: [13,16,18,21,23,25,28,30,32,34,36,38,40,42,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77]
number: [1st,2nd,3rd,4th,5th,6th,8th,1/10,1/8,1/6,1/5,1/4,2/3,1/3,1/2,1,2,3,4,5,6,7,5,9,10,11,12,19,10,20,30,40,50,60,70,80,90,99,100,200,300,1000,2000,3000,5000,50000,100000]
layers: [1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100,200,300,400,500,600,700,800,900,1000,2000,3000,4000,5000,6000,7000,8000,9000,10000,20000,30000,40000,50000,60000,70000,80000,90000,100000,200000,300000,400000,500000,600000,700000,800000,900000,1000000]
module: [5,87,89,92,112,55,39,88,113,51,52,53,96,72,54,70,50,69,44,45,73,103,74,102,42,47,48,49,85,84,57,75,90,58,43,41,56,38,59,60,61,62,63,64,65,66,95,111,106,34,67,76,23,37,97,46,94,105,101,91,109,110,104,108,99,107,77,2,78,79,71,40,3,4,31,98,33,80,81,24,7,82,86,83,27,36,8,68,10,35,26,9,11,12,28,1,25,100,93,14,30,16,13,32,19,29,17,15,18,114,6,22,20,21]
events: [96,68,73,74,1,111,81,87,92,89,93,94,103,100,108,102,107,109,105,113,114,112,53,80,97,91,85,95,106,101,75,104,77,50,90,86,54,38,7,72,36,25,35,19,20,56,26,27,28,17,10,11,12,15,6,37,31,34,39,40,41,42,43,44,45,46,51,88,18,16,71,14,21,23,32,52,67,69,70,78,79,82,84,30,29,83,2,8,3,33,60,4,99,57,47,13,55,76,65,98,59,24,22,63,58,49,66,64,61,62,48,5,9,110]
assets: [29,6116,3481,3747,2804,3050,3320,1233,2498,1833,1917,1777,853,830,655,1844,1556,1579,961,1335,1169,1274,1050,1316,893,1318,1151,1430,976,817,546,372,1287,883,775,725,861,733,1172,1219,794,860,830,346,488,643,539,560,347,373,360,312,360,342,351,379,574,472,445,348,221,175,180,241,287,249,333,300,258,217,226,285,199,255,164,243,181,173,179,133,104,80,169,107,109,61,72,92,137,82,54,71,40,27,34,72,30,94,36,40,36,28,14,33,23,17,25,10,26,19,23,15,23,20]
---
{% comment %}
* 
*  Primes Mapping
*
*  π(1) = 0
*  π(2) = 1
*  π(3) = 2
*  π(4) = 2
*  π(5) = 3
*  π(6) = 3
*  π(7) = 4
*  π(8) = 4
*  π(9) = 4
*  π(10) = 4
*  π(20) = 8
*  π(30) = 10
*  π(40) = 12
*  π(50) = 15
*  π(60) = 17
*  π(70) = 19
*  π(80) = 22
*  π(90) = 24
*  π(100) = 25
*  π(200) = 46
*  π(300) = 62
*  π(400) = 78
*  π(500) = 95
*  π(600) = 109
*  π(700) = 125
*  π(800) = 139
*  π(900) = 154
*  π(1000) = 168
* 
{%- endcomment -%}
{%- assign my_primes = layout.primes %}
{%- comment -%}
*
*  π(100) Schema
*  True Prime Pairs:
*  (5,7), (11,13), (17,19)
*  
*  layer|  i  |   f
*  -----+-----+---------
*       |  1  | 5
*    1  +-----+
*       |  2  | 7
*  -----+-----+---   36 » 6®
*       |  3  | 11
*    2  +-----+
*       |  4  | 13
*  -----+-----+---------
*       |  5  | 17
*    3  +-----+      36 » 6®
*       |  6  | 19
*  -----+-----+---------
*
{%- endcomment -%}
{%- assign π10 = 4 -%}
{%- assign π100 = 25 -%}
{%- comment -%}
* 
*  P7:(142857)
*  loop(10) => π(10) = 29 - 25 = 4 
*  
*     #  |  A   |  B   | ∑
*  ------+------+------+-----
*     1  |      |      |
*  ------+      |      |
*   ...  |  28  |  29  | 57
*  ------+      |      |
*    57  |      |      |
*  ------+------+------+-----
*    58  |      |      |
*  ------+      |      |
*    ... |  29  |  28  | 57
*  ------+      |      |
*   114  |      |      |
*  ------+------+------+-----
*        |  57  |  57  | 114
*
{%- endcomment -%}
{%- comment -%}
* 
*  Scheme 13:9
*  loop(100) => π(100) = 25 - 0 = 29 - 4 = 25
* 
*  (1)1-7:   7’
*  (1)8-13:  6’
*  (1)14-19: 6’
*  ------------- 6+6 -----
*  (2)20-24: 5’           |
*  (2)25-29: 5’           |
*  ------------  5+5 -----
*  (3)30-36:   7:70,30,10²|
*  ------------           |
*  (4)37-48:   12• ---    |
*  (5)49-59:   11°    |   |
*              -- 30° 30• |
*  (6)60-78:   19°    |   |
*  (7)79-96:   18• ---    |
*  --------------         |
*  (8)97-109:  13         |
*  (9)110-139: 30 =5x6 <--x-- (129/17-139/27)
*              --
*              43
*
{%- endcomment -%}
{%- comment -%}
*
*  layer | node | sub |  i  |  f
*  ------+------+-----+----------
*        |      |     |  1  |  2x
*        |      |  1  +-----+          
*        |  1   |     |  2  |  7  
*        |      |-----+-----+
*        |      |     |  3  |  3x  ----
*    1   +------+  2  +-----+----      |
*        |      |     |  4  |  13      5x ----
*        |      +-----+-----+          |      |
*        |  2   |     |  5  |  2x  ----      (7)
*        |      |  3  +-----+                 |
*        |      |     |  6  |  19             |
*  ------+------+-----+-----+------           |
*        |      |     |  7  |  1x             |
*        |      |  4  +-----+                 |
*        |  3   |     |  8  |  1x  ----       |        (11)
*        |      +-----+-----+          |      |
*        |      |     |  9  |  ..      2x ----
*    2   +------|  5  +-----+-----     |
*        |      |     |  10 |  1x  ----
*        |      |-----+-----+
*        |  4   |     |  11 | (13)
*        |      |  6  +-----+
*        |      |     |  12 |
*  ------+------+-----+-----+------
*        |      |     |  13 |  1x
*        |      |  7  +-----+
*        |  5   |     |  14 | (17)
*        |      |-----+-----+
*        |      |     |  15 |
*    3   +------+  8  +-----+-----
*        |      |     |  16 |
*        |      |-----+-----+
*        |  6   |     |  17 | (19)
*        |      |  9  +-----+
*        |      |     |  18 |
*  ------|------|-----+-----+------
*
{%- endcomment -%}
{%- assign my_loop = π10 -%}
{%- assign my_loop = my_loop | plus: π100 %}
{%- comment -%}
*
*  π(1000) Schema
*  Injected via 168 = π(1000)
*  loop(1000) => π(1000) - 10th = 168 - 29 = 25 + 114 = 139 
*
{%- endcomment %}
{%- assign π1000 = 168 %}
{%- assign π_10 = 10 | minus: 1 %}
{%- assign my_roots = site.data.roots %}
{%- assign my_loops = "" | split: "," %}
{%- assign my_loop = my_loop | plus: π1000 | minus: my_roots[π_10].key %}
{%- for i in (0..168) %}{% assign j = i | minus: 29 %}{% assign my_loops = my_loops | push: j %}{% endfor -%}
{%- comment -%}
*
*    Sub  | i  |   β | f   
*  =======+====+=====+=======  ===   ===   ===   ===   ===   ===
*   1:1:0 | 1  |   1 | 2  71    1     1     |     |     |     |
*  -------+----+-----+-------  ---   ---    |     |     |     |
*   1:2:1 | 2  |   2 | 3  71          |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:2:2 | 3  |   3 | 7 = 1 + 2x3    |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:3:3 | 4  |   4 | 10 = 9 + 1     |     |     |     |     |  
*  -------+----+-----+----            |     |     |     |     |
*   1:3:4 | 5  |   5 | 11 = 9 + 2     |     |     |     |     |
*  -------+----+-----+----            9     1’    |    Δ100   |
*  *1:3:5 | 6  |   6 | 12 = 9 + 3     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:6 | 7  |   7 | 13 = 9 + 4     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*   1:4:7 | 8  |   8 | 14 = 9 + 5     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:8 | 9  |   9 | 15 = 9 + 6     |     |     |     |     |
*  -------+----+-----+----            |     |     |     |     |
*  *1:4:9 | 10 |  10 | 19 = 9 + 10    |     |     |     |     |
==========+====+=====+====           ===   ---    1”   ---    | <--  π(10)
*   2:1:0 | 11 |  20 | 20 = 19 + log 10¹    |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:2:1 | 12 |  30 | 26 = 20 + 2x3        |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:2:2 | 13 |  40 | 27 = 26 + 1          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:3:3 | 14 |  50 | 28 = 26 + 2          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:3:4 | 15 |  60 | 29 = 26 + 3          9’    |   Δ200  Δ600
*  -------+----+-----+----                  |     |     |     |
*  *2:3:5 | 16 |  70 | 30 = 26 + 4          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:4:6 | 17 |  80 | 31 = 26 + 5          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*   2:4:7 | 18 |  90 | 32 = 26 + 6          |     |     |     |
*  -------+----+-----+----                  |     |     |     |
*  *2:4:8 | 19 | 100 | 36 = 26 + 10         |     |     |     |
*  =======+====+=====+====                 ===   ---   ---    | <--  π(100)
*  *2:4:9 | 20 | 200 | 38 = 36 + log 10²          |     |     |
*  -------+----+-----+----                        |     |     |
*   3:1:0 | 21 | 300 | 40 = 36 + 2 x log 10²      |     |     |
*  -------+----+-----+----                        |     |     |
*   3:2:1 | 22 | 400 | 41 = 40 + 1                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:2:2 | 23 | 500 | 42 = 40 + 2                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:3:3 | 24 | 600 | 43 = 40 + 3                9”  Δ300    |
*  -------+----+-----+----                        |     |     |
*   3:3:4 | 25 | 700 | 44 = 40 + 4                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:3:5 | 26 | 800 | 45 = 40 + 5                |     |     |
*  -------+----+-----+----                        |     |     |
*  *3:4:6 | 27 | 900 | 46 = 40 + 6                |     |     |
*  -------+----+-----+----                        |     |     |
*   3:4:7 | 28 |1000 | 50 = 40 + 10               |     |     |
*  =======+====+=====+====                       ===  ====  ----
*  *3:4:8 | 29 |2000 | 68 = 50 + 3 x (2x3)       10³  Δ600  Δ300
*  =======+====+=====+====                        Δ         ==== ---> π(1000)
*   3:4:9 | 30 |3000 | 71 = 68 + log 10³ ---------¤         Δ900   
*
{%- endcomment -%}
{%- comment -%}
*
*  π(10000) Schema
*  loop(10000) => π(10000) - (10th)th - 10th = 1229 - 109 - 29 = 1091
*
{%- endcomment -%}
{%- assign π10000 = 1229 -%}
{%- assign π_100 = my_roots[π_10].key | minus: 1 %}
{%- assign my_loop = my_loop | plus: π10000 | minus: my_roots[π_100].key | minus: my_roots[π_10].key %}
{%- comment %}
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |    10 | 71  71   1     1     |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |    20 | 71  71         |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |    30 | 161 = 1 + 2x3  |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |    40 | 231 = 59 + 1   |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |    50 | 231 = 59 + 2   |     |     |     |     |
*  -------+----+-------+----            9     1’    |    Δ100   |
*  *1:3:5 | 6  |    60 | 231 = 59 + 3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |    70 | 271 = 59 + 4   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |    80 | 231 = 59 + 5   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |    90 | 231 = 59 + 6   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |   100 | 195 = 59 + 10  |     |     |     |     |
*  =======+====+=======+====           ===   ---    1”   ---    | <--  π(1000)
*   2:1:0 | 11 |   200 | 14 = 69 + log 10¹    |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |   300 | 109 = 70 + 2x3       |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |   400 | 69 = 76 + 1          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |   500 | 109 = 76 + 2         |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |   600 | 71 = 76 + 3          9’    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |   700 | 71 = 76 + 4          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |   800 | 71 = 76 + 5          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |   900 | 71 = 76 + 6          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 |  1000 | 70 = 76 + 10         |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 |  2000 | 90 = 86 + log 10²          |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 |  3000 | 48 = 86 + 2 x log 10²      |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 |  4000 | 278 = 90 + 1               |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 |  5000 | 48 = 90 + 2                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 |  6000 | 48 = 90 + 3                9”  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 |  7000 | 48 = 90 + 4                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 |  8000 | 48 = 90 + 5                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 |  9000 | 100 = 90 + 6               |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 | 10000 | 50 = 90 + 10               |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 | 20000 | 51 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 | 30000 | 52 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment %}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*  loop(100000) => π(100000) - ((10th)th)th - (10th)th = 9592 - 599 - 109 = 8884
*
{%- endcomment %}
{%- assign π100000 = 9592 -%}
{%- assign π_1000 = my_roots[π_100].key | minus: 1 -%}
{%- assign my_loop = my_loop | plus: π100000 | minus: my_roots[π_1000].key | minus: my_roots[π_100].key %}
{%- comment %}
*
*    Sub  | i  |    β  | f   
*  =======+====+=======+=======  ===   ===   ===   ===   ===   === <-- π(1000-50)
*   1:1:0 | 1  |   100 | 52  71   1     1     |     |     |     |
*  -------+----+-------+-------  ---   ---    |     |     |     | <--  π(1000)
*   1:2:1 | 2  |   200 | 53  71         |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:2:2 | 3  |   300 | 57 = 1 + 2x3   |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:3:3 | 4  |   400 | 60 = 59 + 1    |     |     |     |     |  
*  -------+----+-------+----            |     |     |     |     |
*   1:3:4 | 5  |   500 | 61 = 59 + 2    |     |     |     |     |
*  -------+----+-------+----            9     1’    |    Δ100   |
*  *1:3:5 | 6  |   600 | 62 = 59 + 3    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:6 | 7  |   700 | 63 = 59 + 4    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*   1:4:7 | 8  |   800 | 64 = 59 + 5    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:8 | 9  |   900 | 65 = 59 + 6    |     |     |     |     |
*  -------+----+-------+----            |     |     |     |     |
*  *1:4:9 | 10 |  1000 | 69 = 59 + 10   |     |     |     |     |
*  =======+====+=======+====           ===   ---    1”   ---    | <--  π(1000)
*   2:1:0 | 11 |  2000 | 70 = 69 + log 10¹    |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:2:1 | 12 |  3000 | 76 = 70 + 2x3        |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:2:2 | 13 |  4000 | 77 = 76 + 1          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:3:3 | 14 |  5000 | 78 = 76 + 2          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:3:4 | 15 |  6000 | 79 = 76 + 3          9’    |   Δ200  Δ600
*  -------+----+-------+----                  |     |     |     |
*  *2:3:5 | 16 |  7000 | 80 = 76 + 4          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:6 | 17 |  8000 | 81 = 76 + 5          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*   2:4:7 | 18 |  9000 | 82 = 76 + 6          |     |     |     |
*  -------+----+-------+----                  |     |     |     |
*  *2:4:8 | 19 | 10000 | 86 = 76 + 10         |     |     |     |
*  =======+====+=======+====                 ===   ---   ---    | <--  π(10000)
*  *2:4:9 | 20 | 20000 | 88 = 86 + log 10²          |     |     |
*  -------+----+-------+----                        |     |     |
*   3:1:0 | 21 | 30000 | 90 = 86 + 2 x log 10²      |     |     |
*  -------+----+-------+----                        |     |     |
*   3:2:1 | 22 | 40000 | 91 = 90 + 1                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:2:2 | 23 | 50000 | 92 = 90 + 2                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:3 | 24 | 60000 | 93 = 90 + 3                9”  Δ300    |
*  -------+----+-------+----                        |     |     |
*   3:3:4 | 25 | 70000 | 94 = 90 + 4                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:3:5 | 26 | 80000 | 95 = 90 + 5                |     |     |
*  -------+----+-------+----                        |     |     |
*  *3:4:6 | 27 | 90000 | 96 = 90 + 6                |     |     |
*  -------+----+-------+----                        |     |     |
*   3:4:7 | 28 |100000 | 100 = 90 + 10              |     |     |
*  =======+====+=======+====                       ===  ====  ---- ---> π(10000)
*  *3:4:8 | 29 |200000 | 118 = 100 + 3 x (2x3)     10³  Δ600  Δ300
*  =======+====+=======+====                        Δ         ====
*   3:4:9 | 30 |300000 | 121 = 118 + log 10³ -------¤         Δ900   
*
{%- endcomment %}
{%- comment -%}
*
*  Collect all loops:
*  loop(10) => π(10) = 29 - 25 = 4 
*  loop(100) => π(100) = 25 - 0 = 29 - 4 = 25
*  loop(1000) => π(1000) - 10th = 168 - 29 = 25 + 114 = 139 
*  loop(10000) => π(10000) - (10th)th - 10th = 1229 - 109 - 29 = 1091
*  loop(100000) => π(100000) - ((10th)th)th - (10th)th = 9592 - 599 - 109 = 8884
*
*  Root:
*  root[168] = tree[168] - tree[168-1]
*  tree[168] = 4 + 25 + 139 + 1091 + 8884 = 10143
*  here we will create an array to define 168 roots on this 10143
*
{%- endcomment -%}
{%- for item in my_roots %}
    {%- if forloop.index0 < 168 %}{% continue %}{% endif -%}
    {%- assign rvar = 1 %}{% assign a_size = item.key | size %}
    {%- for i in (1..a_size) %}{% assign rvar = rvar | times: 10 %}{% endfor %}
    {%- assign cvar = rvar | divided_by: 10 %}
    {%- assign ckey = item.key | times: 1 %}
    {%- assign nkey = my_roots[forloop.index].key | times: 1 %}
    {%- assign rkey = ckey | divided_by: cvar | ceil | plus: 1 | times: cvar %}
    {%- if ckey > cvar and ckey < rvar and nkey > rkey %}
        {%- assign my_primes = my_primes | push: forloop.index %}
    {%- endif -%}
{%- endfor %}
{%- comment -%}
*
*  π(10000) Schema
*  Injected via 1000 - 50
*
* Note:
* - Consider that the prime hexagon is 6 (six) spin
* - There is no 7th hexagon so 619 is landed on hexagon-1 as 0’
* - Reference: https://www.hexspin.com/0-1-and-negative-numbers/
*
*  Cyclic |  Hexagon   | i(Leading) | j(Lagging) | i(Lagging) | j(Leading)
*  =======+============+============+============+============+============
*  Spin-1 | 103 to   2 |            |  71 to  50 | 150 to 115 | 200 to 231
*  Spin-2 |   3 to  29 |            | 171 to 250 | 231 to 200 | 408 to 497 
*  Spin-3 |  30 to  68 |            | 271 to 350 | 497 to 408 | 315 to 302
*  Spin-4 |  69 to  70 |            | 371 to 450 | 736 to 529 | 415 to 402
*  Spin-5 |  71 to  89 |            | 471 to 550 | 550 to 518 | 515 to 502
*  Spin-6 |  90 to 102 |            | 571 to 650 | 650 to 618 | 615 to 602
*  Spin-7 | 103 to   2 |            |  71 to  50 | 150 to 115 | 200 to 231
*
*  Relation between π(1000)=168 and π((1000/Φ)+1)+1=π(619)+1=115
*  2,60,40: 168, (60x10)/2 + 29 = 329, (40x10)/2 + 60 + 29 = 289
*
*        329                       ← 618 →                       289
*  +-------------+                                           +-------------+
*  | π(A) = 1/AV |  →  Exponential → log QC/log (π(A))   →   | ∑ = QC x AV |
*  +-------------+                                           +-------------+
*         Δ                    +--------------+                     Δ
*         |                    | P(7): 142857 |                     |
*         |                    +--------------+                     |
*      60 |                                                         | 40
*         |         Exponential    ← 168 →      Linear              |
*         |        +--------------+          +-------------+        |
*         └ ─ ─ ─ ─| log (π(A))/q |  q = AV  |  log(QC/q)  | ─ ─ ─ ─┘
*                  +--------------+          +-------------+
*                        28      ← 28!=5995 →     d(14)
*
*  Note:
*  - Every 6th scheme would be the 1st-layer in a higher level of 1 to π(1000)=168
*  - The layer turns to feed out when π((1000/Φ)+1)+1=π(619)+1=115 landed to 150
*  - See the scheme of this layer on https://chetabahana.github.io/feed.json
*
{%- endcomment -%}
{%- comment -%}
*
*  Tabulate Prime Vektors ζ(s). Reference:
*  https://medium.com/cantors-paradise/the-riemann-hypothesis-explained-fa01c1f75d3f
*  
*  ----------------------+-----+-----+-----+                                    ---
*       7 --------- 1,2:1|   1 |  30 |  40 | 71 (2,3) ‹-------------@----        |
*       |                +-----+-----+-----+-----+                        |      |
*       |  8 ‹------  3:2|   1 |  30 |  40 |  90 | 161 (7) ‹---           |      5¨
*       |  |             +-----+-----+-----+-----+             |          |      |
*       |  |  6 ‹-- 4,6:3|   1 |  30 | 200 | 231 (10,11,12) ‹--|---       |      |
*       |  |  |          +-----+-----+-----+-----+             |   |      |     ---
*        --|--|-----» 7:4|   1 |  30 |  40 | 200 | 271 (13) --›    | 5®   |      |
*          |  |          +-----+-----+-----+-----+                 |      |      |
*           --|---› 8,9:5|   1 |  30 | 200 | 231 (14,15) ---------›       |      7¨
*  289        |          +-----+-----+-----+-----+-----+                  |      |
*   |          ----› 10:6|  20 |   5 |  10 |  70 |  90 | 195 (19) --› Φ   | 6®   |
*    --------------------+-----+-----+-----+-----+-----+                  |     ---
*       67 --------› 11:7|   5 |   9 |  14 (20) --------› ¤               |      |
*       |                +-----+-----+-----+                              |      |
*       |  78 ‹----- 12:8|   9 |  60 |  40 | 109 (26) «------------       |     11¨
*       |  |             +-----+-----+-----+                       |      |      |
*       |  |  86‹--- 13:9|   9 |  60 |  69 (27) «--- Δ (Rep Fork)  | 2®   |      |
*       |  |  |          +-----+-----+-----+                       |      |     ---
*       |  |   ---› 14:10|   9 |  60 |  40 | 109 (28) -------------       |      |
*       |  |             +-----+-----+-----+                              |      |
*       |   ---› 15,18:11|   1 |  30 |  40 | 71 (29,30,31,32) ----------        13¨
*  329  |                +-----+-----+-----+                                     |
*    |   ‹--------- 19:12|  10 |  60 | 70 (36) ‹--------------------- Φ          |
*     -------------------+-----+-----+                                          ---
*      786 ‹------- 20:13|  90 |  90 (38) ‹-------------- ¤                      |
*       |                +-----+-----+                                           |
*       | 618 ‹- 21,22:14|   8 |  40 |  48 (40,41) ‹----------------------      17¨
*       |  |             +-----+-----+-----+-----+-----+                  |      |
*       |  | 594 ‹- 23:15|   8 |  40 |  70 |  60 | 100 | 278 (42) «--     | 6®   |
*       |  |  |          +-----+-----+-----+-----+-----+             |    |     ---
*        --|--|-»24,27:16|   8 |  40 |  48 (43,44,45,46) ------------|----       |
*          |  |          +-----+-----+                               |           |
*           --|---› 28:17| 100 | 100 (50) --------------------------»           19¨
*  168        |          +-----+                                                 |
*  |         102 -› 29:18|  50 | 50 (68) ---------> Δ                            |
*  ----------------------+-----+                                                ---
*
{%- endcomment -%}
{%- comment -%}
*
*  1729 = 7 x 13 x 19
*  1729 / 7 = 13 x 19 = 247
*  
*  1729 = 7 x 13 x 19
*         7 + 13 = 20 = d(2)
*                       └──  2 x 19 = 38
*  
*  +----+----+----+----+----+----+----+----+----+----+----+----+----+----+
*  |  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 | 10 | 11 | 12 | 13 | 14 |
*  +----+----+----+----+----+----+----+----+----+----+----+----+----+----+
*  |  3 |  4 |  3 |  4 |  5 |  2 |  3 |  2 |  2 |  1 |  2 |  5 |  1 |  1 | 38 
*  +----+----+----+----+----+----+----+----+----+----+----+----+----+----+----   285
*  |  3 |  8 |  9 | 16 | 25 | 12 | 21 | 16 | 18 | 10 | 22 | 60 | 13 | 14 | 247 
*  +----+----+----+----+----+----+----+----+----+----+----+----+----+----+  Δ
*  |-- 38 ---|              |-- 33 ---|                        |--  27 --|  └── 289-42
*
{%- endcomment -%}
{%- comment -%}
*
*  Compositions: 
*  ============
*  P7:(142857) → 114 → 285 → 247 → 157 → 114
*
*    102 →  2  →  29 →  68 →  71 →  89 → 102 (Cyclic)
*  +-----+-----+-----+-----+-----+-----+-----+-----+                ----------
*  | 102 |  1  |  -  |   - |  -  |   - |   - |  11 | 114=102+12     5¨ » Buka Toko
*  +-----+-----+-----+-----+-----+-----+-----+-----+                -----
*  |   - |  -  | 200 |   - |  -  |   - |   - |  86 | 286=329-43     7¨ » Stok Barang
*  +-----+-----+-----+-----+-----+-----+-----+-----+                ----- 
*  |   - |  -  |  -  |  40 |  1  |   - |   - |  98 | 139=168-29     11¨ » Merchant Centre
*  +-----+-----+-----+-----+-----+-----+-----+-----+                -----
*  |   - |  -  |  -  |   - |  -  | 200 |   - |  47 | 247=289-42     13¨ » Peluang Terbaik
*  +-----+-----+-----+-----+-----+-----+-----+-----+                -----------
*  |   - |  -  |  -  |   - |  -  |   - |  50 | 107 | 157=943-786    17¨ » Portfolio
*  +-----+-----+-----+-----+-----+-----+-----+-----+                ----- 
*  |  66 |  30 |  8  |  50 |  30 |   8 |   - | 594 | 786=618+168    19¨ » Network
*  +-----+-----+-----+-----+-----+-----+-----+-----+                -----------
*    168 |  31   208    90 |  31   208    50 | 943 | 1729  → 102 
*                       Δ
*                     77|78
*
{%- endcomment -%}
{%- comment -%}
*
*  Tabulate Prime Hexagon in 18 vs 19. Reference:
*  https://www.hexspin.com/defining-the-prime-hexagon/
*
*       |         1st (Form)          |         2nd (Route)         |         3rd (Channel)         |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    1  | 19 |  - | 31 | 37 |  - |  - |  - |  - |  - |  - |  - |  - |  - |  - | 103 |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    2  | 20 | 26*|  - | 38 |  - |  - |  - |  - |  - | 74*|  - |  - |  - | 98*| 104*|  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+ 
*    3  | 21 | 27*|  - | 39 |  - |  - |  - |  - |  - | 75*|  - |  - |  - | 99*| 105*|  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    4  | 22 | 28 |  - | 40 |  - |  - |  - |  - |  - | 76 |  - |  - |  - |100 |  -  |  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    5  | 23 | 29 |  - | 41 |  - |  - |  - |  - |  - | 77 |  - |  - |  - |101 |  -  |  -  |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    6  | 24 |  - |  - | 42 |  - | 54 |  - |  - | 72 | 78 |  - | 90 | 96 |  - |  -  |  -  |  - | 114|
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*    7  | 25 |  - |  - | 43 |  - | 55 |  - |  - | 73 | 79 |  - | 91 | 97 |  - |  -  |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    8  |  - |  - |  - | 44 |  - | 56 |  - |  - |  - | 80 |  - | 92 |  - |  - |  -  |  -  |  - |  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*    9  |  - |  - |  - | 45 |  - | 57 |  - |  - |  - | 81 |  - | 93 |  - |  - |  -  |  -  |  - |  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   10  |  - |  - |  - | 46 | 52 | 58 |  - | 70 |  - | 82 | 88 | 94 |  - |  - |  -  |  -  | 112|  - |
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   11  |  - |  - |  - | 47 | 53 | 59 |  - | 71 |  - | 83 | 89 | 95 |  - |  - |  -  |  -  | 113|  - |
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   12  |  - |  - |  - | 48 |  - | 60 | 66 |  - |  - | 84 |  - |  - |  - |  - |  -  | 108 |  - |  - | 
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*   13  |  - |  - |  - | 49 |  - | 61 | 67 |  - |  - | 85 |  - |  - |  - |  - |  -  | 109 |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   14  |  - |  - | 32*| 50*|  - | 62 | 68*|  - |  - | 86*|  - |  - |  - |  - |  -  | 110*|  - |  - | 
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   15  |  - |  - | 33*| 51*|  - | 63 | 69*|  - |  - | 87*|  - |  - |  - |  - |  -  | 111*|  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   16  |  - |  - | 34 |  - |  - | 64 |  - |  - |  - |  - |  - |  - |  - | -  | 106 |  -  |  - |  - | 
*  -----+----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   17  |  - |  - | 35 |  - |  - | 65 |  - |  - |  - |  - |  - |  - |  - | -  | 107 |  -  |  - |  - | 
*       +----+----+----+----+----+----+----+----+----+----+----+----+----+----+-----+-----+----+----+
*   18  |  - | 30 | 36 |  - |  - |  - |  - |  - |  - |  - |  - |  - | -  | 102|   - |  -  |  - |  - | <- ∑=168
*  =====+====+====+====+====+====+====+====+====+====+====+====+====+====+====+=====+=====+====+====+
*    1  |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 | 10 | 11 | 12 | 13 | 14 | 15 |  16 |  17 | 18 | 19 |
*               Δ    Δ                                                     Δ
*
* Note:
* - The marked number with * are outside of group 18 vs 19 
* - Number 68 is in the same hexagon along with 50
* - Reinject number are excatly 102 to 103
*
{%- endcomment -%}
{%- comment -%}
*
*  π(100th layers) = π(10^11) = 4,118,054,813
*
*  1:1
*  2:2   11:20   20:200   29:2000   38:20000   47:2x10^5  56:2x10^6  65:2x10^7  74:2x10^8  83:2x10^9   92:2x10^10
*  3:3   12:30   21:300   30:3000   39:30000   48:3x10^5  57:3x10^6  66:3x10^7  75:3x10^8  84:3x10^9   93:3x10^10
*  4:4   13:40   22:400   31:4000   40:40000   49:4x10^5  58:4x10^6  67:4x10^7  76:4x10^8  85:4x10^9   94:4x10^10
*  5:5   14:50   23:500   32:5000   41:50000   50:5x10^5  59:5x10^6  68:5x10^7  77:5x10^8  86:5x10^9   95:5x10^10
*  6:6   15:60   24:600   33:6000   42:60000   51:6x10^5  60:6x10^6  69:6x10^7  78:6x10^8  87:6x10^9   96:6x10^10
*  7:7   16:70   25:700   34:7000   43:70000   52:7x10^5  61:7x10^6  70:7x10^7  79:7x10^8  88:7x10^9   97:7x10^10
*  8:8   17:80   26:800   35:8000   44:80000   53:8x10^5  62:8x10^6  71:8x10^7  80:8x10^8  86:8x10^9   98:8x10^10
*  9:9   18:90   27:900   36:9000   45:90000   54:9x10^5  63:9x10^6  72:9x10^7  81:9x10^8  90:9x10^9   99:9x10^10
*  10:10 19:100  28:1000  37:10000  46:100000  55:10^6    64:10^7    73:10^8    82:10^9    91:10^10   100:10^11
*
*  For more primes see:
*  https://primes.utm.edu/howmany.html
*
{%- endcomment -%}
{%- comment -%}
*
*  You may see the running code here:
*  https://chetabahana.github.io/feed.json
*
*  Ref:
*  https://learn.cloudcannon.com/
*  https://jekyllrb.com/docs/liquid/filters/
*  https://github.com/planetjekyll/quickrefs
*  https://stackoverflow.com/a/26835896/4058484
*  https://stackoverflow.com/a/35453910/4058484
*
*  Here is my quote about prime numbers:
*  Finding the way of ‘how they presence’ is far more important
*  than trying to find ‘how many all of them’ are exactly exist.
*
*  Note:
*  Documentation is currently available in bahasa only
*  https://github.com/chetabahana/chetabahana.github.io/wiki/Jekyll-Liquid
*
{%- endcomment -%}
{{- my_loops | jsonify -}}
