---
title: manipulating egfs
layout: post
slug: egf-ops
---
I've defined EGFs and shown a couple of examples. Now it's time to see what fundamental manipulations look like.
I did many of these for OGFs, so let's see what's the same and what's different.

The basic exercises in Wilf's chapter 1 are both my end and my means. 
His exercise 1 defines a suite of progressively harder series definitions,
like $a_n = n$ up to $a_n = P(x)$ where $P(n) is a polynomial in $n$, and asks for the OGF for each.
Exercise 2 asks for the EGFs of the same ones.

Exercise 3 & 4 have the same sorts of parallels.

Sometimes the answers are clear analogues of one another. For example, if $xD$ is the operator $x \cdot \frac{d}{dx}$
and $(xD)^k$ means perform this operator $k$ times in a row, then
$P(xD)$ produces both the OGF and the EGF.

Thus, 

$$a_n = \alpha n^3 + \beta n^2 + \gamma n + \delta$$

has the OGF

$$ O(x) = \left[ \alpha (xD)^3 + \beta (xD)^2 + \gamma (xD) + \delta \right] (\frac{1}{1-x}) $$

and the EGF

$$ E(x) = \left[ \alpha (xD)^3 + \beta (xD)^2 + \gamma (xD) + \delta \right] (e^x) $$
