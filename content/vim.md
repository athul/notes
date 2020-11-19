---
date: "2020-11-01T00:44:56+05:30"
title: "Some Vim Bindings"
tags: ["terminal"]
---

Some default Vim Bindings, after reading a book on how to use Vim :grin:

---

Navigation:

- `k` for up
- `j` for down
- `h` for left
- `l` for right

---

- `x` → Deletes the Character under the Cursor
- `.` → Repeats `x`
- <kbd>Ctrl+r</kbd> to redo
- `u` → undos `x`
- `~` will change the case. Use `--VISUAL--` to select the character(s)
- `dd` → Deletes current line
- `>G` → ↑s indendations till EOF
- `<G` → ↓s the indendation of the file
- `daw` will delete an entire word
- `d<n>w` will delete n words in the line
  - `d2w` will delete 2 words
  - `d7w` will delete 7 words

---

## Searching

Vim search is friendly :grin:

To search we can use `/{regex pattern}` . Use <kbd>n</kbd> to move to the next match and <kbd>N</kbd> to move back

## Search and Replace

We can use the `/{search}` method to find the word and use the motion `cgn` to change the word and enter the new word. Then go back to `NORMAL` mode and pressing <kbd>n</kbd> to go to next character and use `.` to repeat the motion. Downside is that this is manual and tedious.

To search and replace on a single line we can use the `:s` command

```vim
:s/{search_pattern}/{replace_pattern}/{options}
```

- options
  - c (for confirmation),
  - g (replace all occurrence in one line)
  - i (for ignoring the case)

To replace all the occureneces in the file we can use `:%s` instead of `:s`
