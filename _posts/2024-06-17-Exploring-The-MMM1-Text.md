---
title: "Exploring The MMM1 Text"
date: 2024-06-17
layout: post
---

I'll start by browsing Mike Zabrocki's MMM1 (Mini-Mathematical Monographs), on Ordinary Generating Functions (OGFs). I'll call it a book, even though it's on-line and only sixty-two pages -- five chapters.

He's exploring himself, and the book has some associated videos.
I can only try to judge whether it works for me.

## Chapter 1: Introduction

He sketches the required background, which I think I have. 

* I'm comfy with basic, high-school algebra.
* I can manipulate elementary functions: sin, cos, exponentials, logs, etc.
* I know summation notation, and I'm not frightened by infinite series
* I can differentiate and integrate, as long as it's not too sophisticated.

Good enough.

## Chapter 2: Generating Functions Neither Generate, Nor Are They Functions.

I have to admit I love the chapter title.

Generating functions are formal polynomials. There's no notion so far of taking them seriously as functions, but I've read that such polynomials can just be thought of as a _ring_, which is basically a field without guaranteed inverses or commutativity.

In other words, you can add, subtract, and multiply them. Polynomial multiplication actually is commutative, so I'd guess they only aren't a field because some don't have inverses.

The coefficients of the polynomial terms are the elements of the series.

For now, I see OGFs as a notational convenience.

An example would help, here, but before I go farther, I need to find out is whether I can write equations
in blogposts. If not, it's going to be tough to blog about generating functions.

### Can I Write Equations Using Markdown?

I'll try a sample example. Let's start with the constant sequence $1,1,1,1,...$ .
The generating function for this is $1+x+x^2+x^3+...$, each coefficient of $x^n$ being $1$ .
I could write that as $$f(x) = \sum_{n=0}^{\infty} x^n$$,
or, more compactly, as $f(x) = 1/(1-x)$ .

Okey doke, I can use LaTex for equations. Surrounding an equation with '$' displays it correctly; surrounding it with '$$' puts the equation on its own line in GitHub. Yay.

I'll need more fluency in LaTex, but that's within reach.

### Back to OGFs

Thus, even though $f(x)=1/(1-x)$ blows up when $x=0$, and $$f(x)=\sum_{n=0}^{\infty} x^n$$ diverges if $x \geq 1$, I can use the compact form, unambiguously, to stand for the series $1,1,1,...$ and even manipulate it in useful ways.

Useful how? I'll have to read some more, then post again.

### Oh, argh.

After deploying this post, I showed it to Jeff Wright in a screen share on a Zoom call. 

And the equations didn't display correctly. Feh.

GitHub itself interprets them correctly, but perhaps Jekyll gets confused.
Now I have to back up and figure out how to get equations that display correctly in GitHub Markdown to display correctly in a compiled, deployed page.

Back to the drawing board.

### 25 June 2024. Aaaaah. That feels *much* better.

Okey doke. Now I have a theme that displays equations. I can move forward.





