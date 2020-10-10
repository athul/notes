---
date: "2020-10-10T11:45:43+05:30"
title: "Git Cherry Pick"
tags: ["code","git"]
---

The CherryPick Way:

```bash
$ git checkout master

$ git pull master

$ git checkout <branch>

$ git log
# Get the commit hashes of the commits you want to pick

$ git reset --hard master
# To reset your current branch commits on par with master

$ git cherry-pick <commit_sha>
```
