---
title: "Playing With Sage"
date: 2024-06-16
layout: post
---

Many tutorials I peeked at, including the pair I link to in the [Tutorial Material post](2024-06-16-Tutorial-Material.md), encourage using computer-algebra systems.

I saw my first, four-function calculator -- add, subtract, multiply, and divide -- in graduate school, so using computer tools to solve math problems doesn't come naturally to me. Yet.

Doing math by hand helps me learn, but it can be tedious and error-prone. My goal is to learn how to use generating functions, not to solve differential equations or quadratics. Getting comfy with some sort of computer-algebra system seems like a legitimate, just-in-time (JIT) learning step.

Ah, but which one?

A little googling points me at Sage Math, which is open-source, mature, and probably best-of-breed. [The Sage Tutorial](https://doc.sagemath.org/html/en/tutorial/index.html) says, "The overall goal of Sage is to create a viable, free, open-source alternative to Maple, Mathematica, Magma, and MATLAB."

There is, I learned, a distinction between computer-algebra systems and a numeric computing package. Tools like MATLAB provide a numeric computing environment, including a proprietary programming language. They're optimized for doing calculations and displaying results -- the same sorts of jobs you might do in Python with NumPy and SciPy. I think. I'm unsure because I don't know much about any of these, either.

Sage, on the other hand, is written in Python, a familiar language, and it focuses on things like combinatorics and symbolic algebra. You can use it to take a derivative of a function,solve a differential equation, do a Taylor expansion, simplify a polynomial, ....

_That's_ what I want.

I don't really want to stop and work through a loooong tutorial -- again, my interest is in generating functions, not tools -- but I can start off picking up a lot of what I want just by figuring out how to use Sage to verify solutions I've calculated by hand. Zabrocki's little book embeds Sage examples, so I can start by typing those in.

I don't even have to install Sage on my own computer. [SageMathCell](https://sagecell.sagemath.org/) evaluates any Sage commands that I type in, and feels very Jupyter-notebook-y. Like Python, I've used Jupyter notebooks, so I'm not facing yet another tool I have to pause and learn before I can move forward. My JIT-learning stack isn't growing without bounds.

