---
key: 2
pos: 114
weight: 1
---
{%- comment -%}
*  True Prime Pairs:
*  (5,7), (11,13), (17,19)
*  
*  layer|  i  |   f
*  -----+-----+---------
*       |  1  | 5
*    1  +-----+
*       |  2  | 7
*  -----+-----+---    36 » 6®
*       |  3  | 11
*    2  +-----+
*       |  4  | 13
*  -----+-----+---------
*       |  5  | 17
*    3  +-----+       36 » 6'®
*       |  6  | 19
*  -----+-----+---------
*  
*  Description
*  ===========
*  Getting result within a huge package (5 to 19) by spreading (11)
*  the untouched objects (7) and tunneling (13) them in to a definite scheme (17).
*  
*  Compositions: 
*  ============
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
*  | 168 |  31   208    90 |  31   208    50 | 943 | 1729  → 102 
*  | 168 |------ 329 ------|------ 289 ------|
*  | 168 |--------------- 618 ---------------|
*        Δ     Δ     Δ     Δ     Δ     Δ     Δ
*      id:2  id:30 id:36 id:68 id:71 id:89 id:102
*     π(1000)          π(10000)        π(89²)=1000
*        Δ                 Δ             Δ
*       168               329           289
*
*  Consider that cyclic is happen every Δ100 so such proses on id:102 would be the same as id:2
*  https://github.com/chetabahana/chetabahana.github.io/blob/Chetabahana/_includes/data/primes.rb
*
*  We will count how many id that required to be assigned on different proses that uniq only.
*
*  - From id: 102 to 168 on the first collumn is the same as id: 2 to 68 shown on collumn 2 to 4
*  - Therefore id: 102 to 168 is the part of Δ31 to 200 from Δ329 which take id: 1 up to id: 329  
*  - As pair we count id: 68 to 102 as process that taking Δ289 start from id: 330 up to id: 618 
*  - This page and its childs are assigned to collumn 2 taking Δ31 start from id: 1 up to id: 31 
*
*  Note:
*  Documentation is currently available only in bahasa:
*  https://github.com/chetabahana/chetabahana.github.io/wiki/Mapping
*
{%- endcomment -%}