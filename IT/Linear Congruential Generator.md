The [linear congruential generator](https://en.wikipedia.org/wiki/linear_congruential_generator "wp:linear congruential generator") is a very simple example of a [random number generator](https://rosettacode.org/wiki/Random_number_generator "Random number generator").

It is an [algorithm](https://en.wikipedia.org/wiki/Algorithm "Algorithm") that yields a sequence of pseudo-randomized numbers calculated with a discontinuous [piecewise linear equation](https://en.wikipedia.org/wiki/Piecewise_linear_function "Piecewise linear function"). The method represents one of the oldest and best-known [pseudorandom number generator](https://en.wikipedia.org/wiki/Pseudorandom_number_generator "Pseudorandom number generator") algorithms. The theory behind them is relatively easy to understand, and they are easily implemented and fast, especially on computer hardware which can provide [modular arithmetic](https://en.wikipedia.org/wiki/Modular_arithmetic "Modular arithmetic") by storage-bit truncation

The Lehmer generator was published in 1951 and the Linear congruential generator was published in 1958 by W. E. Thomson and A. Rotenberg.

All linear congruential generators use this formula:



${\displaystyle r_{n + 1} = a \times r_n + c \pmod m}$

Where:

-   ${\displaystyle r_0}$ is a seed.
- $r_1,r_2,r_3 ...$ are the random numbers.
- $a,c,m$ are the constants.

