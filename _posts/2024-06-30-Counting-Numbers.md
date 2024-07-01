---
title: "Counting Numbers"
slug: "Counting-Numbers"
layout: post
---

I differentiated $1 + x + x^2 + x^3 + ...$ to get an OGF for the counting numbers,
$\lbrace 1, 2, 3, ...\rbrace$. Here are a couple of more ways to skin that cat.

## The Counting Numbers, Revisited.

I watched some YouTube videos today about generating functions by Jonathan Lambert, who has a tremendously lovely, Irish accent.
He uses $G_1(x) = 1 + x + x^2 + x^3 + ... = 1/(1-x)$
for the generating function for $\lbrace a_n = 1 \rbrace$,
and $G_N(x) = 1 + 2x + 3x^2 + 4x^3 + ... = 1/(1-x)^2$, for the generating function for the natural numbers, $N = \lbrace 1, 2, 3, ... \rbrace$.

I like his subscript notation, so I'll use it.

In an earlier post, by showing that $G_N = d(G_1)/dx = 1/(1-x)^2$, I showed how simple calculus can produce new generating functions from old.
I can get to the generating function for $G_N$ in a couple of other ways, which I'll use to introduce a pair of other useful techniques.

The check that these techniques work is that they generate the same function.

### Multiplying series

Suppose I have two power series:

$a(x) = a_0 + a_1 * x + a_2 * x^2 + a_3 * x^3 + ...$
and
$b(x) = b_0 + b_1 * x + b_2 * x^2 + +b_3 * x^3 + ...$ .

What, then, is the power series $c(x) = a(x) * b(x) = c_0 + c_1 * x + c_2 * x^2 + c_3 * x^3 + ...$ ?

A little high-school algebra gets me this:
$$ c(x) = (a_0 * b_0) + (a_0 * b_1 + a_1 * b_0)x + (a_0 * b_2 + a_1 * b_1 + a_2 * b_0)x^2 + (a_0 * b_3 + a_1 * b_2 + a_2 * b_1 + a_3 * b_0)x^3 + ...$$

What's the pattern here? The coefficient, $c_n$ of $x^n$ is the sum of the product of coefficents from $a(x)$ and $b(x)$ whose *subscripts* sum to $n$.
In other words, $$c_k = a_0 * b_{k-0} + a_1 * b_{k-1} + ... + a_{k-1} * b_1 + a_{k-0} * b_0 = \sum_{n=0}^k a_n * b{k-n}$$

This operation is, it seems, called a *convolution*, and appears hither and yon throughout mathematics.

Here's a cool use for it. Suppose $b(x) = G_1(x)$, so $\lbrace b_n = 1 \rbrace$
Then $$c_k = \sum_{n=0}^k a_n$$. In other words, each successive term of the product series is the sum of the first $n$ terms of the original series.
That is, $\lbrace c_0 = a_0, c_1=a_0+a_1, c_2=a_0+a_1+a_2, ...\rbrace$.

So, if $a(x) = b(x) = G_1(x) = 1 + x + x^2 + ... $
then $c(x) = a(x) * b(x) = 1 + 2 * x + 3 * x^2 + 4 * x^3 + ... = G_N(x)$
And what is that? $a(x) * b(x) = 1/(1-x) * 1/(1-x) = 1/(1-x)^2$ .

Not bad.

### Shifting series

I'm comfy with the idea of right-shifting a sequence by multiplying its generating function by $x$ .

If $a(x)$ generates $\lbrace a_0, a_1, a_2, ...\rbrace$,
then
$x * a(x)$ generates $\lbrace 0, a_0, a_1, a_2, ...\rbrace$,
$x^2 * a(x)$ generates $\lbrace 0, 0, a_0, a_1, a_2, ...\rbrace$,
$x^3 * a(x)$ generates $\lbrace 0, 0, 0, a_0, a_1, a_2, ...\rbrace$,
and so on.

Multiplying a generating function by $x^n$ shifts the sequence right by $n$ places and makes the first $n-1$
series elements $0$s.

Okay, then consider this:
if $G_1$ generates $\lbrace 1, 1, 1, ... \rbrace$,
and
$x * G_1$ generates $\lbrace 0, 1, 1, 1, ... \rbrace$,
then
$G_1 + x * G_1$ generates $\lbrace 1, 2, 2, 2, ... \rbrace$.

Continuing,
$G_1 + x * G_1 + x^2 * G_1$ generates $\lbrace 1, 2, 3, 3, 3, ... \rbrace$
and so on.

Taking this to its logical end,
$G_1 + x * G_1 + x^2 * G_1 + ... + x^k * G_1 + ...$ generates $\lbrace 1, 2, 3, ...\rbrace$, the counting numbers.
Finally, factor out $G_1$ to get $(1 + x + x^2 + x^3 + ... ) * G_1 = G_1 * G_1 = 1/(1-x)^2$

I particularly like this last derivation. Why? Two reasons:

1. I thought of it myself. Actually, I came up with both derivations myself,
but then Jonathan Lambert used the first, "multiplying" proof
to introduce convolutions.
I haven't (yet) seen the second derivation anywhere. For now, it's all mine.

1. If I re-write the sum as $G_1 + G_1 * x + G_1 * x^2 + ...$, then what I'm seeing is a power series in which the coefficients -- the underlying series elements --
are functions instead of integers. In fact, ***coefficients can themselves be other power series***.

Yet even when they are, I can still, at least sometimes, derive a simple, closed-form, generating function for the whole mess.
