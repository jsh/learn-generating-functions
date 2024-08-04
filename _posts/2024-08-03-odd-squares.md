---
title: squares of odd integers
layout: post
slug: odd-squares
---
Time for a test.
Can I now derive an interesting generating function,
in closed form, without cheating to look?
We shall see.

Here's the power series:

$$1 + 9x + 25x^2 + 49x^3 + ... = g(x)$$

Now to find a closed form.

Let's start with the fundamental identity:

$$f(x) = 1 + x + x^2 + x^3 + ... = \frac{1}{1-x}$$

First, I get a series with the squares, by applying the $(xD)$ operator a couple of times.

$$g(x) = 1 + x + 4x^2 + 9x^3 + 16x^4 + 25x^5 + ... = (xD)^2 f(x) = \frac{x (1+x)}{(1-x)^3}$$

Next, I get rid of the even terms.

$$x + 9x^3 + 25x^5 + 49x^7 + ... = \frac{g(x) - g(-x)}{2} = (1/2)\left( \frac{x (1+x)}{(1-x)^3} - \frac{-x (1-x)}{(1+x)^3} \right) = (1/2)(N/D)$$

A little high-school algebra gives me $N = x ((1+x)^4 + (1-x)^4)$ and $D = (1-x)^3 (1+x)^3 = (1-x^2)^3$ .

Okay, let me simplify the top:

$$N = x( (1 + 4x + 6x^2 + 4x^3 + x^4) + (1 - 4x + 6x^2 - 4x^3 + x^4) ) = x \cdot 2 \cdot (1 + 6x^2 + x^4)$$

Canceling an $x$ on both sides, and letting the $1/2$ cancel the $2$ on the RHS, I have

$$1 + 9x^2 + 25x^4 + 49x^6 + ... = \frac{(1 + 6x^2 + x^4)}{(1-x^2)^3}$$

I'm almost there. Now I just use the substitution $x^2 -> x$.

$$ 1 + 9x + 25x^2 + 49x^3 + ... = \frac{1 + 6x + x^2}{(1-x)^3} = g(x)$$

