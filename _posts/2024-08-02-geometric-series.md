---
title: another look at geometric series
layout: post
slug: geometric-series
---

The basic, infinite geometric series is
$1 + x + x^2 + x^3 + ... = \frac{1}{1-x}$
Here are a couple of other ways to ring changes on that fundamental identity.

## The geometric series
The first proof I ever learned was in eighth-grade algebra:
the sum of a finite, geometric series.
I was supposed to memorize the formula, for class, and was having trouble.
Memorizing formulas was never my strength.

My mother, who was busy with something, sent me down the street to another mom,
who had a masters in mathematics. She said, "You don't need to memorize it.
We'll just derive it." I'd never heard of such a thing.

$$S = 1 + r + r^2 + ... + r^n$$

$$rS = r + r^2 + ... + r^{n+1}$$

$$S - rS = (1-r)S = 1 - r^{n+1}$$

$$S = \frac {1 - r^{n+1}}{1-r}$$

Amazing. Even better, if I let the sequence be infinite, then

$$S = 1 + r + r^2 + ... = \frac {1}{1-r}$$

I spent days scribbling and re-scribbling this derivation every chance I got,
and marveling at it.

### Approaching this from another direction.

Let me start, instead, with the fundamental identity.

$$1 + r + r^2 + ... = \frac {1}{1-r}$$

I can get this as above, or by synthetic division, or just take it on faith.

If I multiply by $r^k$, this shifts the series to the right, $k$ places:

$$ r^k + r^(k+1) + + r^(k+2) + ... = \frac {r^k}{1-r}$$

So, the finite series

$$ S = 1 + r + r^2 + ... + r^n$$

just snips the end off this infinite series,
the end being the infinite series

$$T = r^{n+1} + r^{n+2} + r^{n+3} + ... = \frac{r^{n+1}}{1-r}$$

In other words,

$$ 
S = 1 + r + r^2 + ... + r^n = \frac {1}{1-r} - \frac {r^{n+1}}{1-r} =
\frac {1 - r^{n+1}}{1-r}
$$

Even better, we can truncate on both ends like this:

$$
S = r^m + r^{m+1} + r^{m+2} + ... + r^{n-1} + r^n =
r^m (1 + r + r^2 + ... + r^{n-m}) = r^m \left( \frac {1-r^{n-m+1}}{1-r} \right)
$$

I now recognize, at a glance, the RHS of ths string of equalities, 
as expanding to the series on the LHS. I can write the series 
as the generating function without going through a long derivation.

These sorts of truncated series pop up in some frequently-seen, 
generation-function solutions to combinatorics problems.

I'll look at those tomorrow.








