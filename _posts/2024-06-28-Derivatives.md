---
title: Derivatives!
slug: Derivatives!
layout: post
---

Let's try going the other direction: start with a simple sequence and find a generating function.
I'll pick the counting numbers because I see two different, but related derivations.

## A generating function for the integers

Suppose I want a closed-form generating function for the positive integers: $\lbrace 1, 2, 3, 4 ... \rbrace$ .
The OGF for this is $1 + 2x + 3x^2 + 4x^3 ...$,
and even though my last calculus course was in 1969, I immediately spot this as the derivative of $f(x) = 1 + x + x^2 + x^3 + ... = 1/(1-x)$

Peachy. $df/dx = 1/(1-x)^2$, and I have my closed-form OGF.

There's just one hitch.  In summation notation, the series is $$\sum_{n=0}^{\infty}(n+1)x^n$$
Wouldn't it be nicer to have the coefficient and the exponent match?

Easy enough. Just multiply by $x$. This gives me the series $x + 2x^2 + 3x^3 + ... = 0x^0 + 1x^1 + 2x^2 + ...$.
Or, nicer, $$\sum_{n=0}^{\infty}nx^n = x/(1-x)$$

Another way to get to the same place is to expand the earlier sum:
$$1/(1-x)^2 =
\sum_{n=0}^{\infty}(n+1)x^n = 
\sum_{n=0}^{\infty}nx^n +
\sum_{n=0}^{\infty}x^n = 
\sum_{n=0}^{\infty}nx^n +
1/(1-x)$$

Thus,

$$\sum_{n=0}^{\infty}nx^n = 1/(1-x)^2 - 1/(1-x) = x/(1-x)$$

Nice, right?

This operation -- take a derivative, then multiply by $x$ to shift everyone to the right -- is useful and frequent,
and I see it referred to some places as "**the operator $xD$**".
I feel comfy with that, so I expect to use it.





