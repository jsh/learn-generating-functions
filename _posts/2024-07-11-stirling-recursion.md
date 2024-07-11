---
title: the stirling recursion
slug: stirling
layout: post
---

Now that I've solved a recursion with an OGF, can I get an OGF for Stirling numbers of the first kind?
Let me try, and see how far I get.

## Stirling numbers of the first kind.
When I look at the statistics of trends, I end up with Stirling numbers.
to be precise, unsigned Stirling numbers of the first kind.

One way to describe these is that they count cycles in permutations on $n$ numbers. 
Specifically, the Stirling number $n \brack k$ is the number of permutations of $n$ elements
with exactly $k$ cycles.

### An example
Start with all $3! = 6$ permutations on three digits

| permutation | cycle notation | cycles |
|-------------|----------------|--------|
| 1 2 3 | (1) (2) (3) | 3 |
| 1 3 2 | (1) (2, 3) | 2 |
| 2 1 3 | (1, 2) (3) | 2 |
| 2 3 1 | (1, 3, 2 ) | 1 |
| 3 1 2 | (1, 2, 3 ) | 1 |
| 3 2 1 | (1, 3 ) (2) | 2 |

Two permutations, $ 2 3 1$ and $3 1 2$ only have a single cycle,
three have 2 cycles, and only one has 3.

${3 \brack 1} = 2$

${3 \brack 2} = 3$

${3 \brack 3} = 1$

### The recursion

I'll condition on the highest digit.
Suppose I want to list all cycles of permutations on four digits, instead of three.
One way to list the permutations on three digits, then stick the fourth element in its own cycle at the end.
That's these 6 permutations

$(1) (2) (3) (4)$

$(1) (2, 3) (4)$

$(1, 2) (3) (4)$

$(1, 3, 2) (4)$

$(1, 2, 3) (4)$

$(1, 3) (2) (4)$ 

Another is to list the six permutations on three digits, and squeeze the fourth digit into an existing cycle,
just to the right of one of the first three elements, like this:

$(1, 4) (2) (3)$, $(1) (2, 4) (3)$, $(1) (2) (3, 4)$

$(1, 4) (2, 3)$, $(1) (2, 4, 3)$, $(1) (2, 3, 4)$

$(1, 4, 2) (3)$, $(1, 2, 4) (3)$, $(1, 2) (3, 4)$ 

$(1, 4, 3, 2)$, $(1, 3, 4, 2)$, $(1, 3, 2, 4)$

$(1, 4, 2, 3)$, $(1, 2, 4, 3)$, $(1, 2, 3, 4)$

$(1, 4, 3) (2)$, $(1, 3, 4) (2)$, $(1, 3) (2, 4)$

Turning this reasoning sideways and generalizing, I can get a permutation of $n+1$ digits with exactly $k$ cycles in two ways:

1. Put the first $n$ digits into $k-1$ cycles, then add digit $n+1$ as a single cycle
2. Put the first $n$ digits into $k$ cycles, then add digit $n+1$ just to the right of any of the earlier, $n$ elements.

That is,

${n+1 \brack k} = {n \brack k-1} + n {n \brack k}$

There's my recursion for the Stirling numbers (unsigned, of the first kind).
