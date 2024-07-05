---
title: concrete ogfs
slug: concrete-ogf
layout: post
---

Where have I gotten to? A review seems in order. I'll go through a couple of tables from Don Knuth's *Concrete Mathematics*.

Donald Knuth, Ron Graham, and Oren Ptashniak wrote *Concrete Mathematics* 
to survey of the combinatorics they think computer geeks should know. 
It's hard and I fall far short.
Chapter 7 is on generating functions. Section 7.2, *Basic Operations*,
has a pair of tables listing common OGFs (p. 335) and fundamental OGF operations (p. 334).

I've now spent some time on such things, so this is a good time to walk through these tables to see what I've missed. 

## Reviewing Functions

I'll just reproduce their table on p. 335, with an added column: whether I've gone into it or not.

| sequence | generating function | closed form | learned |
| -------- | ------------------- | ----------- | ------- |
|<1,0,0,0,0,0,...> | $\sum_{n\geq 0}[n = 0]z^n$ | 1 | yes |
|<0...,0,1,0,0,...> | $\sum_{n\geq 0}[n=m]z^n$ | $z^m$ | yes |
|<1,1,1,1,1,1,...> | $\sum_{n\geq 0}z^n$ | $\frac{1}{1-z)}$ | yes |
|<1,-1,1,-1,1,-1,...> | $\sum_{n\geq 0}(-1)^nz^n$ | $\frac{1}{1+z)}$ | yes |
|<1,0,1,0,1,0,...> | $\sum_{n\geq 0}[2\n]z^n$ | $\frac{1}{(1+z^2)}$ | yes |
|<1,0,...,0,1,0,...,0,1,0...> | $\sum_{n\geq 0}[m\n]z^n$ | $\frac{1}{(1+z^m)}$ | yes |
|<1,2,3,4,5,6,...> | $\sum_{n\geq 0}(n+1)z^n$ | $\frac{1}{(1+z)^2}$ | yes |
|<1,2,4,8,16,32,...> | $\sum_{n\geq 0}2^nz^n$ | $\frac{1}{(1+2z)}$ | yes |
|<1,4,6,4,1,0,0,...> | $\sum_{n\geq 0}{4 \choose n}z^n$ | $(1+z)^4$ | no |
|$<1,c, {c \choose 2}, {c \choose 3} ,...>$| $\sum_{n\geq 0}{c \choose n}z^n$ | $(1+z)^c$ | no |
|$<1,c, {c+1 \choose 2} , {c+2 \choose 3} ,...>$| $\sum_{n\geq 0}{c+n-1 \choose n}z^n$ | $\frac{1}{(1-z)^c}$ | no |
|$<1,c,c^2,c^3,...>$ | $\sum_{n\geq 0}c^nz^n$ | $\frac{1}{(1+cz)}$ | yes |
|$<1, {m+1 \choose m} , {m+2 \choose m} , {m+3 \choose m} ,...>$| $\sum_{n\geq 0}{m+n \choose m}z^n$ | $\frac{1}{(1-z)^{m+1}}$ | no |
|$<0,1,\frac{1}{2},\frac{1}{3},\frac{1}{4},...>$ | $\sum_{n\geq 1} \frac{1}{n} z^n$ | $ln \frac{1}{1-z}$ | no |
|$<0,1,-\frac{1}{2},\frac{1}{3},-\frac{1}{4},...>$ | $\sum_{n\geq 1} \frac{(-1)^{n+1}}{n} z^n$ | $ln (1+z)$ | no |
|$<1,1,\frac{1}{2},\frac{1}{6},\frac{1}{24},\frac{1}{120},...>$ | $\sum_{n\geq 1} \frac{1}{n!} z^n$ | $e^z$ | no |


I only have to look at these, seven remaining OGFs.

| sequence | generating function | closed form | learned |
| -------- | ------------------- | ----------- | ------- |
|<1,4,6,4,1,0,0,...> | $\sum_{n\geq 0}{4 \choose n}z^n$ | $(1+z)^4$ | no |
|$<1,c, {c \choose 2}, {c \choose 3} ,...>$| $\sum_{n\geq 0}{c \choose n}z^n$ | $(1+z)^c$ | no |
|$<1,c, {c+1 \choose 2} , {c+2 \choose 3} ,...>$| $\sum_{n\geq 0}{c+n-1 \choose n}z^n$ | $\frac{1}{(1-z)^c}$ | no |
|$<1, {m+1 \choose m} , {m+2 \choose m} , {m+3 \choose m} ,...>$| $\sum_{n\geq 0}{m+n \choose m}z^n$ | $\frac{1}{(1-z)^{m+1}}$ | no |
|$<0,1,\frac{1}{2},\frac{1}{3},\frac{1}{4},...>$ | $\sum_{n\geq 1} \frac{1}{n} z^n$ | $ln \frac{1}{1-z}$ | no |
|$<0,1,-\frac{1}{2},\frac{1}{3},-\frac{1}{4},...>$ | $\sum_{n\geq 1} \frac{(-1)^{n+1}}{n} z^n$ | $ln (1+z)$ | no |
|$<1,1,\frac{1}{2},\frac{1}{6},\frac{1}{24},\frac{1}{120},...>$ | $\sum_{n\geq 1} \frac{1}{n!} z^n$ | $e^z$ | no |

I'll put that off to another day, and go on to the table of fundamental operations.

## Reviewing Operations

Here's the same exercise for operations on OGFs, from the table on p. 334:

$$
\begin{align}
\alpha F(z) + \beta G(z) &= \sum_n (\alpha f_n + \beta g_n) z^n \\
z^mG(z) &= \sum_n g_{n-m} z^n \\
\frac{G(z) - g_0 - g_1z - ... - g_{m-1}z^{m-1}}{z^m} &= \sum_{n\geq0} g_{n+m}z^n \\
G(cz) &= \sum_n c^n g_n z^n \\
G'(z) &= \sum_n (n+1) g_{n+1} z^n \\
zG'(z) &= \sum_n n g_n z^n \\
\int_0^z \! G(t) \, \mathrm{d}t &= \sum_{n \geq 1} \frac{1}{n} g_{n-1} z^n \\
F(z)G(z) &= \sum_n \left( \sum_k f_k g_{n-k} \right) z_n \\
\frac{1}{1-z} G(z) &= \sum_n \left( \sum_{k \leq n} g_k \right) z_n \\
\end{align}
$$

For these, I know all but the formula with the definite integral.
Again, I'll postpone further exploration to another day.

## LaTeX

Making this page required learning a lot more LaTeX.
Because I have to write equations,
this is a just-in-time way to pick up what I need.
