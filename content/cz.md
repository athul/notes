---
title: "Customized Zettel"
tags: ["notes"]
summary: "The Customizations done on the Base Source code of Zettel with
the current changes you see here"
---

What are all the customizations done on this CodeBase compared with zettel's original one?
Here is a Bullet List of the Items[^1]

- Zettel is built with [[golang]] which made it a bit easier to hack on :smile:
- Changed CSS
  - Removed wing.css and used [New CSS]
  - Dark mode(Auto) :zap:

- Implemented **Search**
  1. Done with Fuze.js
  2. Generates a `search.json` file and uses this file to be index of the search
  3. `search.json` contains the list of all titles to tags
  4. Used the code for implementing a search on a Hugo Site

- Made the Graph more "Scrollable"
- Added Tooltips to internal links
  - Used a Summary key in the Frontmatter to generate these
- Footnotes :leg:

[^1]: Hehe This is a footnote.

[New CSS]:https://newcss.net