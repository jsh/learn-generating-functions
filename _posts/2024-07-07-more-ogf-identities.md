---
title: More Ogf Identities
slug: more-ogf-identities
layout: post
---

I see if I can convince myself of identities that I Knuth lists
in the previous posts that I hadn't thought about.

## A few more common OGFs worth knowing.

| sequence | generating function | closed form |
| -------- | ------------------- | ----------- |
|<1,4,6,4,1,0,0,...> | $\sum_{n\geq 0}{4 \choose n}z^n$ | $(1+z)^4$ |
|$<1,c, {c \choose 2}, {c \choose 3} ,...>$| $\sum_{n\geq 0}{c \choose n}z^n$ | $(1+z)^c$ |

These are nothing more than the binomial theorem. The coefficients are from Pascal's triangle.
The first of these is just the second, with $c=4$. 

Duh.

Next one's trickier:

| sequence | generating function | closed form |
| -------- | ------------------- | ----------- |
|$<1,c, {c+1 \choose 2} , {c+2 \choose 3} ,...>$| $\sum_{n\geq 0}{c+n-1 \choose n}z^n$ | $\frac{1}{(1-z)^c}$ |

I can derive it from the negative binomial, 
which generalizes $n \choose k$ to negative values of $n$,like this:

$${n \choose k} = \frac{n!}{k!(n-k)!} = \frac{n(n-1)(n-2)...(n-k+1)}{k!}$$

with the same number of terms on top as on bottom.

Thus, just as I can say this:
$${10 \choose 3} = \frac {10 \cdot 9 \cdot 8}{3 \cdot 2 \cdot 1}$$
I can also say
$${-10 \choose 3} = \frac {-10 \cdot -11 \cdot -12 }{3 \cdot 2 \cdot 1}$$

In other words, assuming $n \geq 1$,

$${-n \choose k} = (-1)^k \cdot \frac{n(n+1)(n+2)...(n+k-1)}{k!} = \frac{(-1)^k(n+k-1)!}{(n!)(k!)}$$

With this trick, I can use the binomial theorem to turn $(1-z)^{-c}$ into the series in the middle column!
Gotta admit that's cool.

Cooler still, as Knuth observes, if c=2, the sequence is $<1, 2, 3, ...>$, 
which gives me an OGF of $\frac{1}{(1-z)^2}$ -- the counting numbers again!
