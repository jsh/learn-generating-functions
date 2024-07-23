---
title: two factor recursion
layout: post
slug: two-factor-recursion
---
Okay, what shall I blog about? Let me retreat to two-factor recursion,
which I had to do once I understood that I couldn't use the lovely approach
that works for one-factor recursions.

## The binomial coefficients.
To learn how to proceed, I went back to *generatingfunctionology*.
I'll try to explain what Wilts explains better than I,
because the act of explaining will help cement in what I learned from him.

### the binomial recursion
I'll use $b(n, k)$ as an easier way to type $n \brace k$, the binomial coefficients.
This is the number of ways to choose $k$ items, without replacement from $n$.

From Pascal's triangle, I can see that $b(n, k) = b(n-1, k-1) + b(n-1, k)$

 |n| k = 0, 1, 2, ... |
 |--|------------|
 | 0 |  1 |
 | 1 |  1 1 |
 | 2 |  1 2 1 |
 | 3 |  1 3 3 1 |
 | 4 |  1 4 6 4 1 |
    ...

For example $b(4, 2) = 6 = b(3,1) + b(3,2) = 3 + 3$

How can I attack this?

### I begin the usual way

$$\sum_{k=0}^n b(n, k) x^k = \sum_{k=1}^{n-1} b(n-1, k-1) x^k + \sum_{k=0}^{n-1} b(n-1, k) x^k$$

Except there's some bogosity in the first term on the right-hand side, which has the wrong limits.

Now what?

### Disguise one factor as a subscript.
This seems like a trick, but I say

$$B_n(x) = \sum_{k=-\infty}^{\infty} b(n, k) x^k = \sum b(n, k) x^k$$

So that my equation becomes

$$B_n(x) = x B_{n-1}(x) + B_{n-1}(x)$$

Whoa! Wait. What???

### Boundary conditions

This is a sidebar, but a key sidebar. In *generatingfunctionology* Wilts says, early on, 
that to solve a recursion, you *have* to know the boundary conditions. No exceptions.

In some cases -- this one, for example -- knowing them provides fabulous simplification.
Watch this.

In the table of binomial coefficients, I've tacitly assumed $n \geq 0, k \geq 0, k \leq n$
Also, $b(n, 0) = b(n, n) = 1$, so each row has exactly $n+1$ entries.

Let me enlarge it.  Suppose I say $b(n, k) = 0$ for $k>n$ or $k<0$, so my table looks like this:

 |n| k = $-\infty ... \infty$ |
 |--|------------|
 | 0 | ...0 0 1 0 0 ...|
 | 1 | ...0 0 1 1 0 0 ...|
 | 2 | ...0 0 1 2 1 0 0 ... |
 | 3 | ...0 0 1 3 3 1 0 0 ... |
 | 4 | ...0 0 1 4 6 4 1 0 0 ... |
    ...

The recursion still works outside the earlier limits.

$$b(3, -1) = 0 = b(3, -2) + b(3, -1) = 0 + 0$$

but I can get rid of a lot of edge conditions.

For example, $b(n, n) = b(n-1, n-1) + b(n-1, n) = b(n-1, n-1)$.

With the same reasoning $b(n,0) = b(n-1, 0) + b(n-1, -1) = b(n-1, 0)$

All I have to say is $b(0, 0) = 1$ and I get $b(n, 0) = b(n, n) = 1$.

Pesky subscripts on summations vanish.

$$\sum_{k=0}^n b(n, k) x^k$$

becomes

$$ \sum_{k=-\infty}^{\infty} b(n, k) x^k$$

which I can lazily rewrite as

$$\sum_k b(n,k) x^k$$ .

Almost there!
