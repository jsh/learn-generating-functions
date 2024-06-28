---
title: A Simple Generating Function
date: 27 June 2024
layout: post
---

I've already mentioned the function that generates the sequence $\lbrace a_n=1 \rbrace$:
$f(x) = 1 + x + x^2 + x^3 + ... = \sum_{0}^{\infty}x^n = 1/(1-x)$ .
This function shows up a *lot*.

It only converges in the interval $-1 \lt x \lt 1$ ,
but for generating functions I don't care about convergence.
At least, not yet. Will I later? I dunno. 
I'm told the series is only a convenient carrier for its coefficients, which are the sequence.

Outside this interval, the two functions are different. For, say, $x=2$, the infinite series blows up:
$1 + 2 + 4 + 8 + ... = \infty$.

In contrast, $1/(1-x)$ is just $1/(1-2) = -1$.

Curious how different the two functions were, I hunted down an on-line graphing calculator
and looked at both graphs.

I don't know how to graph an infinite series, but in the interval where $1/(1-x)$ converges,
it doesn't take many terms to make the two curves look the same. Even $1+x+x^2+x^3$ looks like a good approximation.

I'll also note that when I stop approximations at an even power, $1+x+x^2+...+x^{2k}$, I see one shape
while stopping at an odd power, $1+x+x^2+x^{2k+1}$ gives me another. For big negative values of $x$,
$x^{2k+1}$ is a giant, negative term, so the curve shoots down, while ending on $x^{2k}$ makes it shoot up.

All that, though, happens outside the area where $1/(1-x)$ converges, where it's is a good approximation for the infinite series.

### How good is that approximation?

When the approximation is good, how good is it?
Well, the difference between the function, $f(x) = 1+x+x^2+x^3+x^4+...$ and the approximation, $a(x) = 1+x+x^2+x^3$ is $d(x) = f(x) - a(x) = x^4+x^5+...$.

It would be nice to find a closed form for $a(x)$ 

If I notice that $d(x)$ is the generating function for a sequence, ${0, 0, 0, 0, 1, 1, 1, ...}$ , I get 
x^4 + x^5 + x^6 + ... = x^4*f(x) = x^4/(1-x)$

This gives me $a(x) = 1/(1-x) - x^4/(1-x) = (1-x^4)/(1-x)$ .

At $x=0$ the approximation is perfect:  $f(0) = a(0) = 1$.
At $x=1/2$ the difference is $d(1/2) = (1/16)/(1/2) = 1/8$

Not great but not awful. And the closer you get to $x=0$, the better the approximation is.

Crank up the number of terms in the approximation to $n$ and $d(x,n)$ becomes $x^n/(1-x)$ .
At $x=1/2$, each added term halves the difference. Add a couple more terms, to $x^5$ and the difference shrinks to only $1/32$

All this came from my spotting that I could think of the difference as a generating function of a series, a simple tweak of an important, basic function: $d(x) = \sum_{4}^{\infty}x^n = x^4*(1/(1-x))$ .

And, yes, all this even though I said, "I'm don't care about convergence."

I admit, I'm delighted.
