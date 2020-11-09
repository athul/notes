---
date: "2020-10-10T00:45:44+05:30"
title: "Git Tags"
tags: ["git"]
---

```bash
# Create Annotated Tag
$ git -a <tag_name> -m <tag_title>

# Delete Local tag
$ git tag -d <tag_name>

# Delete Remote Tag
$ git push origin --delete <tag_name>

# Replacing old tags with new Commits
$ git tag -a -f <tag_name> <commit_sha>
```

Check [[git-cherry]]
