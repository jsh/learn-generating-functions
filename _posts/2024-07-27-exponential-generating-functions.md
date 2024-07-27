---
title: exponential generating functions
layout: post
slug: egf
---

The generating functions I see on the web for Stirling functions are not ordinary generating functions (OGFs),
they're exponential generating functions (EGFs). What are those?

### Exponential generating functions
A generating function is a clothesline to hang sequence elemnts on.
So far, the elements, $\lbrace a_n \rbrace$, have been coefficients of the formal polynomial $\sum a_k x^k$ .
They're fancier versions of the basic series $\sum x^k = \frac{1}{1-x}$ .
These are ordinary generating functions, or OGFs.

An expnential generating function, or EGF, just uses a different basic polynomial:

$$\sum \frac{x^n}{n!} = e^x$$

so that the EGF for $\lbrace a_n \rbrace$ is 

$$E(x) = \sum \frac{a_n \cdot x^n}{n!}$$

### An example:
I'll start simple.
For the sequence $\lbrace a_n = n \rbrace$, the OGF is $\frac{x}{(1-x)^2}$.
I get this by applying the operator $x \frac{d}{dx}$ to the series $1 + x + x^2 + ... = \frac{1}{1-x}$ .

Familiar territory.

How about the EGF for the same sequence?

$$E(x) = \sum \frac{n \cdot x^n}{n!} = x \cdot \sum \frac{x^(n-1)}{(n-1)!} = $$ 

*WHOOPS!*

The RHS here is really only valid for n>1, right?  I need boundary conditions or something.

I could do this for n > 0, but I can do better. If I look at the LHS term for $n=0$, it's

Being a little more careful, I'll say

$$E(x) = \sum_{n \geq 0} \frac{n \cdot x^n}{n!} = \sum_{n \geq 1} \frac{n \cdot x^n}{n!} = 
x \cdot \sum_{n \geq 1} \frac{x^(n-1)}{(n-1)!} = x \cdot \sum_{n \geq 0} \frac {x^n}{n!} = xe^x$$

Ooh. That's suggestive. This is again $x \frac{d}{dx}$ applied to the basic series.
I wonder if that's general.

### Stepping back for perspective.
I have two kinds of generating functions. 
If I see a sequence, $\lbrace a_n \rbrace$, as a point in an infinite-dimensional space,
then I can see an OGF as a vector in a vector space spanned by the vectors $1, x, x^2, ...$,
These are orthogonal because none of them can be expressed as linear combinations of the others.
Can't make $x^2$ from any linear combination of $1, x, x^3, x^4, ...$, right?

Because I can generalize this to any infinite-dimensional vector space, 
I can build a clothsline for sequences from any basis of any infinite-dimensional vector space.
EGFs are just another example: the orthogonal bases are the functions $u_n(x) = x^n/n!$ .

I could see a Fourier series as a generating function, with the Fourier coefficients as the sequence.

More generally, I can see the tuples of scalars from any vector field as a sequence, right?

I wonder whether that's where this is going.
