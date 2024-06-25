---
title: "Moving Forward With Themes"
date: 2024-06-25
layout: post
---
Finally! A theme that works.

# What I figured out.

GitHub lets me use LaTeX to write equations inside of markdown, but Jekyll doesn't, at least by default.
I was able to stick in equations and have them display fine in my browser, while I was looking at the GitHub repo,
but when I turned them into static pages, all I saw was the LaTeX source.

Ugh.

I had to take the time to understand more about Jekyll, fork `jekyll/minima`, modify it to handle LaTeX through MathJax,
then have this blog specify `remote_theme: jsh/minima` (my forked and modified version), instead of `theme: minima`
in `_config.yml`.

I now know enough to make a much nicer theme, but I want to move forward. I can always come back to tweaking the theme.

I'll take a few moments to improve `_config.yml` by tweaking some settings I learned about along the way, but then go back to blogging
about generating functions.