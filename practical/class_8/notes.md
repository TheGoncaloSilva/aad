The "m, n" notation refers to a two-dimensional array used for prediction. Here's a basic overview:

* M-bit global history register: The 'm' represents the number of bits in the global history register. This register keeps track of the history of recently executed branches. Each bit in this register represents the outcome of a branch taken or not taken.

* N-bit counters: The 'n' signifies the number of bits in each entry of the prediction table. This table stores counters associated with specific patterns of 'm' bits in the global history register. Each entry in the table corresponds to a pattern, and the counter value indicates the prediction (taken or not taken) for that pattern.

* $1876_{10} = 718_{16} = 71(1000_{2})$
* $2172_{10} = 87C_{16} = 87(1100_{2})$
* $3108_{10} = CZ4_{16} = CZ(0100_{2})$

(M,N) = (1,2) -> analyze only last branch

* **10**00
* **11**00
* **01**00

(M,N) = (2,2) -> analyze last two branches, but keep the N-bits

