---
title: A Simple Generating Function
date: 27 June 2024
layout: post
---

I've already mentioned the function that generates the series $$\lbrace a_n=1 \rbrace$$:
$$f(x) = 1 + x + x^2 + x^3 + ... = \sum_{0}^{\infty}x^n = 1/(1-x)$$
This function appears a *lot*.

It only converges in the interval $$-1 \lt x \lt 1$$ 
but for generating functions, 
we don't care about convergence (at least, not yet). 
The polynomial is only a convenient carrier for it's coefficients, which are the series.

Still,I was curious about how different the two functions were, so I found an on-line graphing calculator
and looked at the graphs of both $$1/(1-x)$$ and $$1 + x + x^2 + ...$$

I didn't know how to get a graph of the infinite series, but for the interval where $$1/(1-x)$$ converges,
even $$1+x+x^2+x^3$$ looked like a good approximation.

### How good?

So, how good is it?
Well, the difference between $$f(x) = 1+x+x^2+x^3+x^4+...$$ and $$approx(x) = 1+x+x^2+x^3$$ is $$diff(x) = f(x) - approx(x) = x^4+x^5+...$$

It would be nice to find a closed form for $$approx(x)$$ 

Let's start with $$diff(x)$$ the generating function for 
$${0, 0, 0, 0, 1, 1, 1, ...} = x^4 + 5 + x^6 + ... = x^4*f(x)$$

This gives me the generating function for $$approx(x) = 1/(1-x) - x^4/(1-x) = (1-x^4)/(1-x)$$ .

At $$x=0$$ the approximation is perfect. At $$x=1/2$$ the difference is $$(1/16)/(1/2) = 1/8$$

Not great but not awful. 

Crank up the number of terms in the approximation to $$n$$ and $$diff(x)$$ becomes $$(x^n)/(1-x)$$ so that at $$x = 1/2$$ the difference is $$(1/2^n)/(1/2) = 1/2^{n-1}$$ 

Add a couple more terms, to $$x^5$$ and the difference shrinks to only $$1/32$$

All this comes from noticing that the generating function of $$\sum_{4}^{\infty}x^n = x^4*\sum_0^{\infty}x^n$$

Which is cool.
