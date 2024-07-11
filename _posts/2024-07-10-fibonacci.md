---
title: fibonacci
slug: fibonacci
layout: post
---

Every OGF tutorial or text I've seen uses the Fibonacci series as an early example.
Why should I be different?

## An OGF for the Fibonacci series.

How about another example? I'm going to create an OGF for the Fibonacci series.
Everyone else seems to work through this series as an example,
so I'd better be able to do it myself.

### The recursion

The recursion for the Fibonacci is just $f_{n+1} = f_n + f_{n-1}$, where $n\geq1$,
$f_0 = 0, f_1 = 1$.

As always, I want to get a closed form for the OGF of the series,
$$F(x) = \sum_0^\infty f_n x^n$$, 
which I'm just going to write as 
$F = \sum f_n x^n$.  I'll just assume from now on that unless I say otherwise, 
my sums have those limits, and $F$ (or, more often, $G$) 
is a generating function $F(x)$ ( or $G(x)$ ).

In defining the recursion, I have to use $n\geq1$ because if I start with $n=0$, 
then $f_{n-1} = f_{-1}$, which I haven't specified.

Notice, though, that $$F = \sum_0^\infty f_n x^n = \sum_1^\infty f_n x^n$$ because $f_0 = 0$.
That will come in handy.

### The equation

Going through the steps, first I make both sides of the recursion into series.

$$\sum_1 f_{n+1} x^n = \sum_1 f_n x^n + \sum_1 f_{n-1} x^n$$

This becomes, after twiddling subscripts and limits,

$$(\sum_2 f_n x_n)/x = (F - x)/x = F + xF = F(1+x)$$

Solving, I get

$$F = x/(1-x-x^2)$$

### Partial-fraction decomposition.

Next, I factor the denominator.

$$F = \frac{x}{(1-\phi_{+} x)(1-\phi_{-} x)}$$,

where $\phi_{+} = \frac{1 + \sqrt{5}}{2}$
and $\phi_{-} = \frac{1 - \sqrt{5}}{2}$

Here, $\phi$ is the well-known, golden ratio,
in some special sense of the adjective "well-known." 
I think the use of $\phi$ comes from Euler. 

Now what?

I use the same tricks I did in the last post to re-write this as
$$\frac{1}{\sqrt{5}}\left( \frac{1}{(1 - \phi_{+} x)} - \frac{1}{(1 - \phi_{-} x)} \right)$$

Damn! I got that giant, steaming pile of LaTeX almost right the first time. 
It's getting easier.

### A closed-form formula for $f_n$

I turn each fraction into the series

$$1 + \phi x + \phi^2 x^2 + \phi^3 x^3 + ...$$

to give me $$f_n = \frac{1}{\sqrt{5}}({\phi_{+}}^n - {\phi_{-}}^n)$$

Okay, this is at least weird. The $f_n$ are *integers*.
I'm supposed to believe this formula, 
full of fractions powers and $\sqrt{5}$ always turns into an integer?
Really?

It does. The formula is both correct and, again, "well-known."
Could I have come up with it without using generating functions?
Well, *I* sure as hell couldn't have.

Plus, as every text that goes through this example points out, 
${\phi_{-}}^n$ quickly vanishes as $n$ gets big,
which means rounding $\frac{1}{\sqrt{5}} {\phi_{+}}^n$ to the nearest integer
is another way to get the $n^{th}$ Fibonacci number.

Go figure. But, again, cool!
