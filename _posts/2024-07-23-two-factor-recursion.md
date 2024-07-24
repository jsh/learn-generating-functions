---
title: two factor recursion
slug: two-factor-recursion
layout: post
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
Or, as a table

| n | k=0,1,2,3,... |
| - | ------------- |
| 0 | 1 |
| 1 | 1 1 |
| 2 | 1 2 1 |
| 3 | 1 3 3 1 |
| 4 | 1 4 6 4 1 |
|...|...|

For example $b(4, 2) = 6 = b(3,1) + b(3,2) = 3 + 3$

How can I attack this?

### I begin the usual way

$$\sum_{k=0}^n b(n, k) x^k = \sum_{k=0}^n b(n-1, k-1) x^k + \sum_{k=0}^n b(n-1, k) x^k$$

Except, well, the first term on the right-hand side includes $b(n-1, -1)$ and the second one includes $b(n-1, n)$. How do I handle those?

Plus, there are still too many variables. What's next?

### Disguise one factor as a subscript.
What Wilt does next seems like a trick, but he turns $n$ into a subscript,
and defines a subscripted generating function.

$$B_n(x) = \sum_{k=0}^n b(n, k) x^k$$

So that my equation becomes

$$B_n(x) = x B_{n-1}(x) + B_{n-1}(x)$$

Whoa! Wait. What???

### Boundary conditions

This is a sidebar, but a key sidebar. In *generatingfunctionology* Wilts says, early on, 
that to solve a recursion, you *have* to define the boundary conditions. No exceptions.

In some cases -- this one, for example -- you can define them
in a way that provides fabulous simplification.
Watch this.

In the table of binomial coefficients, I've tacitly assumed $n \geq 0, k \geq 0, k \leq n$
Also, $b(n, 0) = b(n, n) = 1$, so each row has exactly $n+1$ entries.

Let me enlarge it.  Suppose I say $b(n, k) = 0$ for $k>n$ or $k<0$, so my table looks like this:

 |n| $k = -\infty ... \infty$ |
 |--|------------|
 | 0 | ...0 0 1 0 0 ...|
 | 1 | ...0 0 1 1 0 0 ...|
 | 2 | ...0 0 1 2 1 0 0 ... |
 | 3 | ...0 0 1 3 3 1 0 0 ... |
 | 4 | ...0 0 1 4 6 4 1 0 0 ... |
 |...|...|

The recursion still works outside the earlier limits.

$$b(3, -1) = 0 = b(3, -2) + b(3, -1) = 0 + 0$$

but I can get rid of a lot of edge conditions.

For example, $b(n, n) = b(n-1, n-1) + b(n-1, n) = b(n-1, n-1)$.

With the same reasoning $b(n,0) = b(n-1, 0) + b(n-1, -1) = b(n-1, 0)$

All I have to say is $b(0, 0) = 1$ and I get $b(n, 0) = b(n, n) = 1$.

Pesky subscripts on summations vanish.

$$\sum_{k=0}^n b(n, k) x^k$$

becomes

$$\sum_{k=-\infty}^{\infty} b(n, k) x^k$$

which I can lazily rewrite as

$$\sum_k b(n,k) x^k$$

Thus, instead of this:

$$\sum_{k=0}^n b(n, k) x^k = \sum_{k=0}^n b(n-1, k-1) x^k + \sum_{k=0}^n b(n-1, k) x^k$$

I'll write this:

$$\sum_k b(n, k) x^k = \sum_k b(n-1, k-1) x^k + \sum_k b(n-1, k) x^k$$

I'll also just say

Almost there!

### Shifting summation indices.
Finally, I'll generalize the (subscripted) generating function, like this:

$$B_n(x) = \sum_k b(n, k) x^k$$

So that when I transform $b(n, k) = b(n-1, k-1) + b(n-1, k)$ into an equation about generating functions, I get this: 

$$\sum_k b(n, k) x^k = \sum_k b(n-1, k-1) x^k + \sum_k b(n-1, k) x^k$$

or

$$B_n(x) = \sum_k b(n-1, k-1) x^k + B_{n-1}(x)$$

because, now that my summation indices span the integers, $B_q(x) = \sum_k b(q, k) x^k$, no matter what $q$ is.

This leaves only 

$$\sum_k b(n-1, k-1) x^k = x\sum_k b(n-1, k-1) x^(k-1)$$

Since $k$ spans all the integers, so do expressions like $k+m$, for any integer, $m$.
A little thought says, then, that
$$\sum_k f(k+m) = \sum_k f(k)$$,

which means

$$x\sum_k b(n-1, k-1) x^(k-1) = xB_{n-1}(x)$$

and

$$B_n(x) = xB_{n-1}(x) + B_{n-1}(x) = (x+1)B_{n-1}(x) = (x+1)^nB_0(x)$$

What's $B_0(x)$ ?

$$B_0(x) = \sum_k b(0,k) x^k = b(0,0) x^0 = 1$$

### In other words

$$B_n(x) = (1+x)^n = {n \brace 0} x^0 + {n \brace 1} x^1 + ... + {n \brace k} x^k + ...$$

or 

$$b(n, k) = {n \brace k}$$

I knew that already, but here, I used generating functions to derive it from the recursion.

### Review
So, the tricks to a two-factor recursion include these:

1) Just use one of the factors as the exponent of the formal parameter. Treat the other one as a constant, and sum over the one that varies. This feels vaguely similar to doing partial derivatives. Or maybe, I suppose, the corresponding integrals.
1) See if I can define the coefficients I'm looking for in a way that lets my sums
range from $-\infty$ to $+\infty$, to remove special boundary conditions.
1) Hope that I end up with an equation like $G_n(x) = f(x) G_{n-1}(x)$, to let me conclude that $G_n(x) = f(x)^n G_0(x)$, which I can then (maybe) use to get a closed-form solution for the coefficients of $x^n$.

Leastwise, I think that's what I learned. Have to try another one to find out.

## Progress

Okay, I blogged again. This time, I walked down to McDonalds about 9am, when it was still cool, and got most of a post, then finished up at home in the late afternoon.
Was it a lot of time? Yes. Is that discouraging? No, actually. It was all time I wanted to spend thinking about the subject, and blogging made me do it.
