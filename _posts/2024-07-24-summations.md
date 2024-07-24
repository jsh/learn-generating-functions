---
title: playing with summations
slug: summations
layout: post
---

A step back to play with the tools: I fix the display of tables and read a little about summations in Knuth.


### Fixing yesterday's post.
Yesterday's markdown formatted the way I wanted it to on GitHub,
but once it was up, the binomial-coefficient tables in the post didn't turn into tables on the blog.

Sigh.

Everything looked fine, of course, so I did experiments to find out where the offending code was hiding.
I began by copying part of a table that formatted correctly, from an earlier post (one of the *ogf* posts from earlier in the month).
It formatted correctly in yesterday's post, too, so I methodicaly modified it to be a table of binomials, 
copying from a mis-formating table into the correctly formatting one, until I found the culprit.
Turns out, it was the elipsis I'd put at the end of the table to say, "and this keeps going for higher values of $n$."

I could fix it by making the elipsis into an actual table row, *containing* an elipsis.

JIT learning means I'll still run into problems with the tools for a while.

### Changing my schedule.
It's going to be too hot in the near future. Google projects highs in the 90's for at least the next two weeks, and a high of 100 tomorrow.
We never saw the thermometer hit 100 at all last year, but there's some kind of odd bubble this year that's just sitting above Colorado.

I want to get some aerobic exercise every day. I've found I can 
walk to the nearest McDonald's, get a large coffee, work for a while, and then walk back, and get 
30 heart points and 7500 steps, satisfying both the American Heart Association and myself.

But not at these temperatures.

This morning, I changed my morning routine. I'll often get up, do chores, shower, and get breakfast, then go for a walk.
Today, I rolled out of bed, put on yesterday's clothes, and walked out the door before sunup.
McDonald's doesn't open up its indoors until 7am, so I went a little farther to a diner that opened at 5:30.

Depending on what deals McDonald's has running, my tab down there is $1-$3. Breakfast at Aunt Alice's Kitchen costs me $15,
but I was able to walk home in the high 60's, instead of the high 80's. Trade-offs.

### Summations
I stuck Graham, Knuth, & Patashnik's *Concrete Mathematics* (CM) in my backpack for the walk, and spent breakfast reading in his early chapter on summation,
in which he talks about various common manipulations. Generating functions are all about summation, so I needed the review.

I came away with some interesting things.

#### Delimited versus generalized sigma notations

*CM* encourages replacing *delimited* sigmas, like $\sum_k=0^n$, with *generalized sigmas*, like $\sum_{0 \leq k \leq n}$,
arguing that they're clearer, more flexible, and easier to manipulate.

Okay. They're experts. I'll take their advice.

#### Distributed law.

*CM* sets out three rules for manipulating sums that it calls the distributive, associative, and commutative laws.

1) distributive law: $\sum_{k \in K} c a_k = c \sum_{k \in K} a_k$
1) associative law: $\sum_{k \in K} (a_k + b_k) = \sum_{k \in K} a_k + \sum_{k \in K} b_k$
1) commutative law: $\sum_{k \in K} a_k = \sum_{p(k) \in K} a_k$

The first two are pretty obvious, but the third one is worth a pause.
By $p(k)$, the authors mean, "Run through all the values in $K$, but in a different order." 
In other words, $p(k)$ permutes the elements of $K$.

For example, if $K = {1, 2, 3}$ then $\sum_{k \in K} a_k = a_1 + a_2 + a_3$,
but $p(k)$ might change the order to $a_3 + a_2 + a_1$. The distributive law says order is immaterial:
$a_1 + a_2 + a_3 = a_3 + a_2 + a_1$

$p(k)$ just needs to ensure that every element of $K$ is represented exactly once.
This, then, is what lets me say things like

$$\sum_{k-1} a_k = \sum_k a_k$$, which I used in yesterday's post. The index is just running over all the integers.

### Harmonic numbers and Stirling's approximation.

One of *CM*'s examples ends up showing that $$\sum_{0 \leq k \lt n} H_k = n H_n - n$$.

$H_n$ is the n^th harmonic number, $1 + 1/2 + 1/3 + ... + 1/n$.
If you''ve read any of my work on trendlists, you'll know that harmonic numbers pop up, and that
$H_n \approx ln(n) + \gamma$, where $gamma$ is the *Euler-Mascharoni constant*: a fraction somewhere near a half.

Okay, let's do a little simple math.

I can see that the LHS is

$$\sum_{0 \leq k \lt n} H_k \approx \sum_{0 \leq k \lt n} ln (k) + n \cdot \gamma = ln (n!) + n \cdot \gamma$$

while the RHS is 

$$n H_n - n \approx n \cdot ( ln(n) + \gamma) - n \cdot ln (e) = ln ((\frac{n}{e})^n) + n \cdot \gamma$$

The $\gamma$ terms cancel, leaving me with

$$n! \approx (\frac{n}{e})^n$$

Stirling's approximation is 

$$n! \approx \sqrt {2 \pi n} \cdot (\frac{n}{e})^n$$

which is larger but grows at the same rate. Awesome.

I'm guessing the difference is because the Euler approximation varies with $n$.







