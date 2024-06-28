---
title: Building a Library
date: June 28, 2024
layout: post
---

I know a couple of generating functions: $1/(1-x)$ and $x^n/(1-x)$.
How could I build up a library that I can recognize, easily?

## First steps.
I now recognize $1/(1-x)$ as the series $1+x+x^2+x^3+...$,
and $x^n/(1-x)$ as $x^n+x^{n+1}+x^{n+2}+...$.

I even see that $1+x+...+x^{n-1}$ is $(1-x^n)/(1-x)$.

Are there other generating functions I can recognize by inspection?
Instead of writing a sequence, turning that into a series,
and trying to find a closed-form generating function,
let me go the other direction.
I'll write a generating function and see what the sequence or series must be.

It's trivial to see that $c/(1-x)$ must be $c + cx + cx^2 + ...$, and the series is
$\lbrace c, c, c, ... \rbrace$.

What about $1/(1-(ax))$ ?
That must be $1+(ax) + (ax)^2 + ...$,
representing $\lbrace a^0, a^1, a^2, a^3 ... \rbrace$.

Changing the sign is no big deal.
$1/(1+x) = 1/(1-(-1x)) = 1 - x + x^2 - x^3 + ...$, which is the sequence $\lbrace 1, -1, 1, -1, ... \rbrace$

I see one more thing I could tweak.  $1/(k-x) = (1/k)/(1 - x/k)$ .
That's not particularly pretty, so I'll forego remembering that one.
