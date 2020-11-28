---
title: "Some Vim Commands"
tags: ["terminal","vim"]
summary: "My Vim-istham on Vim"
---

Some default Vim Commands, after reading a book on how to use Vim :grin:

---

Navigation:

- `k` for up
- `j` for down
- `h` for left
- `l` for right

---

- `x` → Deletes the Character under the Cursor
- `.` → Repeats the Previous command
- `o` :point_right:  will create a line below the cursor and go to `INSERT` mode.
- `O` will create a line above the cursor and go to `INSERT` mode
- <kbd>Ctrl+r</kbd> to redo
- `u` → undos `x`
- `~` will change the case of the letter under the Cursor
- `dd` → Deletes current line
- `>G` → ↑s indendations till EOF
- `<G` → ↓s the indendation of the file
- `daw` will delete an entire word
- `d<n>w` will delete n words in the line
  - `d2w` will delete 2 words
  - `d7w` will delete 7 words
- `y` to copy the items under the cursor.
- `d` to cut the items under the cursor
- `p` to paste items after the cursor and `P` to paste items before the cursor 

---

## Searching

Vim search is friendly :grin:

To search we can use `/{regex pattern}` . Use <kbd>n</kbd> to move to the next match and <kbd>N</kbd> to move back

## Search and Replace

We can use the `/{search}` method to find the word and use the motion `cgn` to change the word and enter the new word. Then go back to `NORMAL` mode and pressing <kbd>n</kbd> to go to next character and use `.` to repeat the motion. Downside is that this is manual and tedious.

To search and replace on a single line we can use the `:s` command

```viml
:s/{search_pattern}/{replace_pattern}/{options}
```

- options
  - c (for confirmation),
  - g (replace all occurrence in one line)
  - i (for ignoring the case)

To replace all the occureneces in the file we can use `:%s` instead of `:s`

---

## Using Terminal in NeoVim

> Learn more about [[vim_terminal]]

Thanks to my friend [Andrew Bastin](https://github.com/AndrewBastin) for Suggesting me [Floaterm](https://github.com/voldikss/vim-floaterm), I use Floaterm Now.

![Imgur](https://i.imgur.com/EQZeVNy.png)

A Floating terminal inside NeoVim. How cool is That??? As mentioned in "[[vim_terminal]]" the `NORMAL` mode Keybinding is a tad hard, so as a _noob_ vim user, I added the binding to `ESC` key. It's easier for me that way. I also remapped a few things to get terminal a bit easier from the `NORMAL` mode.
```viml
nmap fn :FloatermNew zsh<CR>
nmap ft :FloatermToggle<CR>
nmap fp :FloatermNext<CR>
nmap fk :FloatermKill<CR>
nmap fo :FloatermPrev<CR>
```

For remapping the command from the terminal I used this :point_down:

```viml
tnoremap <ESC> <C-\><C-n>
```
## Using free Real Estate

Check out [[vim_tabs]]
