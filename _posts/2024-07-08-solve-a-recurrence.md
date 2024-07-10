---
title: solve a recurrence
layout: post
slug: solve-a-recurrence
---

I want to go through the rest of the "concrete OGFs" table,
but I'm starting to feel like, "So what?"
I want to show how to *use* an OGF to do something,
so I'm pausing for a detour.

## Solving recurrences.

Everyone seems to start showing off OGFs by showing how to use them to solve recursions.
Okey doke, here's an example.

Suppose I have a sequence, S, in which $g_{n+1} = g_n + 1$, with $g_0 = 1$.
In other words, S = <1, 2, 3, ...>.  ("Um," you say, "this is the counting numbers. You know the generating function.")
Well, sure. How do I know that I can use generating functions to get the right answer if I don't know the right answer?
After I show how it's done, I'll turn around and do an unknown recursion.

### Step 1: Turn the equations into sums.

$$\sum_{n=0}^\infty g_{n+1}x^n = \sum_{n=0}^\infty g_n x^n + \sum_{n=0}^\infty 1 \cdot x^n$$

This holds term-by-term, so that equation's good.

### Step 2: Turn the pieces into closed-form generating functions.
The right-hand-side (rhs) is pretty easy. The first term is the generating function for my series: 
$$G(x) = \sum_{n=0}^\infty g_n x^n$$
That's going to be the unknown I solve for.

The second term? Easy, right?

$$\sum_{n=0}^\infty x^n = \frac{1}{1-x}$$

What about the lhs?

$$\sum_{n=0}^\infty g_{n+1} x^n = (\sum_{n=0}^\infty g_{n+1} x^{n+1})/x$$

Now I shift the index on the sum in the numerator:

$$(\sum_{n=1}^\infty g_n x^n)/x$$

And, finally, I express the numerator in terms of $G(x)$ by adding the $g_0$ term back in:

$$(G(x) - g_0 x^0)/x = (G(x) - 1)/x$$

### Step 3, solve for G(x)

Okay, step 2 gave us this:

$$(G(x) - 1)/x = G(x) + 1/(1-x)$$

Very little algebra turns this into 
$$G(x) - xG(X) = G(x)(1-x) = x/(1-x) + 1 = 1/(1-x)$$

Or, solving,

$$G(x) = 1/(1-x)^2$$

Which is just what I was hoping for!

So, here are the steps:

1. Write down the recursion.
2. Turn it into sums across the range the recursion is defined on.
3. Turn the sums into things that look like the generating function you're looking for, or OGFs you know.
4. Solve for G(x).

## Trying the method out on a less obvious recurrence.

How's about, I dunno ... something like this: 

$$g_{n+1} = 3g_n + 2 ; g_0 = 5$$

(I'm making this recursion up arbitrarily. I hope it works out.)

This turns into $$\sum_{n=0} g_{n+1}x^n = \sum_{n=0} 3g_n x^n + \sum_{n=0} 2x^n = 3G(x) + 2/(1-x)$$
The lhs is $$(\sum_{n=0} g_{n+1}x^{n+1})/x = (\sum_{n=1} g_n x^n)/x = (\sum_{n=0} g_n x^n - g_0 x^0)/x =
(G(x) - 5)/x$$

Now I solve:

$$(G(x) - 5)/x = 3G(x) + 2/(1-x); G(x)(1-3x) = 5 + 2x/(1-x) = \frac{5(1-x) + 2x}{(1-x)}$$

Thus:

$$G(x) = \frac{5-3x}{(1-x)(1-3x)}$$

Fine. How the heck can I convince myself that's the right answer?
