---
title: more odd squaring
layout: post
slug: more-odd-squaring
---
*What would you pay? But wait! There's more!* -- Ronald Popile

### Yet another way to get the OGF for the odd squares.
I saw. at the end of yesterday's post, that I could really have gotten the power series for the odd squares like this:

$$G(x) = \sum (2k+1)^2 x^k = \sum (4k^2 + 4k + 1) x^k = (4(xD)^2 + 4(xD) + 1) \frac{1}{1-x}$$

Well, that seems easy enough.

$$G(x) = 4 \frac{x(1+x)}{(1-x)^3} + 4 \frac{x}{(1-x)^2} + \frac{1}{1-x} = N/D$$

If I put everyone over the common denominator $D = (1-x)^3$ ,
then the numerator is

$$N = 4 x (1+x) + 4 x (1-x) + (1-x)^2 = 4x + 4x^2 + 4x - 4x^2 + 1 - 2x + x^2 = x^2 + 6x + 1$$

That means 

$$G(x) = \frac {x^2 + 6x + 1}{(1-x)^3}$$

Which is a much easier derivation.
