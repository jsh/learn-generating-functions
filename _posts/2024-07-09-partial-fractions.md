---
title: partial fractions
slug: partial-fractions
layout: post
---

How do I get a formula for $g_n$ from the closed-form generating function?
Can I even do it? If so, how?

## A Formula for $g_n$

In the last post, I got from a recursion,

$$g_{n+1} = 3 \cdot g_n + 2; g_0 = 5$$

to a closed-form generating function:

$$G(n) = (5-3x)/(1-x)(1-3x)$$

Is this a reasonable answer? Let's see if I can find a formula for the n^{th} term, $g_n$.

The trick I see, over and over, is to use partial-fraction decomposition to reexpress $G(n)$.
I remember this decomposition from integral calculus. I also remember its being a PITA.

Basically, I need to rewrite $\frac{5-3x}{(1-x)(1-3x)}$ as $\frac{A}{(1-x)}$ + $\frac{B}{(1-3x)}$.
I can do the algebra to solve for $A$ & $B$, but it's annoying.

### Wilf's Partial Fraction Trick

Here, Herbert Wilf's *generationfunctionology* comes to the rescue with a trick I've never seen before.
It would have saved me huge amounts of grief as an undergrad, so I regret not having been shown it in 1966,
when last I needed it.

We want to solve for $A$ and $B$, where
$$\frac{5-3x}{(1-x)(1-3x)} = \frac{A}{(1-x)}$ + $\frac{B}{(1-3x)}$$

1. Get rid of the fractions. Multiply both sides by $(1-x)(1-3x)$

$$(5-3x) = A(1-3x) + B(1-x)$$

2. Solve for A, by setting $x=1$

$$5-3 = A(1-3); 2 = -2A; A = -1$$

3. Solve for B, by setting $x=\frac{1}{3}$

$$5-1 = B(1 - 1/3); 4 = B(2/3); B=6$$

4. Check it.

$$\frac{-1}{(1-x)} + \frac{6}{(1-3x)} = \frac{-(1-3x) + 6(1-x)}{(1-x)(1-3x)} = \frac{(5-3x)}{(1-x)(1-3x)}$$

This works awesomely.

### Turn Partial Fractions into OGFs

But now, it's easy:

$$\frac{-1}{(1-x)} + \frac{6}{(1-3x)} = \sum_0 -1 \cdot x^n + \sum_0 6*(3x)^n = \sum_0 (6 \cdot 3^n - 1) x^n$$

So the general term is $g_n = 6 \cdot 3^n - 1$ .

## Is this right?
Using $g_{n+1} = 3*g_n+2$

| n | g_n | 6(3^n) - 1 |
|---|-----|---------|
| 0 |  5  | 5       |
| 1 | 17  | 17      |
| 2 | 53  | 53      |

etc.

