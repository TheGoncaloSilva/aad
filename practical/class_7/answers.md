1.1:
    - number of addressable locations in this case is 2^23 = 8,388,608 => 8MB
    - number of bytes that can be stored is 8,388,608 bytes
    - A half-word is 2 bytes, a word is 4 bytes, and a double-word is 8 bytes.
    - number of half-words that can be stored is 4,194,304 (8,388,608 / 2) -> 2^22 => 4MB
    - number of words that can be stored is 2,097,152 (8,388,608 / 4) -> 2^21 => 2MB
    - number of double-words that can be stored is 1,048,576 (8,388,608 / 8) -> 2^20 => 1MB

1.2:
    - Address range: (000000 - 2^23-1) -> (000000 - 7FFFFF)
    - Medium address: (7FFFFF+1)/2 = (400000-1)/2 = 3FFFFF
    - address for bytes: any
    - Half-Word: last bit at o -> xxxxx0
    - Word: last two bits at 0 -> xxxx00
    - double-word: last 3 bits at -> xxx000

1.3:
    | Addresses      | bytes | half-words | words | double-words |
    | -------------- | ----- | ---------- | ----- | ------------ |
    | $14902_{10}$ |       |            | x     | x            |
    | $3710_{10}$  |       |            | x     | x            |
    | $5555_{10}$  |       | x          | x     | x            |
    | $764_{10}$   |       |            |       | x            |
    | $2760_{10}$  |       |            |       |              |

    $14902_{10} = 3A36_{16}$
    $3710_{10} = E7E_{16}$
    $5555_{10} = 15B3_{16}$
    $764_{10} = 2FC_{16}$
    $2760_{10} = AC8_{16}$

1.4:

Conversion: $11899675_{10} = B5931B_{16}$

No, because although the address is required 24 bits minimum to represent, it exceeds the maximum addressable address, which is $7FFFFF$.

----

2:
    - SDRAM 128 Mbits
    - 8 banks
    - 4096 rows * 1024 collums
    - 4 bits/position
2.1:
    - number of chips for a 64-bit wide memory subsystem?
128 MBits -> $2^7 \times (2^{10})^2 \text{bit} = 2^{27} \text{bit}$ 
        -> $\frac{2^{27}}{4} \text{pois}$ (pinos de endereço) $\equiv 2^{25} \text{pois}$
            -> $25$ sub-posições de endereços

3 - referenciar os 8 banks
12 - referenciar linhas/coluna
= 15 linhas de endereço

2.2:
Since each chip provides a 4 bit data wide storage unit, 16 chips ($16 \times 4 = 64$) are required to provide a 64-bit data wide memory subsystem.

2.3:
Capacidade de armazenamento 2^31 bits então fica 2^31-2^3 = 2^28
    -> 2^28 = 256 MByte
Palavra dupla pode armazenar $256/8 = 32 \text{MByte}$