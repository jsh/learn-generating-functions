---
title: Stalled out
slug: stalled-out
layout: post
---
I obviously stalled out. It's 11 days since my last post.
I tried doing a couple of things that didn't work as expected and I got discouraged.
I need to get back to posting daily.
This is a blog, not a research paper.

## What I tried.

### Finding the Stirling recursion
Following the idea of the recursion from *generatingfunctionology*,for Stirling numbers of the second kind,
I tried to write on for Stirling numbers of the first kind. I failed.

This recursion is a two-factor recursion, which is quite different from the simple one-factor recursions.
This meant backing up to understand how to attack two-factor recursions.

In a one factor recursion, the $n^th$ term is a function of earlier terms, as with the Fibonacci series:
$$f_{n+1} = f_{n} + f_{n-1}$$

An example two-factor recursion are the binomial coefficients:
b(n, k) = b(n-1, k-1) + b(n-1, k)

Here, if I take the usual approach, I'm faced with a dilemma at the very first step.
Is the generating function this?

$$B(k) = \sum_{k=0}^{\infty} b(n,k) x^k$$

or this?

$$B(k) = \sum_{n=0}^{\infty} b(n,k) x^n$$

or this?

$$B(k) = \sum_{k=0}^{\infty} \sum_{n=0}^{\infty} b(n,k) x^n y^k$$

or what?

And if I know which one to pick, what's the next step? What do I dooooo...?

So, instead of blogging about that, I distracted myself into 

### Making a README that tells me the latest activity on my blog

After all, Bob Belderbos does that [for his blogs](https://github.com/bbelderbos/bbelderbos). 
I should be able to just steal his code.

Well, it wasn't quite trivial, but fate intervened. 
Evelyn Mitchell submitted a pull request to this repo that would do something similar.
Except, um, the code was in Ruby. 
And when I just accepted the pull request, it stepped on changes I'd already made, breaking the blog.

So, she taught me that GitHub gives me a click-the-button way to revert commits.
I know how to do that on the command line in a repo on my computer with `git revert`, but this is easier and slicker.

And so did I blog about that? Nooooo ...

And then, reading her code, I thought I'd figured out how to bring in Ruby code to do the same thing. Except I was wrong
and got Ruby errors that I didn't know how to attack except by fumbling.

So I called Evelyn, and said, "How did you solve this?"

She said, "Fool. Your blog already announces the latest posts because it's in reverse chronological order,
just point at your damn blog." 
Though she put it far more nicely.

And did I blog about that? Uh-uh.

### No more foot dragging. Just blog.
I've blogged before, back in the Internet Precambrian. I once did this correctly, regularly. 
Time to return to my roots.

I must do a new post tomorrow on *something*.
