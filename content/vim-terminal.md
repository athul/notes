---
title: "Terminal in NeoVim"
summary: "The Terminal fetaure in Neovim"
tags: ["vim","code"]
---

I use Neovim for my editing and a feature I miss in VsCode was the terminal. But I found that there is a terminal feature in neovim. It's quite usable and slowing reducing my dependency on VsCode for editing.

## Creating a New Terminal in Neovim

There is a command for creating a new Terminal in Neovim.

In `NORMAL` mode just type in `:terminal` and you'll get a terminal with your default shell(ZSH in my case). 

You can type `a` or `i` for going to `INSERT` mode and type in your commands. 

## Exiting from the Terminal Session

This is a bit tricky part. Maybe remap to something else in the future.  

For switching back to `NORMAL` mode from the terminal session you need to type in 

<kbd>CTRL + \\</kbd> <kbd>CTRL + n</kbd> 

Once in `NORMAL` mode `:q` will quit the terminal session.
