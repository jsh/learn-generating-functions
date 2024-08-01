---
title: an egf recursion
layout: post
slug: egf-recursion
---
But what, I'm asking myself, can I use EGFs for? Why would folks use them for Stirling numbers, for example?
One interesting property offers a hint.

### A tantalizing EFG property

Many EGF properties parallel those of OGFs.
Here's one that doesn't.

Consider the sequence 

$$\left\lbrace a_0, a_1, a_2, a_3, ... \right\rbrace$$

Its EGF is

$$E(x) = \sum_{0 \leq n} \frac{a_n x^n}{n!}$$

What's $\frac{d}{dx} E(x)$ ?
Doesn't take much to see that it's

$$(D)E(x) = E'(x) = \sum_{0 \leq n} \frac{a_{n+1} x^n}{n!}$$

and that

$$(D^h)E(x) =  E^h(x) = \sum_{0 \leq n} \frac{a_{n+h} x^n}{n!}$$,

the generating function for the sequence 

$$\left\lbrace a_h, a_{h+1}, a_{h+2}, a_{h+3}, ... \right\rbrace$$

In other words, to get the EGF for a sequence left-shifted $h$ places, just take its $h^{th}$ derivative.

Seems like this could be super-useful for recursions.

### Using EFGs to solve the Fibonacci recursion.

I'll try an example.

The Fibonacci recursion is $f_{n+2} = f_{n+1} + f_n$ , with $f_0 = 0, f_1 = 1$ .

This makes the EGF $F(x) = \sum \frac{f_n x^n}{n!}$ satisfy the equation
$F''(x) = F'(x) + F(x)$ , which looks simple.

It's a differential equation, which could be tricky -- I think the last time I had to solve ODEs was around 1969.
In this case I'll guess that solutions have the form
$F(x) = Ce^{kx}$, which gives me
$k^2F(x) = kF(x) + F(x)$ .  Canceling out $F(x) on both sides, I should be able to get $k$ by solving the quadratic
$0 = k^2 - k -1$, which looks *very* familiar. Indeed, $k = \frac{1 \pm \sqrt 5}{2} = \phi_{\pm}$, the golden ratio, Euler's phi.

So, a pair of special solutions are $\phi_{+}$ and $\phi_{-}$, which says the general solution to the ODE is of the form

$$F(x) = C_1 e^{\phi_{+} x} + C_2 e^{\phi_{-} x}$$ . 

Now, all I need are the constants, $C_1$ and $C_2$. Betcha I can get those from the boundary conditions, $a_0$ and $a_1$ .

What's $a_0$ ?

The first term of $F(x)$ is

$$C_0 \cdot \frac{\phi_{+}^0 x^0}{0!} +  C_1 \cdot \frac{\phi_{-}^0 x^0}{0!} = C_0 + C_1 = 0$$

So $C_0 = -C_1 = C$ .

How about the second? 

$$C \cdot \frac{\phi_{+}^1 x^1}{1!} -  C \cdot \frac{\phi_{-}^1 x^1}{1!} = C \cdot (\phi_{+} - \phi_{-}) x = a_1 \cdot x = x$$

Well, $\phi_{+} - \phi_{-} = (2 \sqrt 5)/2 = \sqrt 5$, so 

$$C = \frac {1}{\sqrt 5}$$ ,

Ergo, the general solution that fits the boundary conditions is

$$a_n = \frac{1}{\sqrt 5}\left( \phi_{+}^n - \phi_{-}^n \right)$$ .

Exactly what I got using ODEs!





