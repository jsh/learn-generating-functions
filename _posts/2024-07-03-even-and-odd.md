---
title: "even and odd"
slug: "even-and-odd"
layout: post
---

Trying to get the same answer two different ways is productive.
Here's an example using even and odd numbers.

I spent a lot of time trying to draft this post, but it got too junked up. Let me start afresh,
see if I'm more satisfied.

## Even and Odd Terms

I've derived the generating function for the counting numbers $\lbrace 1, 2, 3, 4, ... \rbrace$
from $g(x) = 1 + x + x^2 + ... = 1/(1-x)$ in a few different ways.
All of them give me $f(x) = 1/(1-x)^2$.

How can I get a generating function for the odd or even numbers: $\lbrace 1, 3, 5, ... \rbrace$ or $\lbrace 2, 4, 6, ... \rbrace$.
A trivial way to get the evens would be to double every counting number: $ e(x) = 2 * f(x) = 2/(1-x)^2$
The odds? Just subtract one from every even: $\lbrace 2, 4, 6, ... \rbrace - \lbrace 1, 1, 1, ... \rbrace = \lbrace 1, 3, 5, ... \rbrace$

$$ o(x) = 2/(1-x)^2 - 1/(1-x) = (1+x)/(1-x)^2$$

Not rocket science.

But there's another way.  Start by noticing that each sequence is the coefficients of every *other* term of $f(x) = 1 + 2 * x + 3 * x^2 + ...$
For example, I can get rid of the even coefficients by adding: $f(x) + f(-x) = 2 + 6 * x^2 + 10 * x^4 + ...$. Dividing by 2 gets
$(f(x) + f(-x))/2 = 1 + 3 * x^2 + 5 * x^4 + ...$.

In like fashion, $(f(x) - f(-x))/(2 * x) = 2 + 4 * x^2 + 6 * x^4 + ...$, which only has even coefficients.

Still, that isn't quite what I want because the powers of $x$ are twice as big as I want them to be.
That's easy to fix. Just plug in $\sqrt x$ in place of $x$:

$$o(x) = (f(\sqrt x) - f(-\sqrt x))/(2 * \sqrt x) = 1 + 3 * x + 5 * x ^ 2 + ...$$

This looks uglier than it is. High-school algebra reduces this to $(1+x)/(1-x)^2$, the answer I want.

The same sort of trick shows
$$e(x) = (f(\sqrt x) + f(\sqrt x)/(2 * sqrt x) = 2 + 4 * x + 6 * x^2 + ... = 2/(1-x)^2$$

## Why Is This Better?

Why is this approach better? It's more work, not less, right?

This one generalizes. Consider $f(x) = a_0 + a_1 * x + a_2 * x^2 + ...$
Analogous algebra produces a generating function for the even coefficients:

$$g(x) = (f(\sqrt x) + f(-\sqrt x)/2 = a_0 + a_2 * x + a_4 * x ^ 2 + ...$$

and the odd:

$$h(x) = (f(\sqrt x) - f(-\sqrt x)/(2 * \sqrt x) = a_1 + a_3 * x + a_5 * x * 2 + ...$$

Okay, that's reasonably clean. I lifted all these derivations from various, on-line resources, but spent enough time deriving and re-deriving them
to find a clean presentation that they're now in my head.

It's a little awkward that the odd numbers, $\lbrace 1, 3, 5, ... \rbrace$ are the even coefficients $\lbrace a_0, a_2, a_4, ... \rbrace$, and vice-versa.
I could fix that by starting with the non-negative integers, $\lbrace 0, 1, 2, 3 \rbrace$, but the formulae and derivations become messier, so I won't worry about it.

It isn't at all obvious to me how I'd get, say, every third term.
